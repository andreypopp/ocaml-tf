(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = { id : string prop; revision : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | { id = v_id; revision = v_revision } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type encryption_options = {
  kms_key_id : string prop;
  use_aws_owned_key : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_use_aws_owned_key
         in
         ("use_aws_owned_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       `Assoc bnds
    : encryption_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_options

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

type ldap_server_metadata = {
  hosts : string prop list;
  role_base : string prop;
  role_name : string prop;
  role_search_matching : string prop;
  role_search_subtree : bool prop;
  service_account_password : string prop;
  service_account_username : string prop;
  user_base : string prop;
  user_role_name : string prop;
  user_search_matching : string prop;
  user_search_subtree : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_user_search_subtree
         in
         ("user_search_subtree", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_search_matching
         in
         ("user_search_matching", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_role_name
         in
         ("user_role_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_base in
         ("user_base", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_username
         in
         ("service_account_username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_password
         in
         ("service_account_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_role_search_subtree
         in
         ("role_search_subtree", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_role_search_matching
         in
         ("role_search_matching", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_name in
         ("role_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_base in
         ("role_base", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_hosts
         in
         ("hosts", arg) :: bnds
       in
       `Assoc bnds
    : ldap_server_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ldap_server_metadata

[@@@deriving.end]

type logs = { audit : string prop; general : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : logs) -> ()

let yojson_of_logs =
  (function
   | { audit = v_audit; general = v_general } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_general in
         ("general", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_audit in
         ("audit", arg) :: bnds
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

type user = {
  console_access : bool prop;
  groups : string prop list;
  replication_user : bool prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user) -> ()

let yojson_of_user =
  (function
   | {
       console_access = v_console_access;
       groups = v_groups;
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
         let arg =
           yojson_of_prop yojson_of_bool v_replication_user
         in
         ("replication_user", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_groups
         in
         ("groups", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_console_access in
         ("console_access", arg) :: bnds
       in
       `Assoc bnds
    : user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user

[@@@deriving.end]

type aws_mq_broker = {
  broker_id : string prop option; [@option]
  broker_name : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mq_broker) -> ()

let yojson_of_aws_mq_broker =
  (function
   | {
       broker_id = v_broker_id;
       broker_name = v_broker_name;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_broker_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "broker_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_broker_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "broker_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_mq_broker -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mq_broker

[@@@deriving.end]

let aws_mq_broker ?broker_id ?broker_name ?id ?tags () :
    aws_mq_broker =
  { broker_id; broker_name; id; tags }

type t = {
  arn : string prop;
  authentication_strategy : string prop;
  auto_minor_version_upgrade : bool prop;
  broker_id : string prop;
  broker_name : string prop;
  configuration : configuration list prop;
  deployment_mode : string prop;
  encryption_options : encryption_options list prop;
  engine_type : string prop;
  engine_version : string prop;
  host_instance_type : string prop;
  id : string prop;
  instances : instances list prop;
  ldap_server_metadata : ldap_server_metadata list prop;
  logs : logs list prop;
  maintenance_window_start_time :
    maintenance_window_start_time list prop;
  publicly_accessible : bool prop;
  security_groups : string list prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  user : user list prop;
}

let make ?broker_id ?broker_name ?id ?tags __id =
  let __type = "aws_mq_broker" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authentication_strategy =
         Prop.computed __type __id "authentication_strategy";
       auto_minor_version_upgrade =
         Prop.computed __type __id "auto_minor_version_upgrade";
       broker_id = Prop.computed __type __id "broker_id";
       broker_name = Prop.computed __type __id "broker_name";
       configuration = Prop.computed __type __id "configuration";
       deployment_mode = Prop.computed __type __id "deployment_mode";
       encryption_options =
         Prop.computed __type __id "encryption_options";
       engine_type = Prop.computed __type __id "engine_type";
       engine_version = Prop.computed __type __id "engine_version";
       host_instance_type =
         Prop.computed __type __id "host_instance_type";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       ldap_server_metadata =
         Prop.computed __type __id "ldap_server_metadata";
       logs = Prop.computed __type __id "logs";
       maintenance_window_start_time =
         Prop.computed __type __id "maintenance_window_start_time";
       publicly_accessible =
         Prop.computed __type __id "publicly_accessible";
       security_groups = Prop.computed __type __id "security_groups";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mq_broker
        (aws_mq_broker ?broker_id ?broker_name ?id ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?broker_id ?broker_name ?id ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?broker_id ?broker_name ?id ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
