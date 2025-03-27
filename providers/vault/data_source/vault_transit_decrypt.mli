(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transit_decrypt

val vault_transit_decrypt :
  ?context:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  ciphertext:string prop ->
  key:string prop ->
  unit ->
  vault_transit_decrypt

val yojson_of_vault_transit_decrypt : vault_transit_decrypt -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  ciphertext : string prop;
  context : string prop;
  id : string prop;
  key : string prop;
  namespace : string prop;
  plaintext : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?context:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  ciphertext:string prop ->
  key:string prop ->
  string ->
  t

val make :
  ?context:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  ciphertext:string prop ->
  key:string prop ->
  string ->
  t Tf_core.resource
