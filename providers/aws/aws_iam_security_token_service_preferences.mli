(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_security_token_service_preferences

type t = private {
  global_endpoint_token_version : string prop;
  id : string prop;
}

val aws_iam_security_token_service_preferences :
  ?id:string prop ->
  global_endpoint_token_version:string prop ->
  string ->
  t
