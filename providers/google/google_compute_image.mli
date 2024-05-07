(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type guest_os_features

val guest_os_features :
  type_:string prop -> unit -> guest_os_features

type image_encryption_key

val image_encryption_key :
  ?kms_key_self_link:string prop ->
  ?kms_key_service_account:string prop ->
  unit ->
  image_encryption_key

type raw_disk

val raw_disk :
  ?container_type:string prop ->
  ?sha1:string prop ->
  source:string prop ->
  unit ->
  raw_disk

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_image

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
  ?image_encryption_key:image_encryption_key list ->
  ?raw_disk:raw_disk list ->
  ?timeouts:timeouts ->
  name:string prop ->
  guest_os_features:guest_os_features list ->
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

val register :
  ?tf_module:tf_module ->
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
  ?image_encryption_key:image_encryption_key list ->
  ?raw_disk:raw_disk list ->
  ?timeouts:timeouts ->
  name:string prop ->
  guest_os_features:guest_os_features list ->
  string ->
  t

val make :
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
  ?image_encryption_key:image_encryption_key list ->
  ?raw_disk:raw_disk list ->
  ?timeouts:timeouts ->
  name:string prop ->
  guest_os_features:guest_os_features list ->
  string ->
  t Tf_core.resource
