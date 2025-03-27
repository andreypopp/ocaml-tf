(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_group

val vault_identity_group :
  ?alias_id:string prop ->
  ?alias_mount_accessor:string prop ->
  ?alias_name:string prop ->
  ?group_id:string prop ->
  ?group_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  unit ->
  vault_identity_group

val yojson_of_vault_identity_group : vault_identity_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias_canonical_id : string prop;
  alias_creation_time : string prop;
  alias_id : string prop;
  alias_last_update_time : string prop;
  alias_merged_from_canonical_ids : string list prop;
  alias_metadata : string Tf_core.assoc prop;
  alias_mount_accessor : string prop;
  alias_mount_path : string prop;
  alias_mount_type : string prop;
  alias_name : string prop;
  creation_time : string prop;
  data_json : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  last_update_time : string prop;
  member_entity_ids : string list prop;
  member_group_ids : string list prop;
  metadata : string Tf_core.assoc prop;
  modify_index : float prop;
  namespace : string prop;
  namespace_id : string prop;
  parent_group_ids : string list prop;
  policies : string list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias_id:string prop ->
  ?alias_mount_accessor:string prop ->
  ?alias_name:string prop ->
  ?group_id:string prop ->
  ?group_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  string ->
  t

val make :
  ?alias_id:string prop ->
  ?alias_mount_accessor:string prop ->
  ?alias_name:string prop ->
  ?group_id:string prop ->
  ?group_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  string ->
  t Tf_core.resource
