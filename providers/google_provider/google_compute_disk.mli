(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_disk__async_primary_disk
type google_compute_disk__disk_encryption_key
type google_compute_disk__guest_os_features
type google_compute_disk__source_image_encryption_key
type google_compute_disk__source_snapshot_encryption_key
type google_compute_disk__timeouts
type google_compute_disk

val google_compute_disk :
  ?description:string ->
  ?enable_confidential_compute:bool ->
  ?id:string ->
  ?image:string ->
  ?labels:(string * string) list ->
  ?licenses:string list ->
  ?physical_block_size_bytes:float ->
  ?project:string ->
  ?provisioned_iops:float ->
  ?provisioned_throughput:float ->
  ?size:float ->
  ?snapshot:string ->
  ?source_disk:string ->
  ?type_:string ->
  ?zone:string ->
  ?timeouts:google_compute_disk__timeouts ->
  name:string ->
  async_primary_disk:google_compute_disk__async_primary_disk list ->
  disk_encryption_key:google_compute_disk__disk_encryption_key list ->
  guest_os_features:google_compute_disk__guest_os_features list ->
  source_image_encryption_key:
    google_compute_disk__source_image_encryption_key list ->
  source_snapshot_encryption_key:
    google_compute_disk__source_snapshot_encryption_key list ->
  string ->
  unit
