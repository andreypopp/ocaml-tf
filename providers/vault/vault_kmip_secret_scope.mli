(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kmip_secret_scope

val vault_kmip_secret_scope :
  ?force:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  path:string prop ->
  scope:string prop ->
  unit ->
  vault_kmip_secret_scope

val yojson_of_vault_kmip_secret_scope : vault_kmip_secret_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  force : bool prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  path:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?force:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  path:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
