(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_identity_provider

val aws_cognito_identity_provider :
  ?attribute_mapping:(string * string prop) list ->
  ?id:string prop ->
  ?idp_identifiers:string prop list ->
  provider_details:(string * string prop) list ->
  provider_name:string prop ->
  provider_type:string prop ->
  user_pool_id:string prop ->
  string ->
  unit
