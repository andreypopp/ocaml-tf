(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type access_logs__cloudwatch_logs

val access_logs__cloudwatch_logs :
  ?log_group:string prop ->
  enabled:bool prop ->
  unit ->
  access_logs__cloudwatch_logs

type access_logs__kinesis_data_firehose

val access_logs__kinesis_data_firehose :
  ?delivery_stream:string prop ->
  enabled:bool prop ->
  unit ->
  access_logs__kinesis_data_firehose

type access_logs__s3

val access_logs__s3 :
  ?bucket_name:string prop ->
  ?bucket_owner:string prop ->
  ?prefix:string prop ->
  enabled:bool prop ->
  unit ->
  access_logs__s3

type access_logs

val access_logs :
  ?include_trust_context:bool prop ->
  ?log_version:string prop ->
  cloudwatch_logs:access_logs__cloudwatch_logs list ->
  kinesis_data_firehose:access_logs__kinesis_data_firehose list ->
  s3:access_logs__s3 list ->
  unit ->
  access_logs

type aws_verifiedaccess_instance_logging_configuration

val aws_verifiedaccess_instance_logging_configuration :
  ?id:string prop ->
  verifiedaccess_instance_id:string prop ->
  access_logs:access_logs list ->
  unit ->
  aws_verifiedaccess_instance_logging_configuration

val yojson_of_aws_verifiedaccess_instance_logging_configuration :
  aws_verifiedaccess_instance_logging_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  verifiedaccess_instance_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  verifiedaccess_instance_id:string prop ->
  access_logs:access_logs list ->
  string ->
  t
