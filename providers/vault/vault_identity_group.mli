(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_group

val vault_identity_group :
  ?external_member_entity_ids:bool prop ->
  ?external_member_group_ids:bool prop ->
  ?external_policies:bool prop ->
  ?id:string prop ->
  ?member_entity_ids:string prop list ->
  ?member_group_ids:string prop list ->
  ?metadata:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  ?type_:string prop ->
  unit ->
  vault_identity_group

val yojson_of_vault_identity_group : vault_identity_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  external_member_entity_ids : bool prop;
  external_member_group_ids : bool prop;
  external_policies : bool prop;
  id : string prop;
  member_entity_ids : string list prop;
  member_group_ids : string list prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  namespace : string prop;
  policies : string list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?external_member_entity_ids:bool prop ->
  ?external_member_group_ids:bool prop ->
  ?external_policies:bool prop ->
  ?id:string prop ->
  ?member_entity_ids:string prop list ->
  ?member_group_ids:string prop list ->
  ?metadata:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  ?type_:string prop ->
  string ->
  t

val make :
  ?external_member_entity_ids:bool prop ->
  ?external_member_group_ids:bool prop ->
  ?external_policies:bool prop ->
  ?id:string prop ->
  ?member_entity_ids:string prop list ->
  ?member_group_ids:string prop list ->
  ?metadata:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  ?type_:string prop ->
  string ->
  t Tf_core.resource
