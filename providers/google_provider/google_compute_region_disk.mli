(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_disk__async_primary_disk
type google_compute_region_disk__disk_encryption_key
type google_compute_region_disk__guest_os_features
type google_compute_region_disk__source_snapshot_encryption_key
type google_compute_region_disk__timeouts
type google_compute_region_disk

val google_compute_region_disk :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?licenses:string prop list ->
  ?physical_block_size_bytes:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?size:float prop ->
  ?snapshot:string prop ->
  ?source_disk:string prop ->
  ?type_:string prop ->
  ?timeouts:google_compute_region_disk__timeouts ->
  name:string prop ->
  replica_zones:string prop list ->
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
