(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** kms_key_versions *)
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
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?type_:string prop ->
  ?encryption_config:encryption_config list ->
  ?timeouts:timeouts ->
  backup_id:string prop ->
  cluster_name:string prop ->
  location:string prop ->
  unit ->
  google_alloydb_backup

val yojson_of_google_alloydb_backup : google_alloydb_backup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  backup_id : string prop;
  cluster_name : string prop;
  cluster_uid : string prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  encryption_info : encryption_info list prop;
  etag : string prop;
  expiry_quantity : expiry_quantity list prop;
  expiry_time : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  size_bytes : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?type_:string prop ->
  ?encryption_config:encryption_config list ->
  ?timeouts:timeouts ->
  backup_id:string prop ->
  cluster_name:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?type_:string prop ->
  ?encryption_config:encryption_config list ->
  ?timeouts:timeouts ->
  backup_id:string prop ->
  cluster_name:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
