(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_assignment

val vault_identity_oidc_assignment :
  ?entity_ids:string prop list ->
  ?group_ids:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  unit ->
  vault_identity_oidc_assignment

val yojson_of_vault_identity_oidc_assignment : vault_identity_oidc_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  entity_ids : string list prop;
  group_ids : string list prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?entity_ids:string prop list ->
  ?group_ids:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?entity_ids:string prop list ->
  ?group_ids:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
