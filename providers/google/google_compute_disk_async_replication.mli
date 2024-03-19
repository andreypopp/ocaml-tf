(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type secondary_disk

val secondary_disk : disk:string prop -> unit -> secondary_disk

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_disk_async_replication

val google_compute_disk_async_replication :
  ?id:string prop ->
  ?timeouts:timeouts ->
  primary_disk:string prop ->
  secondary_disk:secondary_disk list ->
  unit ->
  google_compute_disk_async_replication

val yojson_of_google_compute_disk_async_replication :
  google_compute_disk_async_replication -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; primary_disk : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  primary_disk:string prop ->
  secondary_disk:secondary_disk list ->
  string ->
  t
