(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mq_broker__configuration = {
  id : string prop option; [@option]  (** id *)
  revision : float prop option; [@option]  (** revision *)
}
[@@deriving yojson_of]
(** aws_mq_broker__configuration *)

type aws_mq_broker__encryption_options = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  use_aws_owned_key : bool prop option; [@option]
      (** use_aws_owned_key *)
}
[@@deriving yojson_of]
(** aws_mq_broker__encryption_options *)

type aws_mq_broker__ldap_server_metadata = {
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
(** aws_mq_broker__ldap_server_metadata *)

type aws_mq_broker__logs = {
  audit : string prop option; [@option]  (** audit *)
  general : bool prop option; [@option]  (** general *)
}
[@@deriving yojson_of]
(** aws_mq_broker__logs *)

type aws_mq_broker__maintenance_window_start_time = {
  day_of_week : string prop;  (** day_of_week *)
  time_of_day : string prop;  (** time_of_day *)
  time_zone : string prop;  (** time_zone *)
}
[@@deriving yojson_of]
(** aws_mq_broker__maintenance_window_start_time *)

type aws_mq_broker__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_mq_broker__timeouts *)

type aws_mq_broker__user = {
  console_access : bool prop option; [@option]  (** console_access *)
  groups : string prop list option; [@option]  (** groups *)
  password : string prop;  (** password *)
  replication_user : bool prop option; [@option]
      (** replication_user *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_mq_broker__user *)

type aws_mq_broker__instances = {
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
  configuration : aws_mq_broker__configuration list;
  encryption_options : aws_mq_broker__encryption_options list;
  ldap_server_metadata : aws_mq_broker__ldap_server_metadata list;
  logs : aws_mq_broker__logs list;
  maintenance_window_start_time :
    aws_mq_broker__maintenance_window_start_time list;
  timeouts : aws_mq_broker__timeouts option;
  user : aws_mq_broker__user list;
}
[@@deriving yojson_of]
(** aws_mq_broker *)

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
  instances : aws_mq_broker__instances list prop;
  pending_data_replication_mode : string prop;
  publicly_accessible : bool prop;
  security_groups : string list prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_mq_broker ?apply_immediately ?authentication_strategy
    ?auto_minor_version_upgrade ?data_replication_mode
    ?data_replication_primary_broker_arn ?deployment_mode ?id
    ?publicly_accessible ?security_groups ?storage_type ?subnet_ids
    ?tags ?tags_all ?timeouts ~broker_name ~engine_type
    ~engine_version ~host_instance_type ~configuration
    ~encryption_options ~ldap_server_metadata ~logs
    ~maintenance_window_start_time ~user __resource_id =
  let __resource_type = "aws_mq_broker" in
  let __resource =
    ({
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
      : aws_mq_broker)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mq_broker __resource);
  let __resource_attributes =
    ({
       apply_immediately =
         Prop.computed __resource_type __resource_id
           "apply_immediately";
       arn = Prop.computed __resource_type __resource_id "arn";
       authentication_strategy =
         Prop.computed __resource_type __resource_id
           "authentication_strategy";
       auto_minor_version_upgrade =
         Prop.computed __resource_type __resource_id
           "auto_minor_version_upgrade";
       broker_name =
         Prop.computed __resource_type __resource_id "broker_name";
       data_replication_mode =
         Prop.computed __resource_type __resource_id
           "data_replication_mode";
       data_replication_primary_broker_arn =
         Prop.computed __resource_type __resource_id
           "data_replication_primary_broker_arn";
       deployment_mode =
         Prop.computed __resource_type __resource_id
           "deployment_mode";
       engine_type =
         Prop.computed __resource_type __resource_id "engine_type";
       engine_version =
         Prop.computed __resource_type __resource_id "engine_version";
       host_instance_type =
         Prop.computed __resource_type __resource_id
           "host_instance_type";
       id = Prop.computed __resource_type __resource_id "id";
       instances =
         Prop.computed __resource_type __resource_id "instances";
       pending_data_replication_mode =
         Prop.computed __resource_type __resource_id
           "pending_data_replication_mode";
       publicly_accessible =
         Prop.computed __resource_type __resource_id
           "publicly_accessible";
       security_groups =
         Prop.computed __resource_type __resource_id
           "security_groups";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
