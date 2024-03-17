(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_alloydb_cluster__automated_backup_policy__encryption_config

type google_alloydb_cluster__automated_backup_policy__quantity_based_retention

type google_alloydb_cluster__automated_backup_policy__time_based_retention

type google_alloydb_cluster__automated_backup_policy__weekly_schedule__start_times

type google_alloydb_cluster__automated_backup_policy__weekly_schedule
type google_alloydb_cluster__automated_backup_policy

type google_alloydb_cluster__continuous_backup_config__encryption_config

type google_alloydb_cluster__continuous_backup_config
type google_alloydb_cluster__encryption_config
type google_alloydb_cluster__initial_user
type google_alloydb_cluster__network_config
type google_alloydb_cluster__restore_backup_source
type google_alloydb_cluster__restore_continuous_backup_source
type google_alloydb_cluster__secondary_config
type google_alloydb_cluster__timeouts

type google_alloydb_cluster__backup_source = {
  backup_name : string prop;  (** backup_name *)
}

type google_alloydb_cluster__continuous_backup_info__encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;  (** kms_key_versions *)
}

type google_alloydb_cluster__continuous_backup_info = {
  earliest_restorable_time : string prop;
      (** earliest_restorable_time *)
  enabled_time : string prop;  (** enabled_time *)
  encryption_info :
    google_alloydb_cluster__continuous_backup_info__encryption_info
    list;
      (** encryption_info *)
  schedule : string prop list;  (** schedule *)
}

type google_alloydb_cluster__encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;  (** kms_key_versions *)
}

type google_alloydb_cluster__migration_source = {
  host_port : string prop;  (** host_port *)
  reference_id : string prop;  (** reference_id *)
  source_type : string prop;  (** source_type *)
}

type google_alloydb_cluster

type t = private {
  annotations : (string * string) list prop;
  backup_source : google_alloydb_cluster__backup_source list prop;
  cluster_id : string prop;
  cluster_type : string prop;
  continuous_backup_info :
    google_alloydb_cluster__continuous_backup_info list prop;
  database_version : string prop;
  deletion_policy : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  encryption_info :
    google_alloydb_cluster__encryption_info list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  migration_source :
    google_alloydb_cluster__migration_source list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
}

val google_alloydb_cluster :
  ?annotations:(string * string prop) list ->
  ?cluster_type:string prop ->
  ?database_version:string prop ->
  ?deletion_policy:string prop ->
  ?display_name:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?project:string prop ->
  ?timeouts:google_alloydb_cluster__timeouts ->
  cluster_id:string prop ->
  location:string prop ->
  automated_backup_policy:
    google_alloydb_cluster__automated_backup_policy list ->
  continuous_backup_config:
    google_alloydb_cluster__continuous_backup_config list ->
  encryption_config:google_alloydb_cluster__encryption_config list ->
  initial_user:google_alloydb_cluster__initial_user list ->
  network_config:google_alloydb_cluster__network_config list ->
  restore_backup_source:
    google_alloydb_cluster__restore_backup_source list ->
  restore_continuous_backup_source:
    google_alloydb_cluster__restore_continuous_backup_source list ->
  secondary_config:google_alloydb_cluster__secondary_config list ->
  string ->
  t
