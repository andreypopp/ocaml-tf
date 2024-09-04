(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_image

val google_compute_image :
  ?family:string prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  unit ->
  google_compute_image

val yojson_of_google_compute_image : google_compute_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  archive_size_bytes : float prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  family : string prop;
  filter : string prop;
  id : string prop;
  image_encryption_key_sha256 : string prop;
  image_id : string prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  licenses : string list prop;
  most_recent : bool prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  source_disk : string prop;
  source_disk_encryption_key_sha256 : string prop;
  source_disk_id : string prop;
  source_image_id : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?family:string prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?family:string prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
