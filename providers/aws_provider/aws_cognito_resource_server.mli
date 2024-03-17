(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_resource_server__scope
type aws_cognito_resource_server

val aws_cognito_resource_server :
  ?id:string prop ->
  identifier:string prop ->
  name:string prop ->
  user_pool_id:string prop ->
  scope:aws_cognito_resource_server__scope list ->
  string ->
  unit
