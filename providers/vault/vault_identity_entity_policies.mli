(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_entity_policies

val vault_identity_entity_policies :
  ?exclusive:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  entity_id:string prop ->
  policies:string prop list ->
  unit ->
  vault_identity_entity_policies

val yojson_of_vault_identity_entity_policies : vault_identity_entity_policies -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  entity_id : string prop;
  entity_name : string prop;
  exclusive : bool prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?exclusive:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  entity_id:string prop ->
  policies:string prop list ->
  string ->
  t

val make :
  ?exclusive:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  entity_id:string prop ->
  policies:string prop list ->
  string ->
  t Tf_core.resource
