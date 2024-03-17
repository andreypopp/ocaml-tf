(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_function__dead_letter_config
type aws_lambda_function__environment
type aws_lambda_function__ephemeral_storage
type aws_lambda_function__file_system_config
type aws_lambda_function__image_config
type aws_lambda_function__logging_config
type aws_lambda_function__snap_start
type aws_lambda_function__timeouts
type aws_lambda_function__tracing_config
type aws_lambda_function__vpc_config
type aws_lambda_function

val aws_lambda_function :
  ?architectures:string list ->
  ?code_signing_config_arn:string ->
  ?description:string ->
  ?filename:string ->
  ?handler:string ->
  ?id:string ->
  ?image_uri:string ->
  ?kms_key_arn:string ->
  ?layers:string list ->
  ?memory_size:float ->
  ?package_type:string ->
  ?publish:bool ->
  ?replace_security_groups_on_destroy:bool ->
  ?replacement_security_group_ids:string list ->
  ?reserved_concurrent_executions:float ->
  ?runtime:string ->
  ?s3_bucket:string ->
  ?s3_key:string ->
  ?s3_object_version:string ->
  ?skip_destroy:bool ->
  ?source_code_hash:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeout:float ->
  ?timeouts:aws_lambda_function__timeouts ->
  function_name:string ->
  role:string ->
  dead_letter_config:aws_lambda_function__dead_letter_config list ->
  environment:aws_lambda_function__environment list ->
  ephemeral_storage:aws_lambda_function__ephemeral_storage list ->
  file_system_config:aws_lambda_function__file_system_config list ->
  image_config:aws_lambda_function__image_config list ->
  logging_config:aws_lambda_function__logging_config list ->
  snap_start:aws_lambda_function__snap_start list ->
  tracing_config:aws_lambda_function__tracing_config list ->
  vpc_config:aws_lambda_function__vpc_config list ->
  string ->
  unit
