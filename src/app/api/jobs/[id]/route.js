import { supabase } from "@/lib/supabase/server";
import { NextResponse } from "next/server";

/**
 * GET /api/jobs/[id]
 * Retrieves the details of a single job posting by ID.
 */
export async function GET(request, { params }) {
  const { id } = await params;

  // Query Supabase for the specific job record
  const { data: job, error } = await supabase
    .from("jobs")
    .select("*")
    .eq("id", id)
    .maybeSingle();

  if (error) {
    return NextResponse.json(
      { error: error.message || "Database query failed" },
      { status: 500 }
    );
  }

  if (!job) {
    return NextResponse.json(
      { error: "Job not found" },
      { status: 404 }
    );
  }

  return NextResponse.json(job, { status: 200 });
}
