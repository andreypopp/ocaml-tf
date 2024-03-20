(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type async_primary_disk

val async_primary_disk :
  disk:string prop -> unit -> async_primary_disk

type disk_encryption_key

val disk_encryption_key :
  ?kms_key_self_link:string prop ->
  ?kms_key_service_account:string prop ->
  ?raw_key:string prop ->
  ?rsa_encrypted_key:string prop ->
  unit ->
  disk_encryption_key

type guest_os_features

val guest_os_features :
  type_:string prop -> unit -> guest_os_features

type source_image_encryption_key

val source_image_encryption_key :
  ?kms_key_self_link:string prop ->
  ?kms_key_service_account:string prop ->
  ?raw_key:string prop ->
  unit ->
  source_image_encryption_key

type source_snapshot_encryption_key

val source_snapshot_encryption_key :
  ?kms_key_self_link:string prop ->
  ?kms_key_service_account:string prop ->
  ?raw_key:string prop ->
  unit ->
  source_snapshot_encryption_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_disk

val google_compute_disk :
  ?description:string prop ->
  ?enable_confidential_compute:bool prop ->
  ?id:string prop ->
  ?image:string prop ->
  ?labels:(string * string prop) list ->
  ?licenses:string prop list ->
  ?physical_block_size_bytes:float prop ->
  ?project:string prop ->
  ?provisioned_iops:float prop ->
  ?provisioned_throughput:float prop ->
  ?size:float prop ->
  ?snapshot:string prop ->
  ?source_disk:string prop ->
  ?type_:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  async_primary_disk:async_primary_disk list ->
  disk_encryption_key:disk_encryption_key list ->
  guest_os_features:guest_os_features list ->
  source_image_encryption_key:source_image_encryption_key list ->
  source_snapshot_encryption_key:source_snapshot_encryption_key list ->
  unit ->
  google_compute_disk

val yojson_of_google_compute_disk : google_compute_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  disk_id : string prop;
  effective_labels : (string * string) list prop;
  enable_confidential_compute : bool prop;
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
  source_image_id : string prop;
  source_snapshot_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  users : string list prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enable_confidential_compute:bool prop ->
  ?id:string prop ->
  ?image:string prop ->
  ?labels:(string * string prop) list ->
  ?licenses:string prop list ->
  ?physical_block_size_bytes:float prop ->
  ?project:string prop ->
  ?provisioned_iops:float prop ->
  ?provisioned_throughput:float prop ->
  ?size:float prop ->
  ?snapshot:string prop ->
  ?source_disk:string prop ->
  ?type_:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  async_primary_disk:async_primary_disk list ->
  disk_encryption_key:disk_encryption_key list ->
  guest_os_features:guest_os_features list ->
  source_image_encryption_key:source_image_encryption_key list ->
  source_snapshot_encryption_key:source_snapshot_encryption_key list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enable_confidential_compute:bool prop ->
  ?id:string prop ->
  ?image:string prop ->
  ?labels:(string * string prop) list ->
  ?licenses:string prop list ->
  ?physical_block_size_bytes:float prop ->
  ?project:string prop ->
  ?provisioned_iops:float prop ->
  ?provisioned_throughput:float prop ->
  ?size:float prop ->
  ?snapshot:string prop ->
  ?source_disk:string prop ->
  ?type_:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  async_primary_disk:async_primary_disk list ->
  disk_encryption_key:disk_encryption_key list ->
  guest_os_features:guest_os_features list ->
  source_image_encryption_key:source_image_encryption_key list ->
  source_snapshot_encryption_key:source_snapshot_encryption_key list ->
  string ->
  t Tf_core.resource
