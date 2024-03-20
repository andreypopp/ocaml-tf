(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type groups

val groups : unit -> groups

type aws_cognito_user_groups

val aws_cognito_user_groups :
  user_pool_id:string prop ->
  groups:groups list ->
  unit ->
  aws_cognito_user_groups

val yojson_of_aws_cognito_user_groups :
  aws_cognito_user_groups -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; user_pool_id : string prop }

val register :
  ?tf_module:tf_module ->
  user_pool_id:string prop ->
  groups:groups list ->
  string ->
  t

val make :
  user_pool_id:string prop ->
  groups:groups list ->
  string ->
  t Tf_core.resource
