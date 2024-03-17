(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_image__guest_os_features
type google_compute_image__image_encryption_key
type google_compute_image__raw_disk
type google_compute_image__timeouts
type google_compute_image

type t = private {
  archive_size_bytes : float prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  effective_labels : (string * string) list prop;
  family : string prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  licenses : string list prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  source_disk : string prop;
  source_image : string prop;
  source_snapshot : string prop;
  storage_locations : string list prop;
  terraform_labels : (string * string) list prop;
}

val google_compute_image :
  ?description:string prop ->
  ?disk_size_gb:float prop ->
  ?family:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?licenses:string prop list ->
  ?project:string prop ->
  ?source_disk:string prop ->
  ?source_image:string prop ->
  ?source_snapshot:string prop ->
  ?storage_locations:string prop list ->
  ?timeouts:google_compute_image__timeouts ->
  name:string prop ->
  guest_os_features:google_compute_image__guest_os_features list ->
  image_encryption_key:
    google_compute_image__image_encryption_key list ->
  raw_disk:google_compute_image__raw_disk list ->
  string ->
  t
