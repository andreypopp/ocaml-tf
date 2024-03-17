(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_database_mysql_config

val digitalocean_database_mysql_config :
  ?backup_hour:float prop ->
  ?backup_minute:float prop ->
  ?binlog_retention_period:float prop ->
  ?connect_timeout:float prop ->
  ?default_time_zone:string prop ->
  ?group_concat_max_len:float prop ->
  ?id:string prop ->
  ?information_schema_stats_expiry:float prop ->
  ?innodb_ft_min_token_size:float prop ->
  ?innodb_ft_server_stopword_table:string prop ->
  ?innodb_lock_wait_timeout:float prop ->
  ?innodb_log_buffer_size:float prop ->
  ?innodb_online_alter_log_max_size:float prop ->
  ?innodb_print_all_deadlocks:bool prop ->
  ?innodb_rollback_on_timeout:bool prop ->
  ?interactive_timeout:float prop ->
  ?internal_tmp_mem_storage_engine:string prop ->
  ?long_query_time:float prop ->
  ?max_allowed_packet:float prop ->
  ?max_heap_table_size:float prop ->
  ?net_read_timeout:float prop ->
  ?net_write_timeout:float prop ->
  ?slow_query_log:bool prop ->
  ?sort_buffer_size:float prop ->
  ?sql_mode:string prop ->
  ?sql_require_primary_key:bool prop ->
  ?tmp_table_size:float prop ->
  ?wait_timeout:float prop ->
  cluster_id:string prop ->
  string ->
  unit
