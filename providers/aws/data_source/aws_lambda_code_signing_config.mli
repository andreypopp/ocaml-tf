(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allowed_publishers = {
  signing_profile_version_arns : string prop list;
      (** signing_profile_version_arns *)
}

type policies = {
  untrusted_artifact_on_deployment : string prop;
      (** untrusted_artifact_on_deployment *)
}

type aws_lambda_code_signing_config

val aws_lambda_code_signing_config :
  ?id:string prop ->
  arn:string prop ->
  unit ->
  aws_lambda_code_signing_config

val yojson_of_aws_lambda_code_signing_config :
  aws_lambda_code_signing_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_publishers : allowed_publishers list prop;
  arn : string prop;
  config_id : string prop;
  description : string prop;
  id : string prop;
  last_modified : string prop;
  policies : policies list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop -> arn:string prop -> string -> t Tf_core.resource
