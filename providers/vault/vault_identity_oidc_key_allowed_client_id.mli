(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_key_allowed_client_id

val vault_identity_oidc_key_allowed_client_id :
  ?id:string prop ->
  ?namespace:string prop ->
  allowed_client_id:string prop ->
  key_name:string prop ->
  unit ->
  vault_identity_oidc_key_allowed_client_id

val yojson_of_vault_identity_oidc_key_allowed_client_id : vault_identity_oidc_key_allowed_client_id -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_client_id : string prop;
  id : string prop;
  key_name : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  allowed_client_id:string prop ->
  key_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  allowed_client_id:string prop ->
  key_name:string prop ->
  string ->
  t Tf_core.resource
