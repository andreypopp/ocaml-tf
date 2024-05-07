(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user_pool_clients

val aws_cognito_user_pool_clients :
  ?id:string prop ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_user_pool_clients

val yojson_of_aws_cognito_user_pool_clients :
  aws_cognito_user_pool_clients -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_ids : string list prop;
  client_names : string list prop;
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
