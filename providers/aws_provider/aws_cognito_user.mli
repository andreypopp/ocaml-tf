(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_user

val aws_cognito_user :
  ?attributes:(string * string) list ->
  ?client_metadata:(string * string) list ->
  ?desired_delivery_mediums:string list ->
  ?enabled:bool ->
  ?force_alias_creation:bool ->
  ?message_action:string ->
  ?password:string ->
  ?temporary_password:string ->
  ?validation_data:(string * string) list ->
  user_pool_id:string ->
  username:string ->
  string ->
  unit
