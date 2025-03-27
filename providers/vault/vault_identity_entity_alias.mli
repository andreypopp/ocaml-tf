(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_entity_alias

val vault_identity_entity_alias :
  ?custom_metadata:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?namespace:string prop ->
  canonical_id:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  unit ->
  vault_identity_entity_alias

val yojson_of_vault_identity_entity_alias : vault_identity_entity_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  canonical_id : string prop;
  custom_metadata : string Tf_core.assoc prop;
  id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_metadata:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?namespace:string prop ->
  canonical_id:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?custom_metadata:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?namespace:string prop ->
  canonical_id:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
