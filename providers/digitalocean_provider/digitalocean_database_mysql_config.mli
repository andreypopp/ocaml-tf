(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_mysql_config

val digitalocean_database_mysql_config :
  ?backup_hour:float ->
  ?backup_minute:float ->
  ?binlog_retention_period:float ->
  ?connect_timeout:float ->
  ?default_time_zone:string ->
  ?group_concat_max_len:float ->
  ?id:string ->
  ?information_schema_stats_expiry:float ->
  ?innodb_ft_min_token_size:float ->
  ?innodb_ft_server_stopword_table:string ->
  ?innodb_lock_wait_timeout:float ->
  ?innodb_log_buffer_size:float ->
  ?innodb_online_alter_log_max_size:float ->
  ?innodb_print_all_deadlocks:bool ->
  ?innodb_rollback_on_timeout:bool ->
  ?interactive_timeout:float ->
  ?internal_tmp_mem_storage_engine:string ->
  ?long_query_time:float ->
  ?max_allowed_packet:float ->
  ?max_heap_table_size:float ->
  ?net_read_timeout:float ->
  ?net_write_timeout:float ->
  ?slow_query_log:bool ->
  ?sort_buffer_size:float ->
  ?sql_mode:string ->
  ?sql_require_primary_key:bool ->
  ?tmp_table_size:float ->
  ?wait_timeout:float ->
  cluster_id:string ->
  string ->
  unit
