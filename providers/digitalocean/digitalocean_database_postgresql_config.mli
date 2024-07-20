(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pgbouncer

val pgbouncer :
  ?autodb_idle_timeout:float prop ->
  ?autodb_max_db_connections:float prop ->
  ?autodb_pool_mode:string prop ->
  ?autodb_pool_size:float prop ->
  ?ignore_startup_parameters:string prop list ->
  ?min_pool_size:float prop ->
  ?server_idle_timeout:float prop ->
  ?server_lifetime:float prop ->
  ?server_reset_query_always:bool prop ->
  unit ->
  pgbouncer

type timescaledb

val timescaledb : ?timescaledb:float prop -> unit -> timescaledb

type digitalocean_database_postgresql_config

val digitalocean_database_postgresql_config :
  ?autovacuum_analyze_scale_factor:float prop ->
  ?autovacuum_analyze_threshold:float prop ->
  ?autovacuum_freeze_max_age:float prop ->
  ?autovacuum_max_workers:float prop ->
  ?autovacuum_naptime:float prop ->
  ?autovacuum_vacuum_cost_delay:float prop ->
  ?autovacuum_vacuum_cost_limit:float prop ->
  ?autovacuum_vacuum_scale_factor:float prop ->
  ?autovacuum_vacuum_threshold:float prop ->
  ?backup_hour:float prop ->
  ?backup_minute:float prop ->
  ?bgwriter_delay:float prop ->
  ?bgwriter_flush_after:float prop ->
  ?bgwriter_lru_maxpages:float prop ->
  ?bgwriter_lru_multiplier:float prop ->
  ?deadlock_timeout:float prop ->
  ?default_toast_compression:string prop ->
  ?id:string prop ->
  ?idle_in_transaction_session_timeout:float prop ->
  ?jit:bool prop ->
  ?log_autovacuum_min_duration:float prop ->
  ?log_error_verbosity:string prop ->
  ?log_line_prefix:string prop ->
  ?log_min_duration_statement:float prop ->
  ?max_files_per_process:float prop ->
  ?max_locks_per_transaction:float prop ->
  ?max_logical_replication_workers:float prop ->
  ?max_parallel_workers:float prop ->
  ?max_parallel_workers_per_gather:float prop ->
  ?max_pred_locks_per_transaction:float prop ->
  ?max_prepared_transactions:float prop ->
  ?max_replication_slots:float prop ->
  ?max_stack_depth:float prop ->
  ?max_standby_archive_delay:float prop ->
  ?max_standby_streaming_delay:float prop ->
  ?max_wal_senders:float prop ->
  ?max_worker_processes:float prop ->
  ?pg_partman_bgw_interval:float prop ->
  ?pg_partman_bgw_role:string prop ->
  ?pg_stat_statements_track:string prop ->
  ?shared_buffers_percentage:float prop ->
  ?temp_file_limit:float prop ->
  ?timezone:string prop ->
  ?track_activity_query_size:float prop ->
  ?track_commit_timestamp:string prop ->
  ?track_functions:string prop ->
  ?track_io_timing:string prop ->
  ?wal_sender_timeout:float prop ->
  ?wal_writer_delay:float prop ->
  ?work_mem:float prop ->
  ?pgbouncer:pgbouncer list ->
  ?timescaledb:timescaledb list ->
  cluster_id:string prop ->
  unit ->
  digitalocean_database_postgresql_config

val yojson_of_digitalocean_database_postgresql_config :
  digitalocean_database_postgresql_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?autovacuum_analyze_scale_factor:float prop ->
  ?autovacuum_analyze_threshold:float prop ->
  ?autovacuum_freeze_max_age:float prop ->
  ?autovacuum_max_workers:float prop ->
  ?autovacuum_naptime:float prop ->
  ?autovacuum_vacuum_cost_delay:float prop ->
  ?autovacuum_vacuum_cost_limit:float prop ->
  ?autovacuum_vacuum_scale_factor:float prop ->
  ?autovacuum_vacuum_threshold:float prop ->
  ?backup_hour:float prop ->
  ?backup_minute:float prop ->
  ?bgwriter_delay:float prop ->
  ?bgwriter_flush_after:float prop ->
  ?bgwriter_lru_maxpages:float prop ->
  ?bgwriter_lru_multiplier:float prop ->
  ?deadlock_timeout:float prop ->
  ?default_toast_compression:string prop ->
  ?id:string prop ->
  ?idle_in_transaction_session_timeout:float prop ->
  ?jit:bool prop ->
  ?log_autovacuum_min_duration:float prop ->
  ?log_error_verbosity:string prop ->
  ?log_line_prefix:string prop ->
  ?log_min_duration_statement:float prop ->
  ?max_files_per_process:float prop ->
  ?max_locks_per_transaction:float prop ->
  ?max_logical_replication_workers:float prop ->
  ?max_parallel_workers:float prop ->
  ?max_parallel_workers_per_gather:float prop ->
  ?max_pred_locks_per_transaction:float prop ->
  ?max_prepared_transactions:float prop ->
  ?max_replication_slots:float prop ->
  ?max_stack_depth:float prop ->
  ?max_standby_archive_delay:float prop ->
  ?max_standby_streaming_delay:float prop ->
  ?max_wal_senders:float prop ->
  ?max_worker_processes:float prop ->
  ?pg_partman_bgw_interval:float prop ->
  ?pg_partman_bgw_role:string prop ->
  ?pg_stat_statements_track:string prop ->
  ?shared_buffers_percentage:float prop ->
  ?temp_file_limit:float prop ->
  ?timezone:string prop ->
  ?track_activity_query_size:float prop ->
  ?track_commit_timestamp:string prop ->
  ?track_functions:string prop ->
  ?track_io_timing:string prop ->
  ?wal_sender_timeout:float prop ->
  ?wal_writer_delay:float prop ->
  ?work_mem:float prop ->
  ?pgbouncer:pgbouncer list ->
  ?timescaledb:timescaledb list ->
  cluster_id:string prop ->
  string ->
  t

val make :
  ?autovacuum_analyze_scale_factor:float prop ->
  ?autovacuum_analyze_threshold:float prop ->
  ?autovacuum_freeze_max_age:float prop ->
  ?autovacuum_max_workers:float prop ->
  ?autovacuum_naptime:float prop ->
  ?autovacuum_vacuum_cost_delay:float prop ->
  ?autovacuum_vacuum_cost_limit:float prop ->
  ?autovacuum_vacuum_scale_factor:float prop ->
  ?autovacuum_vacuum_threshold:float prop ->
  ?backup_hour:float prop ->
  ?backup_minute:float prop ->
  ?bgwriter_delay:float prop ->
  ?bgwriter_flush_after:float prop ->
  ?bgwriter_lru_maxpages:float prop ->
  ?bgwriter_lru_multiplier:float prop ->
  ?deadlock_timeout:float prop ->
  ?default_toast_compression:string prop ->
  ?id:string prop ->
  ?idle_in_transaction_session_timeout:float prop ->
  ?jit:bool prop ->
  ?log_autovacuum_min_duration:float prop ->
  ?log_error_verbosity:string prop ->
  ?log_line_prefix:string prop ->
  ?log_min_duration_statement:float prop ->
  ?max_files_per_process:float prop ->
  ?max_locks_per_transaction:float prop ->
  ?max_logical_replication_workers:float prop ->
  ?max_parallel_workers:float prop ->
  ?max_parallel_workers_per_gather:float prop ->
  ?max_pred_locks_per_transaction:float prop ->
  ?max_prepared_transactions:float prop ->
  ?max_replication_slots:float prop ->
  ?max_stack_depth:float prop ->
  ?max_standby_archive_delay:float prop ->
  ?max_standby_streaming_delay:float prop ->
  ?max_wal_senders:float prop ->
  ?max_worker_processes:float prop ->
  ?pg_partman_bgw_interval:float prop ->
  ?pg_partman_bgw_role:string prop ->
  ?pg_stat_statements_track:string prop ->
  ?shared_buffers_percentage:float prop ->
  ?temp_file_limit:float prop ->
  ?timezone:string prop ->
  ?track_activity_query_size:float prop ->
  ?track_commit_timestamp:string prop ->
  ?track_functions:string prop ->
  ?track_io_timing:string prop ->
  ?wal_sender_timeout:float prop ->
  ?wal_writer_delay:float prop ->
  ?work_mem:float prop ->
  ?pgbouncer:pgbouncer list ->
  ?timescaledb:timescaledb list ->
  cluster_id:string prop ->
  string ->
  t Tf_core.resource
