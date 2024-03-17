(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_mysql_config = {
  backup_hour : float prop option; [@option]  (** backup_hour *)
  backup_minute : float prop option; [@option]  (** backup_minute *)
  binlog_retention_period : float prop option; [@option]
      (** binlog_retention_period *)
  cluster_id : string prop;  (** cluster_id *)
  connect_timeout : float prop option; [@option]
      (** connect_timeout *)
  default_time_zone : string prop option; [@option]
      (** default_time_zone *)
  group_concat_max_len : float prop option; [@option]
      (** group_concat_max_len *)
  id : string prop option; [@option]  (** id *)
  information_schema_stats_expiry : float prop option; [@option]
      (** information_schema_stats_expiry *)
  innodb_ft_min_token_size : float prop option; [@option]
      (** innodb_ft_min_token_size *)
  innodb_ft_server_stopword_table : string prop option; [@option]
      (** innodb_ft_server_stopword_table *)
  innodb_lock_wait_timeout : float prop option; [@option]
      (** innodb_lock_wait_timeout *)
  innodb_log_buffer_size : float prop option; [@option]
      (** innodb_log_buffer_size *)
  innodb_online_alter_log_max_size : float prop option; [@option]
      (** innodb_online_alter_log_max_size *)
  innodb_print_all_deadlocks : bool prop option; [@option]
      (** innodb_print_all_deadlocks *)
  innodb_rollback_on_timeout : bool prop option; [@option]
      (** innodb_rollback_on_timeout *)
  interactive_timeout : float prop option; [@option]
      (** interactive_timeout *)
  internal_tmp_mem_storage_engine : string prop option; [@option]
      (** internal_tmp_mem_storage_engine *)
  long_query_time : float prop option; [@option]
      (** long_query_time *)
  max_allowed_packet : float prop option; [@option]
      (** max_allowed_packet *)
  max_heap_table_size : float prop option; [@option]
      (** max_heap_table_size *)
  net_read_timeout : float prop option; [@option]
      (** net_read_timeout *)
  net_write_timeout : float prop option; [@option]
      (** net_write_timeout *)
  slow_query_log : bool prop option; [@option]  (** slow_query_log *)
  sort_buffer_size : float prop option; [@option]
      (** sort_buffer_size *)
  sql_mode : string prop option; [@option]  (** sql_mode *)
  sql_require_primary_key : bool prop option; [@option]
      (** sql_require_primary_key *)
  tmp_table_size : float prop option; [@option]
      (** tmp_table_size *)
  wait_timeout : float prop option; [@option]  (** wait_timeout *)
}
[@@deriving yojson_of]
(** digitalocean_database_mysql_config *)

type t = {
  backup_hour : float prop;
  backup_minute : float prop;
  binlog_retention_period : float prop;
  cluster_id : string prop;
  connect_timeout : float prop;
  default_time_zone : string prop;
  group_concat_max_len : float prop;
  id : string prop;
  information_schema_stats_expiry : float prop;
  innodb_ft_min_token_size : float prop;
  innodb_ft_server_stopword_table : string prop;
  innodb_lock_wait_timeout : float prop;
  innodb_log_buffer_size : float prop;
  innodb_online_alter_log_max_size : float prop;
  innodb_print_all_deadlocks : bool prop;
  innodb_rollback_on_timeout : bool prop;
  interactive_timeout : float prop;
  internal_tmp_mem_storage_engine : string prop;
  long_query_time : float prop;
  max_allowed_packet : float prop;
  max_heap_table_size : float prop;
  net_read_timeout : float prop;
  net_write_timeout : float prop;
  slow_query_log : bool prop;
  sort_buffer_size : float prop;
  sql_mode : string prop;
  sql_require_primary_key : bool prop;
  tmp_table_size : float prop;
  wait_timeout : float prop;
}

let digitalocean_database_mysql_config ?backup_hour ?backup_minute
    ?binlog_retention_period ?connect_timeout ?default_time_zone
    ?group_concat_max_len ?id ?information_schema_stats_expiry
    ?innodb_ft_min_token_size ?innodb_ft_server_stopword_table
    ?innodb_lock_wait_timeout ?innodb_log_buffer_size
    ?innodb_online_alter_log_max_size ?innodb_print_all_deadlocks
    ?innodb_rollback_on_timeout ?interactive_timeout
    ?internal_tmp_mem_storage_engine ?long_query_time
    ?max_allowed_packet ?max_heap_table_size ?net_read_timeout
    ?net_write_timeout ?slow_query_log ?sort_buffer_size ?sql_mode
    ?sql_require_primary_key ?tmp_table_size ?wait_timeout
    ~cluster_id __resource_id =
  let __resource_type = "digitalocean_database_mysql_config" in
  let __resource =
    ({
       backup_hour;
       backup_minute;
       binlog_retention_period;
       cluster_id;
       connect_timeout;
       default_time_zone;
       group_concat_max_len;
       id;
       information_schema_stats_expiry;
       innodb_ft_min_token_size;
       innodb_ft_server_stopword_table;
       innodb_lock_wait_timeout;
       innodb_log_buffer_size;
       innodb_online_alter_log_max_size;
       innodb_print_all_deadlocks;
       innodb_rollback_on_timeout;
       interactive_timeout;
       internal_tmp_mem_storage_engine;
       long_query_time;
       max_allowed_packet;
       max_heap_table_size;
       net_read_timeout;
       net_write_timeout;
       slow_query_log;
       sort_buffer_size;
       sql_mode;
       sql_require_primary_key;
       tmp_table_size;
       wait_timeout;
     }
      : digitalocean_database_mysql_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_mysql_config __resource);
  let __resource_attributes =
    ({
       backup_hour =
         Prop.computed __resource_type __resource_id "backup_hour";
       backup_minute =
         Prop.computed __resource_type __resource_id "backup_minute";
       binlog_retention_period =
         Prop.computed __resource_type __resource_id
           "binlog_retention_period";
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       connect_timeout =
         Prop.computed __resource_type __resource_id
           "connect_timeout";
       default_time_zone =
         Prop.computed __resource_type __resource_id
           "default_time_zone";
       group_concat_max_len =
         Prop.computed __resource_type __resource_id
           "group_concat_max_len";
       id = Prop.computed __resource_type __resource_id "id";
       information_schema_stats_expiry =
         Prop.computed __resource_type __resource_id
           "information_schema_stats_expiry";
       innodb_ft_min_token_size =
         Prop.computed __resource_type __resource_id
           "innodb_ft_min_token_size";
       innodb_ft_server_stopword_table =
         Prop.computed __resource_type __resource_id
           "innodb_ft_server_stopword_table";
       innodb_lock_wait_timeout =
         Prop.computed __resource_type __resource_id
           "innodb_lock_wait_timeout";
       innodb_log_buffer_size =
         Prop.computed __resource_type __resource_id
           "innodb_log_buffer_size";
       innodb_online_alter_log_max_size =
         Prop.computed __resource_type __resource_id
           "innodb_online_alter_log_max_size";
       innodb_print_all_deadlocks =
         Prop.computed __resource_type __resource_id
           "innodb_print_all_deadlocks";
       innodb_rollback_on_timeout =
         Prop.computed __resource_type __resource_id
           "innodb_rollback_on_timeout";
       interactive_timeout =
         Prop.computed __resource_type __resource_id
           "interactive_timeout";
       internal_tmp_mem_storage_engine =
         Prop.computed __resource_type __resource_id
           "internal_tmp_mem_storage_engine";
       long_query_time =
         Prop.computed __resource_type __resource_id
           "long_query_time";
       max_allowed_packet =
         Prop.computed __resource_type __resource_id
           "max_allowed_packet";
       max_heap_table_size =
         Prop.computed __resource_type __resource_id
           "max_heap_table_size";
       net_read_timeout =
         Prop.computed __resource_type __resource_id
           "net_read_timeout";
       net_write_timeout =
         Prop.computed __resource_type __resource_id
           "net_write_timeout";
       slow_query_log =
         Prop.computed __resource_type __resource_id "slow_query_log";
       sort_buffer_size =
         Prop.computed __resource_type __resource_id
           "sort_buffer_size";
       sql_mode =
         Prop.computed __resource_type __resource_id "sql_mode";
       sql_require_primary_key =
         Prop.computed __resource_type __resource_id
           "sql_require_primary_key";
       tmp_table_size =
         Prop.computed __resource_type __resource_id "tmp_table_size";
       wait_timeout =
         Prop.computed __resource_type __resource_id "wait_timeout";
     }
      : t)
  in
  __resource_attributes
