(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_entity

val vault_identity_entity :
  ?disabled:bool prop ->
  ?external_policies:bool prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  unit ->
  vault_identity_entity

val yojson_of_vault_identity_entity : vault_identity_entity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disabled : bool prop;
  external_policies : bool prop;
  id : string prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  namespace : string prop;
  policies : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled:bool prop ->
  ?external_policies:bool prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  string ->
  t

val make :
  ?disabled:bool prop ->
  ?external_policies:bool prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  ?policies:string prop list ->
  string ->
  t Tf_core.resource
