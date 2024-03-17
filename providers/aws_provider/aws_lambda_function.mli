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
  ?architectures:string prop list ->
  ?code_signing_config_arn:string prop ->
  ?description:string prop ->
  ?filename:string prop ->
  ?handler:string prop ->
  ?id:string prop ->
  ?image_uri:string prop ->
  ?kms_key_arn:string prop ->
  ?layers:string prop list ->
  ?memory_size:float prop ->
  ?package_type:string prop ->
  ?publish:bool prop ->
  ?replace_security_groups_on_destroy:bool prop ->
  ?replacement_security_group_ids:string prop list ->
  ?reserved_concurrent_executions:float prop ->
  ?runtime:string prop ->
  ?s3_bucket:string prop ->
  ?s3_key:string prop ->
  ?s3_object_version:string prop ->
  ?skip_destroy:bool prop ->
  ?source_code_hash:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeout:float prop ->
  ?timeouts:aws_lambda_function__timeouts ->
  function_name:string prop ->
  role:string prop ->
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
