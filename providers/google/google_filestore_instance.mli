(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type file_shares__nfs_export_options

val file_shares__nfs_export_options :
  ?access_mode:string prop ->
  ?anon_gid:float prop ->
  ?anon_uid:float prop ->
  ?ip_ranges:string prop list ->
  ?squash_mode:string prop ->
  unit ->
  file_shares__nfs_export_options

type file_shares

val file_shares :
  ?source_backup:string prop ->
  ?nfs_export_options:file_shares__nfs_export_options list ->
  capacity_gb:float prop ->
  name:string prop ->
  unit ->
  file_shares

type networks

val networks :
  ?connect_mode:string prop ->
  ?reserved_ip_range:string prop ->
  modes:string prop list ->
  network:string prop ->
  unit ->
  networks

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_filestore_instance

val google_filestore_instance :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  tier:string prop ->
  file_shares:file_shares list ->
  networks:networks list ->
  unit ->
  google_filestore_instance

val yojson_of_google_filestore_instance :
  google_filestore_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  tier:string prop ->
  file_shares:file_shares list ->
  networks:networks list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  tier:string prop ->
  file_shares:file_shares list ->
  networks:networks list ->
  string ->
  t Tf_core.resource
