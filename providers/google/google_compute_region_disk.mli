(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_disk__async_primary_disk
type google_compute_region_disk__disk_encryption_key
type google_compute_region_disk__guest_os_features
type google_compute_region_disk__source_snapshot_encryption_key
type google_compute_region_disk__timeouts
type google_compute_region_disk

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  last_attach_timestamp : string prop;
  last_detach_timestamp : string prop;
  licenses : string list prop;
  name : string prop;
  physical_block_size_bytes : float prop;
  project : string prop;
  region : string prop;
  replica_zones : string list prop;
  self_link : string prop;
  size : float prop;
  snapshot : string prop;
  source_disk : string prop;
  source_disk_id : string prop;
  source_snapshot_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  users : string list prop;
}

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
  t
