(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cognito_identity_providers

val cognito_identity_providers :
  ?client_id:string prop ->
  ?provider_name:string prop ->
  ?server_side_token_check:bool prop ->
  unit ->
  cognito_identity_providers

type aws_cognito_identity_pool

val aws_cognito_identity_pool :
  ?allow_classic_flow:bool prop ->
  ?allow_unauthenticated_identities:bool prop ->
  ?developer_provider_name:string prop ->
  ?id:string prop ->
  ?openid_connect_provider_arns:string prop list ->
  ?saml_provider_arns:string prop list ->
  ?supported_login_providers:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  identity_pool_name:string prop ->
  cognito_identity_providers:cognito_identity_providers list ->
  unit ->
  aws_cognito_identity_pool

val yojson_of_aws_cognito_identity_pool :
  aws_cognito_identity_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_classic_flow : bool prop;
  allow_unauthenticated_identities : bool prop;
  arn : string prop;
  developer_provider_name : string prop;
  id : string prop;
  identity_pool_name : string prop;
  openid_connect_provider_arns : string list prop;
  saml_provider_arns : string list prop;
  supported_login_providers : string Tf_core.assoc prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_classic_flow:bool prop ->
  ?allow_unauthenticated_identities:bool prop ->
  ?developer_provider_name:string prop ->
  ?id:string prop ->
  ?openid_connect_provider_arns:string prop list ->
  ?saml_provider_arns:string prop list ->
  ?supported_login_providers:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  identity_pool_name:string prop ->
  cognito_identity_providers:cognito_identity_providers list ->
  string ->
  t

val make :
  ?allow_classic_flow:bool prop ->
  ?allow_unauthenticated_identities:bool prop ->
  ?developer_provider_name:string prop ->
  ?id:string prop ->
  ?openid_connect_provider_arns:string prop list ->
  ?saml_provider_arns:string prop list ->
  ?supported_login_providers:string prop Tf_core.assoc ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  identity_pool_name:string prop ->
  cognito_identity_providers:cognito_identity_providers list ->
  string ->
  t Tf_core.resource
