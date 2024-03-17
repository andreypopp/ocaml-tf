(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_identity_pool_provider_principal_tag

val aws_cognito_identity_pool_provider_principal_tag :
  ?id:string prop ->
  ?principal_tags:(string * string prop) list ->
  ?use_defaults:bool prop ->
  identity_pool_id:string prop ->
  identity_provider_name:string prop ->
  string ->
  unit
