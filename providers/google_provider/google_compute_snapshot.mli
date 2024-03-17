(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_snapshot__snapshot_encryption_key
type google_compute_snapshot__source_disk_encryption_key
type google_compute_snapshot__timeouts
type google_compute_snapshot

val google_compute_snapshot :
  ?chain_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?storage_locations:string prop list ->
  ?zone:string prop ->
  ?timeouts:google_compute_snapshot__timeouts ->
  name:string prop ->
  source_disk:string prop ->
  snapshot_encryption_key:
    google_compute_snapshot__snapshot_encryption_key list ->
  source_disk_encryption_key:
    google_compute_snapshot__source_disk_encryption_key list ->
  string ->
  unit
