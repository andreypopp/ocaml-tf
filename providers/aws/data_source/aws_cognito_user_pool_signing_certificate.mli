(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user_pool_signing_certificate

val aws_cognito_user_pool_signing_certificate :
  ?id:string prop ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_user_pool_signing_certificate

val yojson_of_aws_cognito_user_pool_signing_certificate :
  aws_cognito_user_pool_signing_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate : string prop;
  id : string prop;
  user_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  user_pool_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  user_pool_id:string prop ->
  string ->
  t Tf_core.resource
