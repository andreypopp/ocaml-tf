(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type logging_config__cloudwatch_config__large_data_delivery_s3_config

val logging_config__cloudwatch_config__large_data_delivery_s3_config :
  ?bucket_name:string prop ->
  ?key_prefix:string prop ->
  unit ->
  logging_config__cloudwatch_config__large_data_delivery_s3_config

type logging_config__cloudwatch_config

val logging_config__cloudwatch_config :
  ?log_group_name:string prop ->
  ?role_arn:string prop ->
  large_data_delivery_s3_config:
    logging_config__cloudwatch_config__large_data_delivery_s3_config ->
  unit ->
  logging_config__cloudwatch_config

type logging_config__s3_config

val logging_config__s3_config :
  ?bucket_name:string prop ->
  ?key_prefix:string prop ->
  unit ->
  logging_config__s3_config

type logging_config

val logging_config :
  embedding_data_delivery_enabled:bool prop ->
  image_data_delivery_enabled:bool prop ->
  text_data_delivery_enabled:bool prop ->
  cloudwatch_config:logging_config__cloudwatch_config ->
  s3_config:logging_config__s3_config ->
  unit ->
  logging_config

type aws_bedrock_model_invocation_logging_configuration

val aws_bedrock_model_invocation_logging_configuration :
  logging_config:logging_config ->
  unit ->
  aws_bedrock_model_invocation_logging_configuration

val yojson_of_aws_bedrock_model_invocation_logging_configuration :
  aws_bedrock_model_invocation_logging_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  logging_config:logging_config ->
  string ->
  t

val make :
  logging_config:logging_config -> string -> t Tf_core.resource
