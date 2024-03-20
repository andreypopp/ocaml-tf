(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration = {
  id : string prop;  (** id *)
  revision : float prop;  (** revision *)
}

type encryption_options = {
  kms_key_id : string prop;  (** kms_key_id *)
  use_aws_owned_key : bool prop;  (** use_aws_owned_key *)
}

type instances = {
  console_url : string prop;  (** console_url *)
  endpoints : string prop list;  (** endpoints *)
  ip_address : string prop;  (** ip_address *)
}

type ldap_server_metadata = {
  hosts : string prop list;  (** hosts *)
  role_base : string prop;  (** role_base *)
  role_name : string prop;  (** role_name *)
  role_search_matching : string prop;  (** role_search_matching *)
  role_search_subtree : bool prop;  (** role_search_subtree *)
  service_account_password : string prop;
      (** service_account_password *)
  service_account_username : string prop;
      (** service_account_username *)
  user_base : string prop;  (** user_base *)
  user_role_name : string prop;  (** user_role_name *)
  user_search_matching : string prop;  (** user_search_matching *)
  user_search_subtree : bool prop;  (** user_search_subtree *)
}

type logs = {
  audit : string prop;  (** audit *)
  general : bool prop;  (** general *)
}

type maintenance_window_start_time = {
  day_of_week : string prop;  (** day_of_week *)
  time_of_day : string prop;  (** time_of_day *)
  time_zone : string prop;  (** time_zone *)
}

type user = {
  console_access : bool prop;  (** console_access *)
  groups : string prop list;  (** groups *)
  replication_user : bool prop;  (** replication_user *)
  username : string prop;  (** username *)
}

type aws_mq_broker

val aws_mq_broker :
  ?broker_id:string prop ->
  ?broker_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  unit ->
  aws_mq_broker

val yojson_of_aws_mq_broker : aws_mq_broker -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?broker_id:string prop ->
  ?broker_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?broker_id:string prop ->
  ?broker_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
