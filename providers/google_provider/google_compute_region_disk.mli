(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_disk__async_primary_disk
type google_compute_region_disk__disk_encryption_key
type google_compute_region_disk__guest_os_features
type google_compute_region_disk__source_snapshot_encryption_key
type google_compute_region_disk__timeouts
type google_compute_region_disk

val google_compute_region_disk :
  ?description:string ->
  ?labels:(string * string) list ->
  ?snapshot:string ->
  ?source_disk:string ->
  ?type_:string ->
  ?timeouts:google_compute_region_disk__timeouts ->
  name:string ->
  replica_zones:string list ->
  async_primary_disk:
    google_compute_region_disk__async_primary_disk list ->
  disk_encryption_key:
    google_compute_region_disk__disk_encryption_key list ->
  guest_os_features:
    google_compute_region_disk__guest_os_features list ->
  source_snapshot_encryption_key:
    google_compute_region_disk__source_snapshot_encryption_key list ->
  string ->
  unit
