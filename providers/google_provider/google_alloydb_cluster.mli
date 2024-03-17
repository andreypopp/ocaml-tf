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
  backup_name : string;  (** backup_name *)
}

type google_alloydb_cluster__continuous_backup_info__encryption_info = {
  encryption_type : string;  (** encryption_type *)
  kms_key_versions : string list;  (** kms_key_versions *)
}

type google_alloydb_cluster__continuous_backup_info = {
  earliest_restorable_time : string;  (** earliest_restorable_time *)
  enabled_time : string;  (** enabled_time *)
  encryption_info :
    google_alloydb_cluster__continuous_backup_info__encryption_info
    list;
      (** encryption_info *)
  schedule : string list;  (** schedule *)
}

type google_alloydb_cluster__encryption_info = {
  encryption_type : string;  (** encryption_type *)
  kms_key_versions : string list;  (** kms_key_versions *)
}

type google_alloydb_cluster__migration_source = {
  host_port : string;  (** host_port *)
  reference_id : string;  (** reference_id *)
  source_type : string;  (** source_type *)
}

type google_alloydb_cluster

val google_alloydb_cluster :
  ?annotations:(string * string) list ->
  ?cluster_type:string ->
  ?database_version:string ->
  ?deletion_policy:string ->
  ?display_name:string ->
  ?etag:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?network:string ->
  ?project:string ->
  ?timeouts:google_alloydb_cluster__timeouts ->
  cluster_id:string ->
  location:string ->
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
  unit
