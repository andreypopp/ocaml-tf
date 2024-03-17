(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cognito_identity_pool__cognito_identity_providers
type aws_cognito_identity_pool

type t = private {
  allow_classic_flow : bool prop;
  allow_unauthenticated_identities : bool prop;
  arn : string prop;
  developer_provider_name : string prop;
  id : string prop;
  identity_pool_name : string prop;
  openid_connect_provider_arns : string list prop;
  saml_provider_arns : string list prop;
  supported_login_providers : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_cognito_identity_pool :
  ?allow_classic_flow:bool prop ->
  ?allow_unauthenticated_identities:bool prop ->
  ?developer_provider_name:string prop ->
  ?id:string prop ->
  ?openid_connect_provider_arns:string prop list ->
  ?saml_provider_arns:string prop list ->
  ?supported_login_providers:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  identity_pool_name:string prop ->
  cognito_identity_providers:
    aws_cognito_identity_pool__cognito_identity_providers list ->
  string ->
  t
