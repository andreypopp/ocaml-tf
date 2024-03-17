(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_alloydb_backup__encryption_config
type google_alloydb_backup__timeouts

type google_alloydb_backup__encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;  (** kms_key_versions *)
}

type google_alloydb_backup__expiry_quantity = {
  retention_count : float prop;  (** retention_count *)
  total_retention_count : float prop;  (** total_retention_count *)
}

type google_alloydb_backup

val google_alloydb_backup :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:google_alloydb_backup__timeouts ->
  backup_id:string prop ->
  cluster_name:string prop ->
  location:string prop ->
  encryption_config:google_alloydb_backup__encryption_config list ->
  string ->
  unit
