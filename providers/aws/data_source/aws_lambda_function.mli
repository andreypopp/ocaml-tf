(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dead_letter_config = {
  target_arn : string prop;  (** target_arn *)
}

type environment = {
  variables : (string * string prop) list;  (** variables *)
}

type ephemeral_storage = { size : float prop  (** size *) }

type file_system_config = {
  arn : string prop;  (** arn *)
  local_mount_path : string prop;  (** local_mount_path *)
}

type logging_config = {
  application_log_level : string prop;  (** application_log_level *)
  log_format : string prop;  (** log_format *)
  log_group : string prop;  (** log_group *)
  system_log_level : string prop;  (** system_log_level *)
}

type tracing_config = { mode : string prop  (** mode *) }

type vpc_config = {
  ipv6_allowed_for_dual_stack : bool prop;
      (** ipv6_allowed_for_dual_stack *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}

type aws_lambda_function

val aws_lambda_function :
  ?id:string prop ->
  ?qualifier:string prop ->
  ?tags:(string * string prop) list ->
  function_name:string prop ->
  unit ->
  aws_lambda_function

val yojson_of_aws_lambda_function : aws_lambda_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  architectures : string list prop;
  arn : string prop;
  code_signing_config_arn : string prop;
  dead_letter_config : dead_letter_config list prop;
  description : string prop;
  environment : environment list prop;
  ephemeral_storage : ephemeral_storage list prop;
  file_system_config : file_system_config list prop;
  function_name : string prop;
  handler : string prop;
  id : string prop;
  image_uri : string prop;
  invoke_arn : string prop;
  kms_key_arn : string prop;
  last_modified : string prop;
  layers : string list prop;
  logging_config : logging_config list prop;
  memory_size : float prop;
  qualified_arn : string prop;
  qualified_invoke_arn : string prop;
  qualifier : string prop;
  reserved_concurrent_executions : float prop;
  role : string prop;
  runtime : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  tags : (string * string) list prop;
  timeout : float prop;
  tracing_config : tracing_config list prop;
  version : string prop;
  vpc_config : vpc_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?qualifier:string prop ->
  ?tags:(string * string prop) list ->
  function_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?qualifier:string prop ->
  ?tags:(string * string prop) list ->
  function_name:string prop ->
  string ->
  t Tf_core.resource
