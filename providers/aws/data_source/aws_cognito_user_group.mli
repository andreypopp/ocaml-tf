(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user_group

val aws_cognito_user_group :
  name:string prop ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_user_group

val yojson_of_aws_cognito_user_group : aws_cognito_user_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  precedence : float prop;
  role_arn : string prop;
  user_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  name:string prop ->
  user_pool_id:string prop ->
  string ->
  t

val make :
  name:string prop ->
  user_pool_id:string prop ->
  string ->
  t Tf_core.resource
