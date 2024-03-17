(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_filestore_backup__timeouts
type google_filestore_backup

type t = private {
  capacity_gb : string prop;
  create_time : string prop;
  description : string prop;
  download_bytes : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  source_file_share : string prop;
  source_instance : string prop;
  source_instance_tier : string prop;
  state : string prop;
  storage_bytes : string prop;
  terraform_labels : (string * string) list prop;
}

val google_filestore_backup :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_filestore_backup__timeouts ->
  location:string prop ->
  name:string prop ->
  source_file_share:string prop ->
  source_instance:string prop ->
  string ->
  t
