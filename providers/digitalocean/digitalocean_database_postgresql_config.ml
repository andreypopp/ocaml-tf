(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pgbouncer = {
  autodb_idle_timeout : float prop option; [@option]
  autodb_max_db_connections : float prop option; [@option]
  autodb_pool_mode : string prop option; [@option]
  autodb_pool_size : float prop option; [@option]
  ignore_startup_parameters : string prop list option; [@option]
  min_pool_size : float prop option; [@option]
  server_idle_timeout : float prop option; [@option]
  server_lifetime : float prop option; [@option]
  server_reset_query_always : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pgbouncer) -> ()

let yojson_of_pgbouncer =
  (function
   | {
       autodb_idle_timeout = v_autodb_idle_timeout;
       autodb_max_db_connections = v_autodb_max_db_connections;
       autodb_pool_mode = v_autodb_pool_mode;
       autodb_pool_size = v_autodb_pool_size;
       ignore_startup_parameters = v_ignore_startup_parameters;
       min_pool_size = v_min_pool_size;
       server_idle_timeout = v_server_idle_timeout;
       server_lifetime = v_server_lifetime;
       server_reset_query_always = v_server_reset_query_always;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_server_reset_query_always with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "server_reset_query_always", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server_lifetime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_idle_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "server_idle_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_pool_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_pool_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_startup_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ignore_startup_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autodb_pool_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autodb_pool_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autodb_pool_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "autodb_pool_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autodb_max_db_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autodb_max_db_connections", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autodb_idle_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autodb_idle_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : pgbouncer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pgbouncer

[@@@deriving.end]

type timescaledb = { timescaledb : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timescaledb) -> ()

let yojson_of_timescaledb =
  (function
   | { timescaledb = v_timescaledb } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timescaledb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timescaledb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timescaledb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timescaledb

[@@@deriving.end]

type digitalocean_database_postgresql_config = {
  autovacuum_analyze_scale_factor : float prop option; [@option]
  autovacuum_analyze_threshold : float prop option; [@option]
  autovacuum_freeze_max_age : float prop option; [@option]
  autovacuum_max_workers : float prop option; [@option]
  autovacuum_naptime : float prop option; [@option]
  autovacuum_vacuum_cost_delay : float prop option; [@option]
  autovacuum_vacuum_cost_limit : float prop option; [@option]
  autovacuum_vacuum_scale_factor : float prop option; [@option]
  autovacuum_vacuum_threshold : float prop option; [@option]
  backup_hour : float prop option; [@option]
  backup_minute : float prop option; [@option]
  bgwriter_delay : float prop option; [@option]
  bgwriter_flush_after : float prop option; [@option]
  bgwriter_lru_maxpages : float prop option; [@option]
  bgwriter_lru_multiplier : float prop option; [@option]
  cluster_id : string prop;
  deadlock_timeout : float prop option; [@option]
  default_toast_compression : string prop option; [@option]
  id : string prop option; [@option]
  idle_in_transaction_session_timeout : float prop option; [@option]
  jit : bool prop option; [@option]
  log_autovacuum_min_duration : float prop option; [@option]
  log_error_verbosity : string prop option; [@option]
  log_line_prefix : string prop option; [@option]
  log_min_duration_statement : float prop option; [@option]
  max_files_per_process : float prop option; [@option]
  max_locks_per_transaction : float prop option; [@option]
  max_logical_replication_workers : float prop option; [@option]
  max_parallel_workers : float prop option; [@option]
  max_parallel_workers_per_gather : float prop option; [@option]
  max_pred_locks_per_transaction : float prop option; [@option]
  max_prepared_transactions : float prop option; [@option]
  max_replication_slots : float prop option; [@option]
  max_stack_depth : float prop option; [@option]
  max_standby_archive_delay : float prop option; [@option]
  max_standby_streaming_delay : float prop option; [@option]
  max_wal_senders : float prop option; [@option]
  max_worker_processes : float prop option; [@option]
  pg_partman_bgw_interval : float prop option; [@option]
  pg_partman_bgw_role : string prop option; [@option]
  pg_stat_statements_track : string prop option; [@option]
  shared_buffers_percentage : float prop option; [@option]
  temp_file_limit : float prop option; [@option]
  timezone : string prop option; [@option]
  track_activity_query_size : float prop option; [@option]
  track_commit_timestamp : string prop option; [@option]
  track_functions : string prop option; [@option]
  track_io_timing : string prop option; [@option]
  wal_sender_timeout : float prop option; [@option]
  wal_writer_delay : float prop option; [@option]
  work_mem : float prop option; [@option]
  pgbouncer : pgbouncer list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timescaledb : timescaledb list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_postgresql_config) -> ()

let yojson_of_digitalocean_database_postgresql_config =
  (function
   | {
       autovacuum_analyze_scale_factor =
         v_autovacuum_analyze_scale_factor;
       autovacuum_analyze_threshold = v_autovacuum_analyze_threshold;
       autovacuum_freeze_max_age = v_autovacuum_freeze_max_age;
       autovacuum_max_workers = v_autovacuum_max_workers;
       autovacuum_naptime = v_autovacuum_naptime;
       autovacuum_vacuum_cost_delay = v_autovacuum_vacuum_cost_delay;
       autovacuum_vacuum_cost_limit = v_autovacuum_vacuum_cost_limit;
       autovacuum_vacuum_scale_factor =
         v_autovacuum_vacuum_scale_factor;
       autovacuum_vacuum_threshold = v_autovacuum_vacuum_threshold;
       backup_hour = v_backup_hour;
       backup_minute = v_backup_minute;
       bgwriter_delay = v_bgwriter_delay;
       bgwriter_flush_after = v_bgwriter_flush_after;
       bgwriter_lru_maxpages = v_bgwriter_lru_maxpages;
       bgwriter_lru_multiplier = v_bgwriter_lru_multiplier;
       cluster_id = v_cluster_id;
       deadlock_timeout = v_deadlock_timeout;
       default_toast_compression = v_default_toast_compression;
       id = v_id;
       idle_in_transaction_session_timeout =
         v_idle_in_transaction_session_timeout;
       jit = v_jit;
       log_autovacuum_min_duration = v_log_autovacuum_min_duration;
       log_error_verbosity = v_log_error_verbosity;
       log_line_prefix = v_log_line_prefix;
       log_min_duration_statement = v_log_min_duration_statement;
       max_files_per_process = v_max_files_per_process;
       max_locks_per_transaction = v_max_locks_per_transaction;
       max_logical_replication_workers =
         v_max_logical_replication_workers;
       max_parallel_workers = v_max_parallel_workers;
       max_parallel_workers_per_gather =
         v_max_parallel_workers_per_gather;
       max_pred_locks_per_transaction =
         v_max_pred_locks_per_transaction;
       max_prepared_transactions = v_max_prepared_transactions;
       max_replication_slots = v_max_replication_slots;
       max_stack_depth = v_max_stack_depth;
       max_standby_archive_delay = v_max_standby_archive_delay;
       max_standby_streaming_delay = v_max_standby_streaming_delay;
       max_wal_senders = v_max_wal_senders;
       max_worker_processes = v_max_worker_processes;
       pg_partman_bgw_interval = v_pg_partman_bgw_interval;
       pg_partman_bgw_role = v_pg_partman_bgw_role;
       pg_stat_statements_track = v_pg_stat_statements_track;
       shared_buffers_percentage = v_shared_buffers_percentage;
       temp_file_limit = v_temp_file_limit;
       timezone = v_timezone;
       track_activity_query_size = v_track_activity_query_size;
       track_commit_timestamp = v_track_commit_timestamp;
       track_functions = v_track_functions;
       track_io_timing = v_track_io_timing;
       wal_sender_timeout = v_wal_sender_timeout;
       wal_writer_delay = v_wal_writer_delay;
       work_mem = v_work_mem;
       pgbouncer = v_pgbouncer;
       timescaledb = v_timescaledb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timescaledb then bnds
         else
           let arg =
             (yojson_of_list yojson_of_timescaledb) v_timescaledb
           in
           let bnd = "timescaledb", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pgbouncer then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pgbouncer) v_pgbouncer
           in
           let bnd = "pgbouncer", arg in
           bnd :: bnds
       in
       let bnds =
         match v_work_mem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "work_mem", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wal_writer_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "wal_writer_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wal_sender_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "wal_sender_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_track_io_timing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "track_io_timing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_track_functions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "track_functions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_track_commit_timestamp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "track_commit_timestamp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_track_activity_query_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "track_activity_query_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_temp_file_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "temp_file_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_buffers_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shared_buffers_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pg_stat_statements_track with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pg_stat_statements_track", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pg_partman_bgw_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pg_partman_bgw_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pg_partman_bgw_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pg_partman_bgw_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_worker_processes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_worker_processes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_wal_senders with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_wal_senders", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_standby_streaming_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_standby_streaming_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_standby_archive_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_standby_archive_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_stack_depth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_stack_depth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_replication_slots with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_replication_slots", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_prepared_transactions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_prepared_transactions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_pred_locks_per_transaction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_pred_locks_per_transaction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_parallel_workers_per_gather with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_parallel_workers_per_gather", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_parallel_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_parallel_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_logical_replication_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_logical_replication_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_locks_per_transaction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_locks_per_transaction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_files_per_process with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_files_per_process", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_min_duration_statement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "log_min_duration_statement", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_line_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_line_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_error_verbosity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_error_verbosity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_autovacuum_min_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "log_autovacuum_min_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_jit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "jit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_in_transaction_session_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_in_transaction_session_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_toast_compression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_toast_compression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deadlock_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "deadlock_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_bgwriter_lru_multiplier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bgwriter_lru_multiplier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bgwriter_lru_maxpages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bgwriter_lru_maxpages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bgwriter_flush_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bgwriter_flush_after", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bgwriter_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bgwriter_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_minute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_hour with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_hour", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_vacuum_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_vacuum_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_vacuum_scale_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_vacuum_scale_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_vacuum_cost_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_vacuum_cost_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_vacuum_cost_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_vacuum_cost_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_naptime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_naptime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_max_workers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_max_workers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_freeze_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_freeze_max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_analyze_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_analyze_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autovacuum_analyze_scale_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "autovacuum_analyze_scale_factor", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_database_postgresql_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_postgresql_config

[@@@deriving.end]

let pgbouncer ?autodb_idle_timeout ?autodb_max_db_connections
    ?autodb_pool_mode ?autodb_pool_size ?ignore_startup_parameters
    ?min_pool_size ?server_idle_timeout ?server_lifetime
    ?server_reset_query_always () : pgbouncer =
  {
    autodb_idle_timeout;
    autodb_max_db_connections;
    autodb_pool_mode;
    autodb_pool_size;
    ignore_startup_parameters;
    min_pool_size;
    server_idle_timeout;
    server_lifetime;
    server_reset_query_always;
  }

let timescaledb ?timescaledb () : timescaledb = { timescaledb }

let digitalocean_database_postgresql_config
    ?autovacuum_analyze_scale_factor ?autovacuum_analyze_threshold
    ?autovacuum_freeze_max_age ?autovacuum_max_workers
    ?autovacuum_naptime ?autovacuum_vacuum_cost_delay
    ?autovacuum_vacuum_cost_limit ?autovacuum_vacuum_scale_factor
    ?autovacuum_vacuum_threshold ?backup_hour ?backup_minute
    ?bgwriter_delay ?bgwriter_flush_after ?bgwriter_lru_maxpages
    ?bgwriter_lru_multiplier ?deadlock_timeout
    ?default_toast_compression ?id
    ?idle_in_transaction_session_timeout ?jit
    ?log_autovacuum_min_duration ?log_error_verbosity
    ?log_line_prefix ?log_min_duration_statement
    ?max_files_per_process ?max_locks_per_transaction
    ?max_logical_replication_workers ?max_parallel_workers
    ?max_parallel_workers_per_gather ?max_pred_locks_per_transaction
    ?max_prepared_transactions ?max_replication_slots
    ?max_stack_depth ?max_standby_archive_delay
    ?max_standby_streaming_delay ?max_wal_senders
    ?max_worker_processes ?pg_partman_bgw_interval
    ?pg_partman_bgw_role ?pg_stat_statements_track
    ?shared_buffers_percentage ?temp_file_limit ?timezone
    ?track_activity_query_size ?track_commit_timestamp
    ?track_functions ?track_io_timing ?wal_sender_timeout
    ?wal_writer_delay ?work_mem ?(pgbouncer = []) ?(timescaledb = [])
    ~cluster_id () : digitalocean_database_postgresql_config =
  {
    autovacuum_analyze_scale_factor;
    autovacuum_analyze_threshold;
    autovacuum_freeze_max_age;
    autovacuum_max_workers;
    autovacuum_naptime;
    autovacuum_vacuum_cost_delay;
    autovacuum_vacuum_cost_limit;
    autovacuum_vacuum_scale_factor;
    autovacuum_vacuum_threshold;
    backup_hour;
    backup_minute;
    bgwriter_delay;
    bgwriter_flush_after;
    bgwriter_lru_maxpages;
    bgwriter_lru_multiplier;
    cluster_id;
    deadlock_timeout;
    default_toast_compression;
    id;
    idle_in_transaction_session_timeout;
    jit;
    log_autovacuum_min_duration;
    log_error_verbosity;
    log_line_prefix;
    log_min_duration_statement;
    max_files_per_process;
    max_locks_per_transaction;
    max_logical_replication_workers;
    max_parallel_workers;
    max_parallel_workers_per_gather;
    max_pred_locks_per_transaction;
    max_prepared_transactions;
    max_replication_slots;
    max_stack_depth;
    max_standby_archive_delay;
    max_standby_streaming_delay;
    max_wal_senders;
    max_worker_processes;
    pg_partman_bgw_interval;
    pg_partman_bgw_role;
    pg_stat_statements_track;
    shared_buffers_percentage;
    temp_file_limit;
    timezone;
    track_activity_query_size;
    track_commit_timestamp;
    track_functions;
    track_io_timing;
    wal_sender_timeout;
    wal_writer_delay;
    work_mem;
    pgbouncer;
    timescaledb;
  }

type t = {
  tf_name : string;
  autovacuum_analyze_scale_factor : float prop;
  autovacuum_analyze_threshold : float prop;
  autovacuum_freeze_max_age : float prop;
  autovacuum_max_workers : float prop;
  autovacuum_naptime : float prop;
  autovacuum_vacuum_cost_delay : float prop;
  autovacuum_vacuum_cost_limit : float prop;
  autovacuum_vacuum_scale_factor : float prop;
  autovacuum_vacuum_threshold : float prop;
  backup_hour : float prop;
  backup_minute : float prop;
  bgwriter_delay : float prop;
  bgwriter_flush_after : float prop;
  bgwriter_lru_maxpages : float prop;
  bgwriter_lru_multiplier : float prop;
  cluster_id : string prop;
  deadlock_timeout : float prop;
  default_toast_compression : string prop;
  id : string prop;
  idle_in_transaction_session_timeout : float prop;
  jit : bool prop;
  log_autovacuum_min_duration : float prop;
  log_error_verbosity : string prop;
  log_line_prefix : string prop;
  log_min_duration_statement : float prop;
  max_files_per_process : float prop;
  max_locks_per_transaction : float prop;
  max_logical_replication_workers : float prop;
  max_parallel_workers : float prop;
  max_parallel_workers_per_gather : float prop;
  max_pred_locks_per_transaction : float prop;
  max_prepared_transactions : float prop;
  max_replication_slots : float prop;
  max_stack_depth : float prop;
  max_standby_archive_delay : float prop;
  max_standby_streaming_delay : float prop;
  max_wal_senders : float prop;
  max_worker_processes : float prop;
  pg_partman_bgw_interval : float prop;
  pg_partman_bgw_role : string prop;
  pg_stat_statements_track : string prop;
  shared_buffers_percentage : float prop;
  temp_file_limit : float prop;
  timezone : string prop;
  track_activity_query_size : float prop;
  track_commit_timestamp : string prop;
  track_functions : string prop;
  track_io_timing : string prop;
  wal_sender_timeout : float prop;
  wal_writer_delay : float prop;
  work_mem : float prop;
}

let make ?autovacuum_analyze_scale_factor
    ?autovacuum_analyze_threshold ?autovacuum_freeze_max_age
    ?autovacuum_max_workers ?autovacuum_naptime
    ?autovacuum_vacuum_cost_delay ?autovacuum_vacuum_cost_limit
    ?autovacuum_vacuum_scale_factor ?autovacuum_vacuum_threshold
    ?backup_hour ?backup_minute ?bgwriter_delay ?bgwriter_flush_after
    ?bgwriter_lru_maxpages ?bgwriter_lru_multiplier ?deadlock_timeout
    ?default_toast_compression ?id
    ?idle_in_transaction_session_timeout ?jit
    ?log_autovacuum_min_duration ?log_error_verbosity
    ?log_line_prefix ?log_min_duration_statement
    ?max_files_per_process ?max_locks_per_transaction
    ?max_logical_replication_workers ?max_parallel_workers
    ?max_parallel_workers_per_gather ?max_pred_locks_per_transaction
    ?max_prepared_transactions ?max_replication_slots
    ?max_stack_depth ?max_standby_archive_delay
    ?max_standby_streaming_delay ?max_wal_senders
    ?max_worker_processes ?pg_partman_bgw_interval
    ?pg_partman_bgw_role ?pg_stat_statements_track
    ?shared_buffers_percentage ?temp_file_limit ?timezone
    ?track_activity_query_size ?track_commit_timestamp
    ?track_functions ?track_io_timing ?wal_sender_timeout
    ?wal_writer_delay ?work_mem ?(pgbouncer = []) ?(timescaledb = [])
    ~cluster_id __id =
  let __type = "digitalocean_database_postgresql_config" in
  let __attrs =
    ({
       tf_name = __id;
       autovacuum_analyze_scale_factor =
         Prop.computed __type __id "autovacuum_analyze_scale_factor";
       autovacuum_analyze_threshold =
         Prop.computed __type __id "autovacuum_analyze_threshold";
       autovacuum_freeze_max_age =
         Prop.computed __type __id "autovacuum_freeze_max_age";
       autovacuum_max_workers =
         Prop.computed __type __id "autovacuum_max_workers";
       autovacuum_naptime =
         Prop.computed __type __id "autovacuum_naptime";
       autovacuum_vacuum_cost_delay =
         Prop.computed __type __id "autovacuum_vacuum_cost_delay";
       autovacuum_vacuum_cost_limit =
         Prop.computed __type __id "autovacuum_vacuum_cost_limit";
       autovacuum_vacuum_scale_factor =
         Prop.computed __type __id "autovacuum_vacuum_scale_factor";
       autovacuum_vacuum_threshold =
         Prop.computed __type __id "autovacuum_vacuum_threshold";
       backup_hour = Prop.computed __type __id "backup_hour";
       backup_minute = Prop.computed __type __id "backup_minute";
       bgwriter_delay = Prop.computed __type __id "bgwriter_delay";
       bgwriter_flush_after =
         Prop.computed __type __id "bgwriter_flush_after";
       bgwriter_lru_maxpages =
         Prop.computed __type __id "bgwriter_lru_maxpages";
       bgwriter_lru_multiplier =
         Prop.computed __type __id "bgwriter_lru_multiplier";
       cluster_id = Prop.computed __type __id "cluster_id";
       deadlock_timeout =
         Prop.computed __type __id "deadlock_timeout";
       default_toast_compression =
         Prop.computed __type __id "default_toast_compression";
       id = Prop.computed __type __id "id";
       idle_in_transaction_session_timeout =
         Prop.computed __type __id
           "idle_in_transaction_session_timeout";
       jit = Prop.computed __type __id "jit";
       log_autovacuum_min_duration =
         Prop.computed __type __id "log_autovacuum_min_duration";
       log_error_verbosity =
         Prop.computed __type __id "log_error_verbosity";
       log_line_prefix = Prop.computed __type __id "log_line_prefix";
       log_min_duration_statement =
         Prop.computed __type __id "log_min_duration_statement";
       max_files_per_process =
         Prop.computed __type __id "max_files_per_process";
       max_locks_per_transaction =
         Prop.computed __type __id "max_locks_per_transaction";
       max_logical_replication_workers =
         Prop.computed __type __id "max_logical_replication_workers";
       max_parallel_workers =
         Prop.computed __type __id "max_parallel_workers";
       max_parallel_workers_per_gather =
         Prop.computed __type __id "max_parallel_workers_per_gather";
       max_pred_locks_per_transaction =
         Prop.computed __type __id "max_pred_locks_per_transaction";
       max_prepared_transactions =
         Prop.computed __type __id "max_prepared_transactions";
       max_replication_slots =
         Prop.computed __type __id "max_replication_slots";
       max_stack_depth = Prop.computed __type __id "max_stack_depth";
       max_standby_archive_delay =
         Prop.computed __type __id "max_standby_archive_delay";
       max_standby_streaming_delay =
         Prop.computed __type __id "max_standby_streaming_delay";
       max_wal_senders = Prop.computed __type __id "max_wal_senders";
       max_worker_processes =
         Prop.computed __type __id "max_worker_processes";
       pg_partman_bgw_interval =
         Prop.computed __type __id "pg_partman_bgw_interval";
       pg_partman_bgw_role =
         Prop.computed __type __id "pg_partman_bgw_role";
       pg_stat_statements_track =
         Prop.computed __type __id "pg_stat_statements_track";
       shared_buffers_percentage =
         Prop.computed __type __id "shared_buffers_percentage";
       temp_file_limit = Prop.computed __type __id "temp_file_limit";
       timezone = Prop.computed __type __id "timezone";
       track_activity_query_size =
         Prop.computed __type __id "track_activity_query_size";
       track_commit_timestamp =
         Prop.computed __type __id "track_commit_timestamp";
       track_functions = Prop.computed __type __id "track_functions";
       track_io_timing = Prop.computed __type __id "track_io_timing";
       wal_sender_timeout =
         Prop.computed __type __id "wal_sender_timeout";
       wal_writer_delay =
         Prop.computed __type __id "wal_writer_delay";
       work_mem = Prop.computed __type __id "work_mem";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_postgresql_config
        (digitalocean_database_postgresql_config
           ?autovacuum_analyze_scale_factor
           ?autovacuum_analyze_threshold ?autovacuum_freeze_max_age
           ?autovacuum_max_workers ?autovacuum_naptime
           ?autovacuum_vacuum_cost_delay
           ?autovacuum_vacuum_cost_limit
           ?autovacuum_vacuum_scale_factor
           ?autovacuum_vacuum_threshold ?backup_hour ?backup_minute
           ?bgwriter_delay ?bgwriter_flush_after
           ?bgwriter_lru_maxpages ?bgwriter_lru_multiplier
           ?deadlock_timeout ?default_toast_compression ?id
           ?idle_in_transaction_session_timeout ?jit
           ?log_autovacuum_min_duration ?log_error_verbosity
           ?log_line_prefix ?log_min_duration_statement
           ?max_files_per_process ?max_locks_per_transaction
           ?max_logical_replication_workers ?max_parallel_workers
           ?max_parallel_workers_per_gather
           ?max_pred_locks_per_transaction ?max_prepared_transactions
           ?max_replication_slots ?max_stack_depth
           ?max_standby_archive_delay ?max_standby_streaming_delay
           ?max_wal_senders ?max_worker_processes
           ?pg_partman_bgw_interval ?pg_partman_bgw_role
           ?pg_stat_statements_track ?shared_buffers_percentage
           ?temp_file_limit ?timezone ?track_activity_query_size
           ?track_commit_timestamp ?track_functions ?track_io_timing
           ?wal_sender_timeout ?wal_writer_delay ?work_mem ~pgbouncer
           ~timescaledb ~cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?autovacuum_analyze_scale_factor
    ?autovacuum_analyze_threshold ?autovacuum_freeze_max_age
    ?autovacuum_max_workers ?autovacuum_naptime
    ?autovacuum_vacuum_cost_delay ?autovacuum_vacuum_cost_limit
    ?autovacuum_vacuum_scale_factor ?autovacuum_vacuum_threshold
    ?backup_hour ?backup_minute ?bgwriter_delay ?bgwriter_flush_after
    ?bgwriter_lru_maxpages ?bgwriter_lru_multiplier ?deadlock_timeout
    ?default_toast_compression ?id
    ?idle_in_transaction_session_timeout ?jit
    ?log_autovacuum_min_duration ?log_error_verbosity
    ?log_line_prefix ?log_min_duration_statement
    ?max_files_per_process ?max_locks_per_transaction
    ?max_logical_replication_workers ?max_parallel_workers
    ?max_parallel_workers_per_gather ?max_pred_locks_per_transaction
    ?max_prepared_transactions ?max_replication_slots
    ?max_stack_depth ?max_standby_archive_delay
    ?max_standby_streaming_delay ?max_wal_senders
    ?max_worker_processes ?pg_partman_bgw_interval
    ?pg_partman_bgw_role ?pg_stat_statements_track
    ?shared_buffers_percentage ?temp_file_limit ?timezone
    ?track_activity_query_size ?track_commit_timestamp
    ?track_functions ?track_io_timing ?wal_sender_timeout
    ?wal_writer_delay ?work_mem ?(pgbouncer = []) ?(timescaledb = [])
    ~cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?autovacuum_analyze_scale_factor
      ?autovacuum_analyze_threshold ?autovacuum_freeze_max_age
      ?autovacuum_max_workers ?autovacuum_naptime
      ?autovacuum_vacuum_cost_delay ?autovacuum_vacuum_cost_limit
      ?autovacuum_vacuum_scale_factor ?autovacuum_vacuum_threshold
      ?backup_hour ?backup_minute ?bgwriter_delay
      ?bgwriter_flush_after ?bgwriter_lru_maxpages
      ?bgwriter_lru_multiplier ?deadlock_timeout
      ?default_toast_compression ?id
      ?idle_in_transaction_session_timeout ?jit
      ?log_autovacuum_min_duration ?log_error_verbosity
      ?log_line_prefix ?log_min_duration_statement
      ?max_files_per_process ?max_locks_per_transaction
      ?max_logical_replication_workers ?max_parallel_workers
      ?max_parallel_workers_per_gather
      ?max_pred_locks_per_transaction ?max_prepared_transactions
      ?max_replication_slots ?max_stack_depth
      ?max_standby_archive_delay ?max_standby_streaming_delay
      ?max_wal_senders ?max_worker_processes ?pg_partman_bgw_interval
      ?pg_partman_bgw_role ?pg_stat_statements_track
      ?shared_buffers_percentage ?temp_file_limit ?timezone
      ?track_activity_query_size ?track_commit_timestamp
      ?track_functions ?track_io_timing ?wal_sender_timeout
      ?wal_writer_delay ?work_mem ~pgbouncer ~timescaledb ~cluster_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
