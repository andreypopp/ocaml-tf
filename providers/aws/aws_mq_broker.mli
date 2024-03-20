(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instances = {
  console_url : string prop;  (** console_url *)
  endpoints : string prop list;  (** endpoints *)
  ip_address : string prop;  (** ip_address *)
}

[@@@deriving.end]

type configuration

val configuration :
  ?id:string prop -> ?revision:float prop -> unit -> configuration

type encryption_options

val encryption_options :
  ?kms_key_id:string prop ->
  ?use_aws_owned_key:bool prop ->
  unit ->
  encryption_options

type ldap_server_metadata

val ldap_server_metadata :
  ?hosts:string prop list ->
  ?role_base:string prop ->
  ?role_name:string prop ->
  ?role_search_matching:string prop ->
  ?role_search_subtree:bool prop ->
  ?service_account_password:string prop ->
  ?service_account_username:string prop ->
  ?user_base:string prop ->
  ?user_role_name:string prop ->
  ?user_search_matching:string prop ->
  ?user_search_subtree:bool prop ->
  unit ->
  ldap_server_metadata

type logs

val logs : ?audit:string prop -> ?general:bool prop -> unit -> logs

type maintenance_window_start_time

val maintenance_window_start_time :
  day_of_week:string prop ->
  time_of_day:string prop ->
  time_zone:string prop ->
  unit ->
  maintenance_window_start_time

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user

val user :
  ?console_access:bool prop ->
  ?groups:string prop list ->
  ?replication_user:bool prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  user

type aws_mq_broker

val aws_mq_broker :
  ?apply_immediately:bool prop ->
  ?authentication_strategy:string prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?data_replication_mode:string prop ->
  ?data_replication_primary_broker_arn:string prop ->
  ?deployment_mode:string prop ->
  ?id:string prop ->
  ?publicly_accessible:bool prop ->
  ?security_groups:string prop list ->
  ?storage_type:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  broker_name:string prop ->
  engine_type:string prop ->
  engine_version:string prop ->
  host_instance_type:string prop ->
  configuration:configuration list ->
  encryption_options:encryption_options list ->
  ldap_server_metadata:ldap_server_metadata list ->
  logs:logs list ->
  maintenance_window_start_time:maintenance_window_start_time list ->
  user:user list ->
  unit ->
  aws_mq_broker

val yojson_of_aws_mq_broker : aws_mq_broker -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?apply_immediately:bool prop ->
  ?authentication_strategy:string prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?data_replication_mode:string prop ->
  ?data_replication_primary_broker_arn:string prop ->
  ?deployment_mode:string prop ->
  ?id:string prop ->
  ?publicly_accessible:bool prop ->
  ?security_groups:string prop list ->
  ?storage_type:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  broker_name:string prop ->
  engine_type:string prop ->
  engine_version:string prop ->
  host_instance_type:string prop ->
  configuration:configuration list ->
  encryption_options:encryption_options list ->
  ldap_server_metadata:ldap_server_metadata list ->
  logs:logs list ->
  maintenance_window_start_time:maintenance_window_start_time list ->
  user:user list ->
  string ->
  t

val make :
  ?apply_immediately:bool prop ->
  ?authentication_strategy:string prop ->
  ?auto_minor_version_upgrade:bool prop ->
  ?data_replication_mode:string prop ->
  ?data_replication_primary_broker_arn:string prop ->
  ?deployment_mode:string prop ->
  ?id:string prop ->
  ?publicly_accessible:bool prop ->
  ?security_groups:string prop list ->
  ?storage_type:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  broker_name:string prop ->
  engine_type:string prop ->
  engine_version:string prop ->
  host_instance_type:string prop ->
  configuration:configuration list ->
  encryption_options:encryption_options list ->
  ldap_server_metadata:ldap_server_metadata list ->
  logs:logs list ->
  maintenance_window_start_time:maintenance_window_start_time list ->
  user:user list ->
  string ->
  t Tf_core.resource
