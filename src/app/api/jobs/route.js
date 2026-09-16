import { supabase } from "@/lib/supabase/server";
import { NextResponse } from "next/server";
import z from "zod";

/**
 * Validation schema for GET /api/jobs query parameters.
 */
const querySchema = z.object({
  limit: z.coerce.number().int().min(1).max(50).default(10),
  q: z
    .string()
    .trim()
    .optional()
    .transform((val) => val?.replace(/[%_]/g, "")),
  tag: z.string().trim().optional(),
  remote: z
    .enum(["true", "false"])
    .optional()
    .transform((val) => (val === undefined ? undefined : val === "true")),
});

/**
 * GET /api/jobs
 * Retrieves job postings with optional search, tag, remote filtering, and pagination limit.
 */
export async function GET(request) {
  const searchParams = request.nextUrl.searchParams;

  // 1. Extract raw query parameters from the URL
  const rawLimit = searchParams.get("limit");
  const rawQ = searchParams.get("q");
  const rawTag = searchParams.get("tag");
  const rawRemote = searchParams.get("remote");

  // 2. Validate and sanitize parameters with Zod
  const parsedQuery = querySchema.safeParse({
    limit: rawLimit ?? undefined,
    q: rawQ ?? undefined,
    tag: rawTag ?? undefined,
    remote: rawRemote ?? undefined,
  });

  if (!parsedQuery.success) {
    return NextResponse.json(
      {
        error: "Invalid query parameters",
        details: parsedQuery.error.flatten(),
      },
      { status: 400 }
    );
  }

  const { limit, q, tag, remote } = parsedQuery.data;

  // 3. Build the Supabase query with optional filters
  let query = supabase.from("jobs").select("*");

  if (q) {
    query = query.or(`title.ilike.%${q}%,company.ilike.%${q}%`);
  }

  if (tag) {
    query = query.contains("tags", [tag]);
  }

  if (remote !== undefined) {
    query = query.eq("is_remote", remote);
  }

  // 4. Execute query with applied limit
  const { data: jobs, error } = await query.limit(limit);

  if (error) {
    return NextResponse.json(
      { error: error.message },
      { status: 500 }
    );
  }

  return NextResponse.json(jobs, { status: 200 });
}