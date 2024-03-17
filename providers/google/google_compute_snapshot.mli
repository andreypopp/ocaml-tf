(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_snapshot__snapshot_encryption_key
type google_compute_snapshot__source_disk_encryption_key
type google_compute_snapshot__timeouts
type google_compute_snapshot

type t = private {
  chain_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  licenses : string list prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  snapshot_id : float prop;
  source_disk : string prop;
  storage_bytes : float prop;
  storage_locations : string list prop;
  terraform_labels : (string * string) list prop;
  zone : string prop;
}

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
  t
