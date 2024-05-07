(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_mysql_config = {
  backup_hour : float prop option; [@option]
  backup_minute : float prop option; [@option]
  binlog_retention_period : float prop option; [@option]
  cluster_id : string prop;
  connect_timeout : float prop option; [@option]
  default_time_zone : string prop option; [@option]
  group_concat_max_len : float prop option; [@option]
  id : string prop option; [@option]
  information_schema_stats_expiry : float prop option; [@option]
  innodb_ft_min_token_size : float prop option; [@option]
  innodb_ft_server_stopword_table : string prop option; [@option]
  innodb_lock_wait_timeout : float prop option; [@option]
  innodb_log_buffer_size : float prop option; [@option]
  innodb_online_alter_log_max_size : float prop option; [@option]
  innodb_print_all_deadlocks : bool prop option; [@option]
  innodb_rollback_on_timeout : bool prop option; [@option]
  interactive_timeout : float prop option; [@option]
  internal_tmp_mem_storage_engine : string prop option; [@option]
  long_query_time : float prop option; [@option]
  max_allowed_packet : float prop option; [@option]
  max_heap_table_size : float prop option; [@option]
  net_read_timeout : float prop option; [@option]
  net_write_timeout : float prop option; [@option]
  slow_query_log : bool prop option; [@option]
  sort_buffer_size : float prop option; [@option]
  sql_mode : string prop option; [@option]
  sql_require_primary_key : bool prop option; [@option]
  tmp_table_size : float prop option; [@option]
  wait_timeout : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_mysql_config) -> ()

let yojson_of_digitalocean_database_mysql_config =
  (function
   | {
       backup_hour = v_backup_hour;
       backup_minute = v_backup_minute;
       binlog_retention_period = v_binlog_retention_period;
       cluster_id = v_cluster_id;
       connect_timeout = v_connect_timeout;
       default_time_zone = v_default_time_zone;
       group_concat_max_len = v_group_concat_max_len;
       id = v_id;
       information_schema_stats_expiry =
         v_information_schema_stats_expiry;
       innodb_ft_min_token_size = v_innodb_ft_min_token_size;
       innodb_ft_server_stopword_table =
         v_innodb_ft_server_stopword_table;
       innodb_lock_wait_timeout = v_innodb_lock_wait_timeout;
       innodb_log_buffer_size = v_innodb_log_buffer_size;
       innodb_online_alter_log_max_size =
         v_innodb_online_alter_log_max_size;
       innodb_print_all_deadlocks = v_innodb_print_all_deadlocks;
       innodb_rollback_on_timeout = v_innodb_rollback_on_timeout;
       interactive_timeout = v_interactive_timeout;
       internal_tmp_mem_storage_engine =
         v_internal_tmp_mem_storage_engine;
       long_query_time = v_long_query_time;
       max_allowed_packet = v_max_allowed_packet;
       max_heap_table_size = v_max_heap_table_size;
       net_read_timeout = v_net_read_timeout;
       net_write_timeout = v_net_write_timeout;
       slow_query_log = v_slow_query_log;
       sort_buffer_size = v_sort_buffer_size;
       sql_mode = v_sql_mode;
       sql_require_primary_key = v_sql_require_primary_key;
       tmp_table_size = v_tmp_table_size;
       wait_timeout = v_wait_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wait_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "wait_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tmp_table_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tmp_table_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_require_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sql_require_primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sort_buffer_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sort_buffer_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_slow_query_log with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "slow_query_log", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_write_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_write_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_read_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_read_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_heap_table_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_heap_table_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_allowed_packet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_allowed_packet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_long_query_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "long_query_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internal_tmp_mem_storage_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "internal_tmp_mem_storage_engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interactive_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interactive_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_innodb_rollback_on_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "innodb_rollback_on_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_innodb_print_all_deadlocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "innodb_print_all_deadlocks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_innodb_online_alter_log_max_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "innodb_online_alter_log_max_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_innodb_log_buffer_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "innodb_log_buffer_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_innodb_lock_wait_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "innodb_lock_wait_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_innodb_ft_server_stopword_table with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "innodb_ft_server_stopword_table", arg in
             bnd :: bnds
       in
       let bnds =
         match v_innodb_ft_min_token_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "innodb_ft_min_token_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_information_schema_stats_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "information_schema_stats_expiry", arg in
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
         match v_group_concat_max_len with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "group_concat_max_len", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connect_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "connect_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_binlog_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "binlog_retention_period", arg in
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
       `Assoc bnds
    : digitalocean_database_mysql_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_mysql_config

[@@@deriving.end]

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
    ~cluster_id () : digitalocean_database_mysql_config =
  {
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

type t = {
  tf_name : string;
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

let make ?backup_hour ?backup_minute ?binlog_retention_period
    ?connect_timeout ?default_time_zone ?group_concat_max_len ?id
    ?information_schema_stats_expiry ?innodb_ft_min_token_size
    ?innodb_ft_server_stopword_table ?innodb_lock_wait_timeout
    ?innodb_log_buffer_size ?innodb_online_alter_log_max_size
    ?innodb_print_all_deadlocks ?innodb_rollback_on_timeout
    ?interactive_timeout ?internal_tmp_mem_storage_engine
    ?long_query_time ?max_allowed_packet ?max_heap_table_size
    ?net_read_timeout ?net_write_timeout ?slow_query_log
    ?sort_buffer_size ?sql_mode ?sql_require_primary_key
    ?tmp_table_size ?wait_timeout ~cluster_id __id =
  let __type = "digitalocean_database_mysql_config" in
  let __attrs =
    ({
       tf_name = __id;
       backup_hour = Prop.computed __type __id "backup_hour";
       backup_minute = Prop.computed __type __id "backup_minute";
       binlog_retention_period =
         Prop.computed __type __id "binlog_retention_period";
       cluster_id = Prop.computed __type __id "cluster_id";
       connect_timeout = Prop.computed __type __id "connect_timeout";
       default_time_zone =
         Prop.computed __type __id "default_time_zone";
       group_concat_max_len =
         Prop.computed __type __id "group_concat_max_len";
       id = Prop.computed __type __id "id";
       information_schema_stats_expiry =
         Prop.computed __type __id "information_schema_stats_expiry";
       innodb_ft_min_token_size =
         Prop.computed __type __id "innodb_ft_min_token_size";
       innodb_ft_server_stopword_table =
         Prop.computed __type __id "innodb_ft_server_stopword_table";
       innodb_lock_wait_timeout =
         Prop.computed __type __id "innodb_lock_wait_timeout";
       innodb_log_buffer_size =
         Prop.computed __type __id "innodb_log_buffer_size";
       innodb_online_alter_log_max_size =
         Prop.computed __type __id "innodb_online_alter_log_max_size";
       innodb_print_all_deadlocks =
         Prop.computed __type __id "innodb_print_all_deadlocks";
       innodb_rollback_on_timeout =
         Prop.computed __type __id "innodb_rollback_on_timeout";
       interactive_timeout =
         Prop.computed __type __id "interactive_timeout";
       internal_tmp_mem_storage_engine =
         Prop.computed __type __id "internal_tmp_mem_storage_engine";
       long_query_time = Prop.computed __type __id "long_query_time";
       max_allowed_packet =
         Prop.computed __type __id "max_allowed_packet";
       max_heap_table_size =
         Prop.computed __type __id "max_heap_table_size";
       net_read_timeout =
         Prop.computed __type __id "net_read_timeout";
       net_write_timeout =
         Prop.computed __type __id "net_write_timeout";
       slow_query_log = Prop.computed __type __id "slow_query_log";
       sort_buffer_size =
         Prop.computed __type __id "sort_buffer_size";
       sql_mode = Prop.computed __type __id "sql_mode";
       sql_require_primary_key =
         Prop.computed __type __id "sql_require_primary_key";
       tmp_table_size = Prop.computed __type __id "tmp_table_size";
       wait_timeout = Prop.computed __type __id "wait_timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_mysql_config
        (digitalocean_database_mysql_config ?backup_hour
           ?backup_minute ?binlog_retention_period ?connect_timeout
           ?default_time_zone ?group_concat_max_len ?id
           ?information_schema_stats_expiry ?innodb_ft_min_token_size
           ?innodb_ft_server_stopword_table ?innodb_lock_wait_timeout
           ?innodb_log_buffer_size ?innodb_online_alter_log_max_size
           ?innodb_print_all_deadlocks ?innodb_rollback_on_timeout
           ?interactive_timeout ?internal_tmp_mem_storage_engine
           ?long_query_time ?max_allowed_packet ?max_heap_table_size
           ?net_read_timeout ?net_write_timeout ?slow_query_log
           ?sort_buffer_size ?sql_mode ?sql_require_primary_key
           ?tmp_table_size ?wait_timeout ~cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?backup_hour ?backup_minute
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
    ~cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?backup_hour ?backup_minute ?binlog_retention_period
      ?connect_timeout ?default_time_zone ?group_concat_max_len ?id
      ?information_schema_stats_expiry ?innodb_ft_min_token_size
      ?innodb_ft_server_stopword_table ?innodb_lock_wait_timeout
      ?innodb_log_buffer_size ?innodb_online_alter_log_max_size
      ?innodb_print_all_deadlocks ?innodb_rollback_on_timeout
      ?interactive_timeout ?internal_tmp_mem_storage_engine
      ?long_query_time ?max_allowed_packet ?max_heap_table_size
      ?net_read_timeout ?net_write_timeout ?slow_query_log
      ?sort_buffer_size ?sql_mode ?sql_require_primary_key
      ?tmp_table_size ?wait_timeout ~cluster_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
