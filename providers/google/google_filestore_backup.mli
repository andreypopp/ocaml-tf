(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_filestore_backup

val google_filestore_backup :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  source_file_share:string prop ->
  source_instance:string prop ->
  unit ->
  google_filestore_backup

val yojson_of_google_filestore_backup :
  google_filestore_backup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  capacity_gb : string prop;
  create_time : string prop;
  description : string prop;
  download_bytes : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  kms_key_name : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  source_file_share : string prop;
  source_instance : string prop;
  source_instance_tier : string prop;
  state : string prop;
  storage_bytes : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  source_file_share:string prop ->
  source_instance:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  source_file_share:string prop ->
  source_instance:string prop ->
  string ->
  t Tf_core.resource
