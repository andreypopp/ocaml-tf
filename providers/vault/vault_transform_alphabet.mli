(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transform_alphabet

val vault_transform_alphabet :
  ?alphabet:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  path:string prop ->
  unit ->
  vault_transform_alphabet

val yojson_of_vault_transform_alphabet : vault_transform_alphabet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alphabet : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alphabet:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?alphabet:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
