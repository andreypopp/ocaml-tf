(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user_in_group

val aws_cognito_user_in_group :
  ?id:string prop ->
  group_name:string prop ->
  user_pool_id:string prop ->
  username:string prop ->
  unit ->
  aws_cognito_user_in_group

val yojson_of_aws_cognito_user_in_group :
  aws_cognito_user_in_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  group_name : string prop;
  id : string prop;
  user_pool_id : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_name:string prop ->
  user_pool_id:string prop ->
  username:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  group_name:string prop ->
  user_pool_id:string prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
