(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type scope

val scope :
  scope_description:string prop ->
  scope_name:string prop ->
  unit ->
  scope

type aws_cognito_resource_server

val aws_cognito_resource_server :
  ?id:string prop ->
  identifier:string prop ->
  name:string prop ->
  user_pool_id:string prop ->
  scope:scope list ->
  unit ->
  aws_cognito_resource_server

val yojson_of_aws_cognito_resource_server :
  aws_cognito_resource_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  identifier : string prop;
  name : string prop;
  scope_identifiers : string list prop;
  user_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  identifier:string prop ->
  name:string prop ->
  user_pool_id:string prop ->
  scope:scope list ->
  string ->
  t

val make :
  ?id:string prop ->
  identifier:string prop ->
  name:string prop ->
  user_pool_id:string prop ->
  scope:scope list ->
  string ->
  t Tf_core.resource
