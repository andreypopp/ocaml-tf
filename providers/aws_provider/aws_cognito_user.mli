(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_user

val aws_cognito_user :
  ?attributes:(string * string prop) list ->
  ?client_metadata:(string * string prop) list ->
  ?desired_delivery_mediums:string prop list ->
  ?enabled:bool prop ->
  ?force_alias_creation:bool prop ->
  ?id:string prop ->
  ?message_action:string prop ->
  ?password:string prop ->
  ?temporary_password:string prop ->
  ?validation_data:(string * string prop) list ->
  user_pool_id:string prop ->
  username:string prop ->
  string ->
  unit
