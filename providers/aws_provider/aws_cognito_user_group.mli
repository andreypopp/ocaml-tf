(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_user_group

val aws_cognito_user_group :
  ?description:string prop ->
  ?id:string prop ->
  ?precedence:float prop ->
  ?role_arn:string prop ->
  name:string prop ->
  user_pool_id:string prop ->
  string ->
  unit
