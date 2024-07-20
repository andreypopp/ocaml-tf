(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dead_letter_config

val dead_letter_config :
  target_arn:string prop -> unit -> dead_letter_config

type environment

val environment :
  ?variables:(string * string prop) list -> unit -> environment

type ephemeral_storage

val ephemeral_storage : ?size:float prop -> unit -> ephemeral_storage

type file_system_config

val file_system_config :
  arn:string prop ->
  local_mount_path:string prop ->
  unit ->
  file_system_config

type image_config

val image_config :
  ?command:string prop list ->
  ?entry_point:string prop list ->
  ?working_directory:string prop ->
  unit ->
  image_config

type logging_config

val logging_config :
  ?application_log_level:string prop ->
  ?log_group:string prop ->
  ?system_log_level:string prop ->
  log_format:string prop ->
  unit ->
  logging_config

type snap_start

val snap_start : apply_on:string prop -> unit -> snap_start

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type tracing_config

val tracing_config : mode:string prop -> unit -> tracing_config

type vpc_config

val vpc_config :
  ?ipv6_allowed_for_dual_stack:bool prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc_config

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
  ?dead_letter_config:dead_letter_config list ->
  ?environment:environment list ->
  ?ephemeral_storage:ephemeral_storage list ->
  ?file_system_config:file_system_config list ->
  ?image_config:image_config list ->
  ?logging_config:logging_config list ->
  ?snap_start:snap_start list ->
  ?timeouts:timeouts ->
  ?tracing_config:tracing_config list ->
  ?vpc_config:vpc_config list ->
  function_name:string prop ->
  role:string prop ->
  unit ->
  aws_lambda_function

val yojson_of_aws_lambda_function : aws_lambda_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  architectures : string list prop;
  arn : string prop;
  code_sha256 : string prop;
  code_signing_config_arn : string prop;
  description : string prop;
  filename : string prop;
  function_name : string prop;
  handler : string prop;
  id : string prop;
  image_uri : string prop;
  invoke_arn : string prop;
  kms_key_arn : string prop;
  last_modified : string prop;
  layers : string list prop;
  memory_size : float prop;
  package_type : string prop;
  publish : bool prop;
  qualified_arn : string prop;
  qualified_invoke_arn : string prop;
  replace_security_groups_on_destroy : bool prop;
  replacement_security_group_ids : string list prop;
  reserved_concurrent_executions : float prop;
  role : string prop;
  runtime : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_object_version : string prop;
  signing_job_arn : string prop;
  signing_profile_version_arn : string prop;
  skip_destroy : bool prop;
  source_code_hash : string prop;
  source_code_size : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?dead_letter_config:dead_letter_config list ->
  ?environment:environment list ->
  ?ephemeral_storage:ephemeral_storage list ->
  ?file_system_config:file_system_config list ->
  ?image_config:image_config list ->
  ?logging_config:logging_config list ->
  ?snap_start:snap_start list ->
  ?timeouts:timeouts ->
  ?tracing_config:tracing_config list ->
  ?vpc_config:vpc_config list ->
  function_name:string prop ->
  role:string prop ->
  string ->
  t

val make :
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
  ?dead_letter_config:dead_letter_config list ->
  ?environment:environment list ->
  ?ephemeral_storage:ephemeral_storage list ->
  ?file_system_config:file_system_config list ->
  ?image_config:image_config list ->
  ?logging_config:logging_config list ->
  ?snap_start:snap_start list ->
  ?timeouts:timeouts ->
  ?tracing_config:tracing_config list ->
  ?vpc_config:vpc_config list ->
  function_name:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
