(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = {
  id : string prop option; [@option]  (** id *)
  revision : float prop option; [@option]  (** revision *)
}
[@@deriving yojson_of]
(** configuration *)

type encryption_options = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  use_aws_owned_key : bool prop option; [@option]
      (** use_aws_owned_key *)
}
[@@deriving yojson_of]
(** encryption_options *)

type ldap_server_metadata = {
  hosts : string prop list option; [@option]  (** hosts *)
  role_base : string prop option; [@option]  (** role_base *)
  role_name : string prop option; [@option]  (** role_name *)
  role_search_matching : string prop option; [@option]
      (** role_search_matching *)
  role_search_subtree : bool prop option; [@option]
      (** role_search_subtree *)
  service_account_password : string prop option; [@option]
      (** service_account_password *)
  service_account_username : string prop option; [@option]
      (** service_account_username *)
  user_base : string prop option; [@option]  (** user_base *)
  user_role_name : string prop option; [@option]
      (** user_role_name *)
  user_search_matching : string prop option; [@option]
      (** user_search_matching *)
  user_search_subtree : bool prop option; [@option]
      (** user_search_subtree *)
}
[@@deriving yojson_of]
(** ldap_server_metadata *)

type logs = {
  audit : string prop option; [@option]  (** audit *)
  general : bool prop option; [@option]  (** general *)
}
[@@deriving yojson_of]
(** logs *)

type maintenance_window_start_time = {
  day_of_week : string prop;  (** day_of_week *)
  time_of_day : string prop;  (** time_of_day *)
  time_zone : string prop;  (** time_zone *)
}
[@@deriving yojson_of]
(** maintenance_window_start_time *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type user = {
  console_access : bool prop option; [@option]  (** console_access *)
  groups : string prop list option; [@option]  (** groups *)
  password : string prop;  (** password *)
  replication_user : bool prop option; [@option]
      (** replication_user *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** user *)

type instances = {
  console_url : string prop;  (** console_url *)
  endpoints : string prop list;  (** endpoints *)
  ip_address : string prop;  (** ip_address *)
}
[@@deriving yojson_of]

type aws_mq_broker = {
  apply_immediately : bool prop option; [@option]
      (** apply_immediately *)
  authentication_strategy : string prop option; [@option]
      (** authentication_strategy *)
  auto_minor_version_upgrade : bool prop option; [@option]
      (** auto_minor_version_upgrade *)
  broker_name : string prop;  (** broker_name *)
  data_replication_mode : string prop option; [@option]
      (** data_replication_mode *)
  data_replication_primary_broker_arn : string prop option; [@option]
      (** data_replication_primary_broker_arn *)
  deployment_mode : string prop option; [@option]
      (** deployment_mode *)
  engine_type : string prop;  (** engine_type *)
  engine_version : string prop;  (** engine_version *)
  host_instance_type : string prop;  (** host_instance_type *)
  id : string prop option; [@option]  (** id *)
  publicly_accessible : bool prop option; [@option]
      (** publicly_accessible *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  storage_type : string prop option; [@option]  (** storage_type *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  configuration : configuration list;
  encryption_options : encryption_options list;
  ldap_server_metadata : ldap_server_metadata list;
  logs : logs list;
  maintenance_window_start_time : maintenance_window_start_time list;
  timeouts : timeouts option;
  user : user list;
}
[@@deriving yojson_of]
(** aws_mq_broker *)

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
    ?tags ?tags_all ?timeouts ~broker_name ~engine_type
    ~engine_version ~host_instance_type ~configuration
    ~encryption_options ~ldap_server_metadata ~logs
    ~maintenance_window_start_time ~user () : aws_mq_broker =
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
    ?tags ?tags_all ?timeouts ~broker_name ~engine_type
    ~engine_version ~host_instance_type ~configuration
    ~encryption_options ~ldap_server_metadata ~logs
    ~maintenance_window_start_time ~user __id =
  let __type = "aws_mq_broker" in
  let __attrs =
    ({
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
           ?subnet_ids ?tags ?tags_all ?timeouts ~broker_name
           ~engine_type ~engine_version ~host_instance_type
           ~configuration ~encryption_options ~ldap_server_metadata
           ~logs ~maintenance_window_start_time ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?apply_immediately ?authentication_strategy
    ?auto_minor_version_upgrade ?data_replication_mode
    ?data_replication_primary_broker_arn ?deployment_mode ?id
    ?publicly_accessible ?security_groups ?storage_type ?subnet_ids
    ?tags ?tags_all ?timeouts ~broker_name ~engine_type
    ~engine_version ~host_instance_type ~configuration
    ~encryption_options ~ldap_server_metadata ~logs
    ~maintenance_window_start_time ~user __id =
  let (r : _ Tf_core.resource) =
    make ?apply_immediately ?authentication_strategy
      ?auto_minor_version_upgrade ?data_replication_mode
      ?data_replication_primary_broker_arn ?deployment_mode ?id
      ?publicly_accessible ?security_groups ?storage_type ?subnet_ids
      ?tags ?tags_all ?timeouts ~broker_name ~engine_type
      ~engine_version ~host_instance_type ~configuration
      ~encryption_options ~ldap_server_metadata ~logs
      ~maintenance_window_start_time ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
