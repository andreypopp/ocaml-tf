(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
