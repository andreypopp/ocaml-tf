(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_group_alias

val vault_identity_group_alias :
  ?id:string prop ->
  ?namespace:string prop ->
  canonical_id:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  unit ->
  vault_identity_group_alias

val yojson_of_vault_identity_group_alias : vault_identity_group_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  canonical_id : string prop;
  id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  canonical_id:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  canonical_id:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
