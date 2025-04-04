(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type hcloud_snapshot

val hcloud_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  server_id:float prop ->
  unit ->
  hcloud_snapshot

val yojson_of_hcloud_snapshot : hcloud_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  server_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  server_id:float prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  server_id:float prop ->
  string ->
  t Tf_core.resource
