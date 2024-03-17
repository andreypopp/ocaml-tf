(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_mq_broker__configuration
type aws_mq_broker__encryption_options
type aws_mq_broker__ldap_server_metadata
type aws_mq_broker__logs
type aws_mq_broker__maintenance_window_start_time
type aws_mq_broker__timeouts
type aws_mq_broker__user

type aws_mq_broker__instances = {
  console_url : string prop;  (** console_url *)
  endpoints : string prop list;  (** endpoints *)
  ip_address : string prop;  (** ip_address *)
}

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
  ?timeouts:aws_mq_broker__timeouts ->
  broker_name:string prop ->
  engine_type:string prop ->
  engine_version:string prop ->
  host_instance_type:string prop ->
  configuration:aws_mq_broker__configuration list ->
  encryption_options:aws_mq_broker__encryption_options list ->
  ldap_server_metadata:aws_mq_broker__ldap_server_metadata list ->
  logs:aws_mq_broker__logs list ->
  maintenance_window_start_time:
    aws_mq_broker__maintenance_window_start_time list ->
  user:aws_mq_broker__user list ->
  string ->
  unit
