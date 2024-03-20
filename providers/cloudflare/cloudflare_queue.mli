(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_queue

val cloudflare_queue :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  unit ->
  cloudflare_queue

val yojson_of_cloudflare_queue : cloudflare_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
