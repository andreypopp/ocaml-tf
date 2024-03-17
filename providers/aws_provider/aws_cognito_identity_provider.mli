(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_identity_provider

val aws_cognito_identity_provider :
  ?idp_identifiers:string list ->
  provider_details:(string * string) list ->
  provider_name:string ->
  provider_type:string ->
  user_pool_id:string ->
  string ->
  unit
