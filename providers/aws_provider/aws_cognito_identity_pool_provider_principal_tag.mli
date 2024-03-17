(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_identity_pool_provider_principal_tag

val aws_cognito_identity_pool_provider_principal_tag :
  ?id:string ->
  ?principal_tags:(string * string) list ->
  ?use_defaults:bool ->
  identity_pool_id:string ->
  identity_provider_name:string ->
  string ->
  unit
