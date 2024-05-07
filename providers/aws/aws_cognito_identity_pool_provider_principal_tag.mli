(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_identity_pool_provider_principal_tag

val aws_cognito_identity_pool_provider_principal_tag :
  ?id:string prop ->
  ?principal_tags:(string * string prop) list ->
  ?use_defaults:bool prop ->
  identity_pool_id:string prop ->
  identity_provider_name:string prop ->
  unit ->
  aws_cognito_identity_pool_provider_principal_tag

val yojson_of_aws_cognito_identity_pool_provider_principal_tag :
  aws_cognito_identity_pool_provider_principal_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  identity_pool_id : string prop;
  identity_provider_name : string prop;
  principal_tags : (string * string) list prop;
  use_defaults : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?principal_tags:(string * string prop) list ->
  ?use_defaults:bool prop ->
  identity_pool_id:string prop ->
  identity_provider_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?principal_tags:(string * string prop) list ->
  ?use_defaults:bool prop ->
  identity_pool_id:string prop ->
  identity_provider_name:string prop ->
  string ->
  t Tf_core.resource
