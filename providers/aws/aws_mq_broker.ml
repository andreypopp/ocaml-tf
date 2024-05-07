(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = {
  id : string prop option; [@option]
  revision : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | { id = v_id; revision = v_revision } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "revision", arg in
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
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type encryption_options = {
  kms_key_id : string prop option; [@option]
  use_aws_owned_key : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_options) -> ()

let yojson_of_encryption_options =
  (function
   | {
       kms_key_id = v_kms_key_id;
       use_aws_owned_key = v_use_aws_owned_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_aws_owned_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_aws_owned_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_options

[@@@deriving.end]

type ldap_server_metadata = {
  hosts : string prop list option; [@option]
  role_base : string prop option; [@option]
  role_name : string prop option; [@option]
  role_search_matching : string prop option; [@option]
  role_search_subtree : bool prop option; [@option]
  service_account_password : string prop option; [@option]
  service_account_username : string prop option; [@option]
  user_base : string prop option; [@option]
  user_role_name : string prop option; [@option]
  user_search_matching : string prop option; [@option]
  user_search_subtree : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ldap_server_metadata) -> ()

let yojson_of_ldap_server_metadata =
  (function
   | {
       hosts = v_hosts;
       role_base = v_role_base;
       role_name = v_role_name;
       role_search_matching = v_role_search_matching;
       role_search_subtree = v_role_search_subtree;
       service_account_password = v_service_account_password;
       service_account_username = v_service_account_username;
       user_base = v_user_base;
       user_role_name = v_user_role_name;
       user_search_matching = v_user_search_matching;
       user_search_subtree = v_user_search_subtree;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_search_subtree with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_search_subtree", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_search_matching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_search_matching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_role_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_base with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_base", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_search_subtree with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "role_search_subtree", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_search_matching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_search_matching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_base with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_base", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hosts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "hosts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ldap_server_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ldap_server_metadata

[@@@deriving.end]

type logs = {
  audit : string prop option; [@option]
  general : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs) -> ()

let yojson_of_logs =
  (function
   | { audit = v_audit; general = v_general } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_general with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "general", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs

[@@@deriving.end]

type maintenance_window_start_time = {
  day_of_week : string prop;
  time_of_day : string prop;
  time_zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window_start_time) -> ()

let yojson_of_maintenance_window_start_time =
  (function
   | {
       day_of_week = v_day_of_week;
       time_of_day = v_time_of_day;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_of_day in
         ("time_of_day", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window_start_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window_start_time

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type user = {
  console_access : bool prop option; [@option]
  groups : string prop list option; [@option]
  password : string prop;
  replication_user : bool prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user) -> ()

let yojson_of_user =
  (function
   | {
       console_access = v_console_access;
       groups = v_groups;
       password = v_password;
       replication_user = v_replication_user;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_replication_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replication_user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_console_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "console_access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user

[@@@deriving.end]

type instances = {
  console_url : string prop;
  endpoints : string prop list;
  ip_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instances) -> ()

let yojson_of_instances =
  (function
   | {
       console_url = v_console_url;
       endpoints = v_endpoints;
       ip_address = v_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_endpoints
         in
         ("endpoints", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_console_url in
         ("console_url", arg) :: bnds
       in
       `Assoc bnds
    : instances -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instances

[@@@deriving.end]

type aws_mq_broker = {
  apply_immediately : bool prop option; [@option]
  authentication_strategy : string prop option; [@option]
  auto_minor_version_upgrade : bool prop option; [@option]
  broker_name : string prop;
  data_replication_mode : string prop option; [@option]
  data_replication_primary_broker_arn : string prop option; [@option]
  deployment_mode : string prop option; [@option]
  engine_type : string prop;
  engine_version : string prop;
  host_instance_type : string prop;
  id : string prop option; [@option]
  publicly_accessible : bool prop option; [@option]
  security_groups : string prop list option; [@option]
  storage_type : string prop option; [@option]
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  configuration : configuration list;
  encryption_options : encryption_options list;
  ldap_server_metadata : ldap_server_metadata list;
  logs : logs list;
  maintenance_window_start_time : maintenance_window_start_time list;
  timeouts : timeouts option;
  user : user list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mq_broker) -> ()

let yojson_of_aws_mq_broker =
  (function
   | {
       apply_immediately = v_apply_immediately;
       authentication_strategy = v_authentication_strategy;
       auto_minor_version_upgrade = v_auto_minor_version_upgrade;
       broker_name = v_broker_name;
       data_replication_mode = v_data_replication_mode;
       data_replication_primary_broker_arn =
         v_data_replication_primary_broker_arn;
       deployment_mode = v_deployment_mode;
       engine_type = v_engine_type;
       engine_version = v_engine_version;
       host_instance_type = v_host_instance_type;
       id = v_id;
       publicly_accessible = v_publicly_accessible;
       security_groups = v_security_groups;
       storage_type = v_storage_type;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       configuration = v_configuration;
       encryption_options = v_encryption_options;
       ldap_server_metadata = v_ldap_server_metadata;
       logs = v_logs;
       maintenance_window_start_time =
         v_maintenance_window_start_time;
       timeouts = v_timeouts;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_user v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maintenance_window_start_time
             v_maintenance_window_start_time
         in
         ("maintenance_window_start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_logs v_logs in
         ("logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ldap_server_metadata
             v_ldap_server_metadata
         in
         ("ldap_server_metadata", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption_options
             v_encryption_options
         in
         ("encryption_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration v_configuration
         in
         ("configuration", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publicly_accessible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publicly_accessible", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_host_instance_type
         in
         ("host_instance_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_engine_version
         in
         ("engine_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine_type in
         ("engine_type", arg) :: bnds
       in
       let bnds =
         match v_deployment_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_replication_primary_broker_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_replication_primary_broker_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_replication_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_replication_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_broker_name in
         ("broker_name", arg) :: bnds
       in
       let bnds =
         match v_auto_minor_version_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_minor_version_upgrade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apply_immediately with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "apply_immediately", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_mq_broker -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mq_broker

[@@@deriving.end]

let configuration ?id ?revision () : configuration = { id; revision }

let encryption_options ?kms_key_id ?use_aws_owned_key () :
    encryption_options =
  { kms_key_id; use_aws_owned_key }

let ldap_server_metadata ?hosts ?role_base ?role_name
    ?role_search_matching ?role_search_subtree
    ?service_account_password ?service_account_username ?user_base
    ?user_role_name ?user_search_matching ?user_search_subtree () :
    ldap_server_metadata =
  {
    hosts;
    role_base;
    role_name;
    role_search_matching;
    role_search_subtree;
    service_account_password;
    service_account_username;
    user_base;
    user_role_name;
    user_search_matching;
    user_search_subtree;
  }

let logs ?audit ?general () : logs = { audit; general }

let maintenance_window_start_time ~day_of_week ~time_of_day
    ~time_zone () : maintenance_window_start_time =
  { day_of_week; time_of_day; time_zone }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let user ?console_access ?groups ?replication_user ~password
    ~username () : user =
  { console_access; groups; password; replication_user; username }

let aws_mq_broker ?apply_immediately ?authentication_strategy
    ?auto_minor_version_upgrade ?data_replication_mode
    ?data_replication_primary_broker_arn ?deployment_mode ?id
    ?publicly_accessible ?security_groups ?storage_type ?subnet_ids
    ?tags ?tags_all ?(configuration = []) ?(encryption_options = [])
    ?(ldap_server_metadata = []) ?(logs = [])
    ?(maintenance_window_start_time = []) ?timeouts ~broker_name
    ~engine_type ~engine_version ~host_instance_type ~user () :
    aws_mq_broker =
  {
    apply_immediately;
    authentication_strategy;
    auto_minor_version_upgrade;
    broker_name;
    data_replication_mode;
    data_replication_primary_broker_arn;
    deployment_mode;
    engine_type;
    engine_version;
    host_instance_type;
    id;
    publicly_accessible;
    security_groups;
    storage_type;
    subnet_ids;
    tags;
    tags_all;
    configuration;
    encryption_options;
    ldap_server_metadata;
    logs;
    maintenance_window_start_time;
    timeouts;
    user;
  }

type t = {
  tf_name : string;
  apply_immediately : bool prop;
  arn : string prop;
  authentication_strategy : string prop;
  auto_minor_version_upgrade : bool prop;
  broker_name : string prop;
  data_replication_mode : string prop;
  data_replication_primary_broker_arn : string prop;
  deployment_mode : string prop;
  engine_type : string prop;
  engine_version : string prop;
  host_instance_type : string prop;
  id : string prop;
  instances : instances list prop;
  pending_data_replication_mode : string prop;
  publicly_accessible : bool prop;
  security_groups : string list prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?apply_immediately ?authentication_strategy
    ?auto_minor_version_upgrade ?data_replication_mode
    ?data_replication_primary_broker_arn ?deployment_mode ?id
    ?publicly_accessible ?security_groups ?storage_type ?subnet_ids
    ?tags ?tags_all ?(configuration = []) ?(encryption_options = [])
    ?(ldap_server_metadata = []) ?(logs = [])
    ?(maintenance_window_start_time = []) ?timeouts ~broker_name
    ~engine_type ~engine_version ~host_instance_type ~user __id =
  let __type = "aws_mq_broker" in
  let __attrs =
    ({
       tf_name = __id;
       apply_immediately =
         Prop.computed __type __id "apply_immediately";
       arn = Prop.computed __type __id "arn";
       authentication_strategy =
         Prop.computed __type __id "authentication_strategy";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       broker_name = Prop.computed __type __id "broker_name";
       data_replication_mode =
         Prop.computed __type __id "data_replication_mode";
       data_replication_primary_broker_arn =
         Prop.computed __type __id
           "data_replication_primary_broker_arn";
       deployment_mode = Prop.computed __type __id "deployment_mode";
       engine_type = Prop.computed __type __id "engine_type";
       engine_version = Prop.computed __type __id "engine_version";
       host_instance_type =
         Prop.computed __type __id "host_instance_type";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       pending_data_replication_mode =
         Prop.computed __type __id "pending_data_replication_mode";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       security_groups = Prop.computed __type __id "security_groups";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mq_broker
        (aws_mq_broker ?apply_immediately ?authentication_strategy
           ?auto_minor_version_upgrade ?data_replication_mode
           ?data_replication_primary_broker_arn ?deployment_mode ?id
           ?publicly_accessible ?security_groups ?storage_type
           ?subnet_ids ?tags ?tags_all ~configuration
           ~encryption_options ~ldap_server_metadata ~logs
           ~maintenance_window_start_time ?timeouts ~broker_name
           ~engine_type ~engine_version ~host_instance_type ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_immediately ?authentication_strategy
    ?auto_minor_version_upgrade ?data_replication_mode
    ?data_replication_primary_broker_arn ?deployment_mode ?id
    ?publicly_accessible ?security_groups ?storage_type ?subnet_ids
    ?tags ?tags_all ?(configuration = []) ?(encryption_options = [])
    ?(ldap_server_metadata = []) ?(logs = [])
    ?(maintenance_window_start_time = []) ?timeouts ~broker_name
    ~engine_type ~engine_version ~host_instance_type ~user __id =
  let (r : _ Tf_core.resource) =
    make ?apply_immediately ?authentication_strategy
      ?auto_minor_version_upgrade ?data_replication_mode
      ?data_replication_primary_broker_arn ?deployment_mode ?id
      ?publicly_accessible ?security_groups ?storage_type ?subnet_ids
      ?tags ?tags_all ~configuration ~encryption_options
      ~ldap_server_metadata ~logs ~maintenance_window_start_time
      ?timeouts ~broker_name ~engine_type ~engine_version
      ~host_instance_type ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
