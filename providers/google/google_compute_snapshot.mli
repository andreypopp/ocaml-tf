(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type snapshot_encryption_key

val snapshot_encryption_key :
  ?kms_key_self_link:string prop ->
  ?kms_key_service_account:string prop ->
  ?raw_key:string prop ->
  unit ->
  snapshot_encryption_key

type source_disk_encryption_key

val source_disk_encryption_key :
  ?kms_key_service_account:string prop ->
  ?raw_key:string prop ->
  unit ->
  source_disk_encryption_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_snapshot

val google_compute_snapshot :
  ?chain_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?storage_locations:string prop list ->
  ?zone:string prop ->
  ?snapshot_encryption_key:snapshot_encryption_key list ->
  ?source_disk_encryption_key:source_disk_encryption_key list ->
  ?timeouts:timeouts ->
  name:string prop ->
  source_disk:string prop ->
  unit ->
  google_compute_snapshot

val yojson_of_google_compute_snapshot :
  google_compute_snapshot -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?chain_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?storage_locations:string prop list ->
  ?zone:string prop ->
  ?snapshot_encryption_key:snapshot_encryption_key list ->
  ?source_disk_encryption_key:source_disk_encryption_key list ->
  ?timeouts:timeouts ->
  name:string prop ->
  source_disk:string prop ->
  string ->
  t

val make :
  ?chain_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?storage_locations:string prop list ->
  ?zone:string prop ->
  ?snapshot_encryption_key:snapshot_encryption_key list ->
  ?source_disk_encryption_key:source_disk_encryption_key list ->
  ?timeouts:timeouts ->
  name:string prop ->
  source_disk:string prop ->
  string ->
  t Tf_core.resource
