(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_resource_server__scope
type aws_cognito_resource_server

val aws_cognito_resource_server :
  ?id:string ->
  identifier:string ->
  name:string ->
  user_pool_id:string ->
  scope:aws_cognito_resource_server__scope list ->
  string ->
  unit
