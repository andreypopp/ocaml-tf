(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_security_token_service_preferences

val aws_iam_security_token_service_preferences :
  ?id:string prop ->
  global_endpoint_token_version:string prop ->
  unit ->
  aws_iam_security_token_service_preferences

val yojson_of_aws_iam_security_token_service_preferences :
  aws_iam_security_token_service_preferences -> json

(** RESOURCE REGISTRATION *)

type t = private {
  global_endpoint_token_version : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  global_endpoint_token_version:string prop ->
  string ->
  t
