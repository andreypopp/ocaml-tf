(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type async_primary_disk = { disk : string prop  (** disk *) }

type disk_encryption_key = {
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  kms_key_service_account : string prop;
      (** kms_key_service_account *)
  raw_key : string prop;  (** raw_key *)
  rsa_encrypted_key : string prop;  (** rsa_encrypted_key *)
  sha256 : string prop;  (** sha256 *)
}

type guest_os_features = {
  type_ : string prop; [@key "type"]  (** type *)
}

type source_image_encryption_key = {
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  kms_key_service_account : string prop;
      (** kms_key_service_account *)
  raw_key : string prop;  (** raw_key *)
  sha256 : string prop;  (** sha256 *)
}

type source_snapshot_encryption_key = {
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  kms_key_service_account : string prop;
      (** kms_key_service_account *)
  raw_key : string prop;  (** raw_key *)
  sha256 : string prop;  (** sha256 *)
}

type google_compute_disk

val google_compute_disk :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  name:string prop ->
  unit ->
  google_compute_disk

val yojson_of_google_compute_disk : google_compute_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  async_primary_disk : async_primary_disk list prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_encryption_key : disk_encryption_key list prop;
  disk_id : string prop;
  effective_labels : (string * string) list prop;
  enable_confidential_compute : bool prop;
  guest_os_features : guest_os_features list prop;
  id : string prop;
  image : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  last_attach_timestamp : string prop;
  last_detach_timestamp : string prop;
  licenses : string list prop;
  name : string prop;
  physical_block_size_bytes : float prop;
  project : string prop;
  provisioned_iops : float prop;
  provisioned_throughput : float prop;
  self_link : string prop;
  size : float prop;
  snapshot : string prop;
  source_disk : string prop;
  source_disk_id : string prop;
  source_image_encryption_key :
    source_image_encryption_key list prop;
  source_image_id : string prop;
  source_snapshot_encryption_key :
    source_snapshot_encryption_key list prop;
  source_snapshot_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  users : string list prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
