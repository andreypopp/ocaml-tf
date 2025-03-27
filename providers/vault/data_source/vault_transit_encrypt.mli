(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transit_encrypt

val vault_transit_encrypt :
  ?context:string prop ->
  ?id:string prop ->
  ?key_version:float prop ->
  ?namespace:string prop ->
  backend:string prop ->
  key:string prop ->
  plaintext:string prop ->
  unit ->
  vault_transit_encrypt

val yojson_of_vault_transit_encrypt : vault_transit_encrypt -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  ciphertext : string prop;
  context : string prop;
  id : string prop;
  key : string prop;
  key_version : float prop;
  namespace : string prop;
  plaintext : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?context:string prop ->
  ?id:string prop ->
  ?key_version:float prop ->
  ?namespace:string prop ->
  backend:string prop ->
  key:string prop ->
  plaintext:string prop ->
  string ->
  t

val make :
  ?context:string prop ->
  ?id:string prop ->
  ?key_version:float prop ->
  ?namespace:string prop ->
  backend:string prop ->
  key:string prop ->
  plaintext:string prop ->
  string ->
  t Tf_core.resource
