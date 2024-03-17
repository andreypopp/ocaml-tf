(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_alloydb_backup__encryption_config
type google_alloydb_backup__timeouts

type google_alloydb_backup__encryption_info = {
  encryption_type : string;  (** encryption_type *)
  kms_key_versions : string list;  (** kms_key_versions *)
}
[@@deriving yojson_of]

type google_alloydb_backup__expiry_quantity = {
  retention_count : float;  (** retention_count *)
  total_retention_count : float;  (** total_retention_count *)
}
[@@deriving yojson_of]

type google_alloydb_backup

val google_alloydb_backup :
  ?annotations:(string * string) list ->
  ?description:string ->
  ?display_name:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_alloydb_backup__timeouts ->
  backup_id:string ->
  cluster_name:string ->
  location:string ->
  encryption_config:google_alloydb_backup__encryption_config list ->
  string ->
  unit
