(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type async_primary_disk

val async_primary_disk :
  disk:string prop -> unit -> async_primary_disk

type disk_encryption_key

val disk_encryption_key :
  ?kms_key_name:string prop ->
  ?raw_key:string prop ->
  unit ->
  disk_encryption_key

type guest_os_features

val guest_os_features :
  type_:string prop -> unit -> guest_os_features

type source_snapshot_encryption_key

val source_snapshot_encryption_key :
  ?raw_key:string prop -> unit -> source_snapshot_encryption_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_region_disk

val google_compute_region_disk :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?licenses:string prop list ->
  ?physical_block_size_bytes:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?size:float prop ->
  ?snapshot:string prop ->
  ?source_disk:string prop ->
  ?type_:string prop ->
  ?async_primary_disk:async_primary_disk list ->
  ?disk_encryption_key:disk_encryption_key list ->
  ?source_snapshot_encryption_key:source_snapshot_encryption_key list ->
  ?timeouts:timeouts ->
  name:string prop ->
  replica_zones:string prop list ->
  guest_os_features:guest_os_features list ->
  unit ->
  google_compute_region_disk

val yojson_of_google_compute_region_disk :
  google_compute_region_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
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
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?licenses:string prop list ->
  ?physical_block_size_bytes:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?size:float prop ->
  ?snapshot:string prop ->
  ?source_disk:string prop ->
  ?type_:string prop ->
  ?async_primary_disk:async_primary_disk list ->
  ?disk_encryption_key:disk_encryption_key list ->
  ?source_snapshot_encryption_key:source_snapshot_encryption_key list ->
  ?timeouts:timeouts ->
  name:string prop ->
  replica_zones:string prop list ->
  guest_os_features:guest_os_features list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?licenses:string prop list ->
  ?physical_block_size_bytes:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?size:float prop ->
  ?snapshot:string prop ->
  ?source_disk:string prop ->
  ?type_:string prop ->
  ?async_primary_disk:async_primary_disk list ->
  ?disk_encryption_key:disk_encryption_key list ->
  ?source_snapshot_encryption_key:source_snapshot_encryption_key list ->
  ?timeouts:timeouts ->
  name:string prop ->
  replica_zones:string prop list ->
  guest_os_features:guest_os_features list ->
  string ->
  t Tf_core.resource
