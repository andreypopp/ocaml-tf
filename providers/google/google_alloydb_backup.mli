(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;  (** kms_key_versions *)
}

type expiry_quantity = {
  retention_count : float prop;  (** retention_count *)
  total_retention_count : float prop;  (** total_retention_count *)
}

type encryption_config

val encryption_config :
  ?kms_key_name:string prop -> unit -> encryption_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_alloydb_backup

val google_alloydb_backup :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  backup_id:string prop ->
  cluster_name:string prop ->
  location:string prop ->
  encryption_config:encryption_config list ->
  unit ->
  google_alloydb_backup

val yojson_of_google_alloydb_backup : google_alloydb_backup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : (string * string) list prop;
  backup_id : string prop;
  cluster_name : string prop;
  cluster_uid : string prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  encryption_info : encryption_info list prop;
  etag : string prop;
  expiry_quantity : expiry_quantity list prop;
  expiry_time : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  size_bytes : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  backup_id:string prop ->
  cluster_name:string prop ->
  location:string prop ->
  encryption_config:encryption_config list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  backup_id:string prop ->
  cluster_name:string prop ->
  location:string prop ->
  encryption_config:encryption_config list ->
  string ->
  t Tf_core.resource
