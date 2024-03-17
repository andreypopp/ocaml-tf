(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_snapshot__snapshot_encryption_key
type google_compute_snapshot__source_disk_encryption_key
type google_compute_snapshot__timeouts
type google_compute_snapshot

val google_compute_snapshot :
  ?chain_name:string ->
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?storage_locations:string list ->
  ?zone:string ->
  ?timeouts:google_compute_snapshot__timeouts ->
  name:string ->
  source_disk:string ->
  snapshot_encryption_key:
    google_compute_snapshot__snapshot_encryption_key list ->
  source_disk_encryption_key:
    google_compute_snapshot__source_disk_encryption_key list ->
  string ->
  unit
