(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_identity_provider

val aws_cognito_identity_provider :
  ?attribute_mapping:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?idp_identifiers:string prop list ->
  provider_details:string prop Tf_core.assoc ->
  provider_name:string prop ->
  provider_type:string prop ->
  user_pool_id:string prop ->
  unit ->
  aws_cognito_identity_provider

val yojson_of_aws_cognito_identity_provider :
  aws_cognito_identity_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  attribute_mapping : string Tf_core.assoc prop;
  id : string prop;
  idp_identifiers : string list prop;
  provider_details : string Tf_core.assoc prop;
  provider_name : string prop;
  provider_type : string prop;
  user_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?attribute_mapping:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?idp_identifiers:string prop list ->
  provider_details:string prop Tf_core.assoc ->
  provider_name:string prop ->
  provider_type:string prop ->
  user_pool_id:string prop ->
  string ->
  t

val make :
  ?attribute_mapping:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?idp_identifiers:string prop list ->
  provider_details:string prop Tf_core.assoc ->
  provider_name:string prop ->
  provider_type:string prop ->
  user_pool_id:string prop ->
  string ->
  t Tf_core.resource
