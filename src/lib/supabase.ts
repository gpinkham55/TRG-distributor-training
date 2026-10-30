import { createClient, type SupabaseClient } from '@supabase/supabase-js';
import cfg from '../../site.config.json';

// The anon key is public by design; row-level security protects the data.
export const supabase: SupabaseClient | null =
  cfg.supabaseUrl && cfg.supabaseAnonKey
    ? createClient(cfg.supabaseUrl, cfg.supabaseAnonKey)
    : null;
