(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_disk_async_replication__secondary_disk
type google_compute_disk_async_replication__timeouts
type google_compute_disk_async_replication

val google_compute_disk_async_replication :
  ?id:string ->
  ?timeouts:google_compute_disk_async_replication__timeouts ->
  primary_disk:string ->
  secondary_disk:
    google_compute_disk_async_replication__secondary_disk list ->
  string ->
  unit
