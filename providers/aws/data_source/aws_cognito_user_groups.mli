(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type groups

val groups : unit -> groups

type aws_cognito_user_groups

val aws_cognito_user_groups :
  ?groups:groups list ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_user_groups

val yojson_of_aws_cognito_user_groups :
  aws_cognito_user_groups -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; user_pool_id : string prop }

val register :
  ?tf_module:tf_module ->
  ?groups:groups list ->
  user_pool_id:string prop ->
  string ->
  t

val make :
  ?groups:groups list ->
  user_pool_id:string prop ->
  string ->
  t Tf_core.resource
