(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type trusted_token_issuer_configuration__oidc_jwt_configuration

val trusted_token_issuer_configuration__oidc_jwt_configuration :
  claim_attribute_path:string prop ->
  identity_store_attribute_path:string prop ->
  issuer_url:string prop ->
  jwks_retrieval_option:string prop ->
  unit ->
  trusted_token_issuer_configuration__oidc_jwt_configuration

type trusted_token_issuer_configuration

val trusted_token_issuer_configuration :
  oidc_jwt_configuration:
    trusted_token_issuer_configuration__oidc_jwt_configuration list ->
  unit ->
  trusted_token_issuer_configuration

type aws_ssoadmin_trusted_token_issuer

val aws_ssoadmin_trusted_token_issuer :
  ?client_token:string prop ->
  ?tags:(string * string prop) list ->
  instance_arn:string prop ->
  name:string prop ->
  trusted_token_issuer_type:string prop ->
  trusted_token_issuer_configuration:
    trusted_token_issuer_configuration list ->
  unit ->
  aws_ssoadmin_trusted_token_issuer

val yojson_of_aws_ssoadmin_trusted_token_issuer :
  aws_ssoadmin_trusted_token_issuer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  client_token : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trusted_token_issuer_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_token:string prop ->
  ?tags:(string * string prop) list ->
  instance_arn:string prop ->
  name:string prop ->
  trusted_token_issuer_type:string prop ->
  trusted_token_issuer_configuration:
    trusted_token_issuer_configuration list ->
  string ->
  t

val make :
  ?client_token:string prop ->
  ?tags:(string * string prop) list ->
  instance_arn:string prop ->
  name:string prop ->
  trusted_token_issuer_type:string prop ->
  trusted_token_issuer_configuration:
    trusted_token_issuer_configuration list ->
  string ->
  t Tf_core.resource
