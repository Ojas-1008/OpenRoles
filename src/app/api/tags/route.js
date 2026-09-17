import { supabase } from "@/lib/supabase/server";
import { NextResponse } from "next/server";

// Cache the response for 1 hour (3600 seconds)
export const revalidate = 3600;

/**
 * GET /api/tags
 * Retrieves a sorted list of unique job tags across all postings.
 */
export async function GET() {
  const { data, error } = await supabase
    .from("jobs")
    .select("tags");

  if (error || !data) {
    return NextResponse.json(
      { error: error?.message || "Failed to fetch tags" },
      { status: 500 }
    );
  }

  // Flatten nested tag arrays, deduplicate with Set, and sort alphabetically
  const flattenedTags = data.flatMap((row) => row.tags || []);
  const uniqueSortedTags = [...new Set(flattenedTags)].sort();

  return NextResponse.json(uniqueSortedTags, { status: 200 });
}
