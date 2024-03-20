(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** PROVIDER SERIALIZATION *)

type hcloud

val hcloud :
  ?endpoint:string prop ->
  ?poll_function:string prop ->
  ?poll_interval:string prop ->
  ?token:string prop ->
  unit ->
  hcloud

val yojson_of_hcloud : hcloud -> json

(** PROVIDER REGISTRATION *)

val register :
  ?tf_module:tf_module ->
  ?endpoint:string prop ->
  ?poll_function:string prop ->
  ?poll_interval:string prop ->
  ?token:string prop ->
  version:string ->
  unit ->
  unit

val make :
  ?endpoint:string prop ->
  ?poll_function:string prop ->
  ?poll_interval:string prop ->
  ?token:string prop ->
  unit ->
  Tf_core.provider
