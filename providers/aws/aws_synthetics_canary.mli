(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeline = {
  created : string prop;  (** created *)
  last_modified : string prop;  (** last_modified *)
  last_started : string prop;  (** last_started *)
  last_stopped : string prop;  (** last_stopped *)
}

[@@@deriving.end]

type artifact_config__s3_encryption

val artifact_config__s3_encryption :
  ?encryption_mode:string prop ->
  ?kms_key_arn:string prop ->
  unit ->
  artifact_config__s3_encryption

type artifact_config

val artifact_config :
  s3_encryption:artifact_config__s3_encryption list ->
  unit ->
  artifact_config

type run_config

val run_config :
  ?active_tracing:bool prop ->
  ?environment_variables:(string * string prop) list ->
  ?memory_in_mb:float prop ->
  ?timeout_in_seconds:float prop ->
  unit ->
  run_config

type schedule

val schedule :
  ?duration_in_seconds:float prop ->
  expression:string prop ->
  unit ->
  schedule

type vpc_config

val vpc_config :
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  unit ->
  vpc_config

type aws_synthetics_canary

val aws_synthetics_canary :
  ?delete_lambda:bool prop ->
  ?failure_retention_period:float prop ->
  ?id:string prop ->
  ?s3_bucket:string prop ->
  ?s3_key:string prop ->
  ?s3_version:string prop ->
  ?start_canary:bool prop ->
  ?success_retention_period:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?zip_file:string prop ->
  artifact_s3_location:string prop ->
  execution_role_arn:string prop ->
  handler:string prop ->
  name:string prop ->
  runtime_version:string prop ->
  artifact_config:artifact_config list ->
  run_config:run_config list ->
  schedule:schedule list ->
  vpc_config:vpc_config list ->
  unit ->
  aws_synthetics_canary

val yojson_of_aws_synthetics_canary : aws_synthetics_canary -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  artifact_s3_location : string prop;
  delete_lambda : bool prop;
  engine_arn : string prop;
  execution_role_arn : string prop;
  failure_retention_period : float prop;
  handler : string prop;
  id : string prop;
  name : string prop;
  runtime_version : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_version : string prop;
  source_location_arn : string prop;
  start_canary : bool prop;
  status : string prop;
  success_retention_period : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeline : timeline list prop;
  zip_file : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delete_lambda:bool prop ->
  ?failure_retention_period:float prop ->
  ?id:string prop ->
  ?s3_bucket:string prop ->
  ?s3_key:string prop ->
  ?s3_version:string prop ->
  ?start_canary:bool prop ->
  ?success_retention_period:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?zip_file:string prop ->
  artifact_s3_location:string prop ->
  execution_role_arn:string prop ->
  handler:string prop ->
  name:string prop ->
  runtime_version:string prop ->
  artifact_config:artifact_config list ->
  run_config:run_config list ->
  schedule:schedule list ->
  vpc_config:vpc_config list ->
  string ->
  t

val make :
  ?delete_lambda:bool prop ->
  ?failure_retention_period:float prop ->
  ?id:string prop ->
  ?s3_bucket:string prop ->
  ?s3_key:string prop ->
  ?s3_version:string prop ->
  ?start_canary:bool prop ->
  ?success_retention_period:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?zip_file:string prop ->
  artifact_s3_location:string prop ->
  execution_role_arn:string prop ->
  handler:string prop ->
  name:string prop ->
  runtime_version:string prop ->
  artifact_config:artifact_config list ->
  run_config:run_config list ->
  schedule:schedule list ->
  vpc_config:vpc_config list ->
  string ->
  t Tf_core.resource
