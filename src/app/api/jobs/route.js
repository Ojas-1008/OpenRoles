import { supabase } from "@/lib/supabase/server";
import { NextResponse } from "next/server";

/**
 * GET /api/jobs
 * Minimal endpoint to retrieve all job postings from the 'openroles' schema.
 */
export async function GET() {
  const { data: jobs, error } = await supabase
    .from("jobs")
    .select("*");

  if (error) {
    return NextResponse.json(
      { error: error.message },
      { status: 500 }
    );
  }

  return NextResponse.json(jobs, { status: 200 });
}
