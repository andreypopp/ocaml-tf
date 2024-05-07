(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type snapshot_encryption_key = {
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  kms_key_service_account : string prop;
      (** kms_key_service_account *)
  raw_key : string prop;  (** raw_key *)
  sha256 : string prop;  (** sha256 *)
}

type source_disk_encryption_key = {
  kms_key_service_account : string prop;
      (** kms_key_service_account *)
  raw_key : string prop;  (** raw_key *)
}

type google_compute_snapshot

val google_compute_snapshot :
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  unit ->
  google_compute_snapshot

val yojson_of_google_compute_snapshot :
  google_compute_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  chain_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  effective_labels : (string * string) list prop;
  filter : string prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  licenses : string list prop;
  most_recent : bool prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  snapshot_encryption_key : snapshot_encryption_key list prop;
  snapshot_id : float prop;
  source_disk : string prop;
  source_disk_encryption_key : source_disk_encryption_key list prop;
  storage_bytes : float prop;
  storage_locations : string list prop;
  terraform_labels : (string * string) list prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
