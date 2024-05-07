(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allowed_publishers

val allowed_publishers :
  signing_profile_version_arns:string prop list ->
  unit ->
  allowed_publishers

type policies

val policies :
  untrusted_artifact_on_deployment:string prop -> unit -> policies

type aws_lambda_code_signing_config

val aws_lambda_code_signing_config :
  ?description:string prop ->
  ?id:string prop ->
  ?policies:policies list ->
  allowed_publishers:allowed_publishers list ->
  unit ->
  aws_lambda_code_signing_config

val yojson_of_aws_lambda_code_signing_config :
  aws_lambda_code_signing_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  config_id : string prop;
  description : string prop;
  id : string prop;
  last_modified : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?policies:policies list ->
  allowed_publishers:allowed_publishers list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?policies:policies list ->
  allowed_publishers:allowed_publishers list ->
  string ->
  t Tf_core.resource
