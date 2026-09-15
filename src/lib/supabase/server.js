import { createClient } from "@supabase/supabase-js";

const supabaseUrl = process.env.SUPABASE_URL;
const supabaseAnonKey = process.env.SUPABASE_ANON_KEY;

/**
 * Server-side Supabase client pre-configured to query the 'openroles' schema.
 */
export const supabase = createClient(supabaseUrl, supabaseAnonKey, {
  db: {
    schema: "openroles",
  },
});
