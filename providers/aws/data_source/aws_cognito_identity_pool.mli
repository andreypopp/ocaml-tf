(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cognito_identity_providers = {
  client_id : string prop;  (** client_id *)
  provider_name : string prop;  (** provider_name *)
  server_side_token_check : bool prop;  (** server_side_token_check *)
}

type aws_cognito_identity_pool

val aws_cognito_identity_pool :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  identity_pool_name:string prop ->
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
  cognito_identity_providers : cognito_identity_providers list prop;
  developer_provider_name : string prop;
  id : string prop;
  identity_pool_name : string prop;
  openid_connect_provider_arns : string list prop;
  saml_provider_arns : string list prop;
  supported_login_providers : string Tf_core.assoc prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  identity_pool_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  identity_pool_name:string prop ->
  string ->
  t Tf_core.resource
