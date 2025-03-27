(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aliases = {
  canonical_id : string prop;  (** canonical_id *)
  creation_time : string prop;  (** creation_time *)
  id : string prop;  (** id *)
  last_update_time : string prop;  (** last_update_time *)
  merged_from_canonical_ids : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
    (** merged_from_canonical_ids *)
  metadata : string prop Tf_core.assoc;  (** metadata *)
  mount_accessor : string prop;  (** mount_accessor *)
  mount_path : string prop;  (** mount_path *)
  mount_type : string prop;  (** mount_type *)
  name : string prop;  (** name *)
}

type vault_identity_entity

val vault_identity_entity :
  ?alias_id:string prop ->
  ?alias_mount_accessor:string prop ->
  ?alias_name:string prop ->
  ?entity_id:string prop ->
  ?entity_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  unit ->
  vault_identity_entity

val yojson_of_vault_identity_entity : vault_identity_entity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias_id : string prop;
  alias_mount_accessor : string prop;
  alias_name : string prop;
  aliases : aliases list prop;
  creation_time : string prop;
  data_json : string prop;
  direct_group_ids : string list prop;
  disabled : bool prop;
  entity_id : string prop;
  entity_name : string prop;
  group_ids : string list prop;
  id : string prop;
  inherited_group_ids : string list prop;
  last_update_time : string prop;
  merged_entity_ids : string list prop;
  metadata : string Tf_core.assoc prop;
  namespace : string prop;
  namespace_id : string prop;
  policies : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias_id:string prop ->
  ?alias_mount_accessor:string prop ->
  ?alias_name:string prop ->
  ?entity_id:string prop ->
  ?entity_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  string ->
  t

val make :
  ?alias_id:string prop ->
  ?alias_mount_accessor:string prop ->
  ?alias_name:string prop ->
  ?entity_id:string prop ->
  ?entity_name:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  string ->
  t Tf_core.resource
