(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type file_shares__nfs_export_options = {
  access_mode : string prop;  (** access_mode *)
  anon_gid : float prop;  (** anon_gid *)
  anon_uid : float prop;  (** anon_uid *)
  ip_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_ranges *)
  squash_mode : string prop;  (** squash_mode *)
}

type file_shares = {
  capacity_gb : float prop;  (** capacity_gb *)
  name : string prop;  (** name *)
  nfs_export_options : file_shares__nfs_export_options list;
      [@default []] [@yojson_drop_default ( = )]
      (** nfs_export_options *)
  source_backup : string prop;  (** source_backup *)
}

type networks = {
  connect_mode : string prop;  (** connect_mode *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_addresses *)
  modes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** modes *)
  network : string prop;  (** network *)
  reserved_ip_range : string prop;  (** reserved_ip_range *)
}

type google_filestore_instance

val google_filestore_instance :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_filestore_instance

val yojson_of_google_filestore_instance :
  google_filestore_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  file_shares : file_shares list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  networks : networks list prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
