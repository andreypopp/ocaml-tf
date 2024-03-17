(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_endpoint__elasticsearch_settings
type aws_dms_endpoint__kafka_settings
type aws_dms_endpoint__kinesis_settings
type aws_dms_endpoint__mongodb_settings
type aws_dms_endpoint__postgres_settings
type aws_dms_endpoint__redis_settings
type aws_dms_endpoint__redshift_settings
type aws_dms_endpoint__s3_settings
type aws_dms_endpoint__timeouts
type aws_dms_endpoint

val aws_dms_endpoint :
  ?database_name:string ->
  ?password:string ->
  ?pause_replication_tasks:bool ->
  ?port:float ->
  ?secrets_manager_access_role_arn:string ->
  ?secrets_manager_arn:string ->
  ?server_name:string ->
  ?service_access_role:string ->
  ?tags:(string * string) list ->
  ?username:string ->
  ?timeouts:aws_dms_endpoint__timeouts ->
  endpoint_id:string ->
  endpoint_type:string ->
  engine_name:string ->
  elasticsearch_settings:
    aws_dms_endpoint__elasticsearch_settings list ->
  kafka_settings:aws_dms_endpoint__kafka_settings list ->
  kinesis_settings:aws_dms_endpoint__kinesis_settings list ->
  mongodb_settings:aws_dms_endpoint__mongodb_settings list ->
  postgres_settings:aws_dms_endpoint__postgres_settings list ->
  redis_settings:aws_dms_endpoint__redis_settings list ->
  redshift_settings:aws_dms_endpoint__redshift_settings list ->
  s3_settings:aws_dms_endpoint__s3_settings list ->
  string ->
  unit
