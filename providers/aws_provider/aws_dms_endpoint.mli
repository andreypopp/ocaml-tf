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

type t = private {
  certificate_arn : string prop;
  database_name : string prop;
  endpoint_arn : string prop;
  endpoint_id : string prop;
  endpoint_type : string prop;
  engine_name : string prop;
  extra_connection_attributes : string prop;
  id : string prop;
  kms_key_arn : string prop;
  password : string prop;
  pause_replication_tasks : bool prop;
  port : float prop;
  secrets_manager_access_role_arn : string prop;
  secrets_manager_arn : string prop;
  server_name : string prop;
  service_access_role : string prop;
  ssl_mode : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  username : string prop;
}

val aws_dms_endpoint :
  ?certificate_arn:string prop ->
  ?database_name:string prop ->
  ?extra_connection_attributes:string prop ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?password:string prop ->
  ?pause_replication_tasks:bool prop ->
  ?port:float prop ->
  ?secrets_manager_access_role_arn:string prop ->
  ?secrets_manager_arn:string prop ->
  ?server_name:string prop ->
  ?service_access_role:string prop ->
  ?ssl_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?username:string prop ->
  ?timeouts:aws_dms_endpoint__timeouts ->
  endpoint_id:string prop ->
  endpoint_type:string prop ->
  engine_name:string prop ->
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
  t
