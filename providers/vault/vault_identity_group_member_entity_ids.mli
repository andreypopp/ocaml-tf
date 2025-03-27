(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_group_member_entity_ids

val vault_identity_group_member_entity_ids :
  ?exclusive:bool prop ->
  ?id:string prop ->
  ?member_entity_ids:string prop list ->
  ?namespace:string prop ->
  group_id:string prop ->
  unit ->
  vault_identity_group_member_entity_ids

val yojson_of_vault_identity_group_member_entity_ids : vault_identity_group_member_entity_ids -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  exclusive : bool prop;
  group_id : string prop;
  id : string prop;
  member_entity_ids : string list prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?exclusive:bool prop ->
  ?id:string prop ->
  ?member_entity_ids:string prop list ->
  ?namespace:string prop ->
  group_id:string prop ->
  string ->
  t

val make :
  ?exclusive:bool prop ->
  ?id:string prop ->
  ?member_entity_ids:string prop list ->
  ?namespace:string prop ->
  group_id:string prop ->
  string ->
  t Tf_core.resource
