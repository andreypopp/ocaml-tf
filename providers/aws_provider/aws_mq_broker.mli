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
  console_url : string;  (** console_url *)
  endpoints : string list;  (** endpoints *)
  ip_address : string;  (** ip_address *)
}

type aws_mq_broker

val aws_mq_broker :
  ?apply_immediately:bool ->
  ?authentication_strategy:string ->
  ?auto_minor_version_upgrade:bool ->
  ?data_replication_mode:string ->
  ?data_replication_primary_broker_arn:string ->
  ?deployment_mode:string ->
  ?id:string ->
  ?publicly_accessible:bool ->
  ?security_groups:string list ->
  ?storage_type:string ->
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_mq_broker__timeouts ->
  broker_name:string ->
  engine_type:string ->
  engine_version:string ->
  host_instance_type:string ->
  configuration:aws_mq_broker__configuration list ->
  encryption_options:aws_mq_broker__encryption_options list ->
  ldap_server_metadata:aws_mq_broker__ldap_server_metadata list ->
  logs:aws_mq_broker__logs list ->
  maintenance_window_start_time:
    aws_mq_broker__maintenance_window_start_time list ->
  user:aws_mq_broker__user list ->
  string ->
  unit
