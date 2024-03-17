(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_identity_pool__cognito_identity_providers
type aws_cognito_identity_pool

val aws_cognito_identity_pool :
  ?allow_classic_flow:bool ->
  ?allow_unauthenticated_identities:bool ->
  ?developer_provider_name:string ->
  ?id:string ->
  ?openid_connect_provider_arns:string list ->
  ?saml_provider_arns:string list ->
  ?supported_login_providers:(string * string) list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  identity_pool_name:string ->
  cognito_identity_providers:
    aws_cognito_identity_pool__cognito_identity_providers list ->
  string ->
  unit
