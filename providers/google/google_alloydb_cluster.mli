(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backup_source = {
  backup_name : string prop;  (** backup_name *)
}

type continuous_backup_info__encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** kms_key_versions *)
}

type continuous_backup_info = {
  earliest_restorable_time : string prop;
      (** earliest_restorable_time *)
  enabled_time : string prop;  (** enabled_time *)
  encryption_info : continuous_backup_info__encryption_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** encryption_info *)
  schedule : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** schedule *)
}

type encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** kms_key_versions *)
}

type migration_source = {
  host_port : string prop;  (** host_port *)
  reference_id : string prop;  (** reference_id *)
  source_type : string prop;  (** source_type *)
}

type automated_backup_policy__encryption_config

val automated_backup_policy__encryption_config :
  ?kms_key_name:string prop ->
  unit ->
  automated_backup_policy__encryption_config

type automated_backup_policy__quantity_based_retention

val automated_backup_policy__quantity_based_retention :
  ?count:float prop ->
  unit ->
  automated_backup_policy__quantity_based_retention

type automated_backup_policy__time_based_retention

val automated_backup_policy__time_based_retention :
  ?retention_period:string prop ->
  unit ->
  automated_backup_policy__time_based_retention

type automated_backup_policy__weekly_schedule__start_times

val automated_backup_policy__weekly_schedule__start_times :
  ?hours:float prop ->
  ?minutes:float prop ->
  ?nanos:float prop ->
  ?seconds:float prop ->
  unit ->
  automated_backup_policy__weekly_schedule__start_times

type automated_backup_policy__weekly_schedule

val automated_backup_policy__weekly_schedule :
  ?days_of_week:string prop list ->
  start_times:
    automated_backup_policy__weekly_schedule__start_times list ->
  unit ->
  automated_backup_policy__weekly_schedule

type automated_backup_policy

val automated_backup_policy :
  ?backup_window:string prop ->
  ?enabled:bool prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?encryption_config:automated_backup_policy__encryption_config list ->
  ?quantity_based_retention:
    automated_backup_policy__quantity_based_retention list ->
  ?time_based_retention:
    automated_backup_policy__time_based_retention list ->
  ?weekly_schedule:automated_backup_policy__weekly_schedule list ->
  unit ->
  automated_backup_policy

type continuous_backup_config__encryption_config

val continuous_backup_config__encryption_config :
  ?kms_key_name:string prop ->
  unit ->
  continuous_backup_config__encryption_config

type continuous_backup_config

val continuous_backup_config :
  ?enabled:bool prop ->
  ?recovery_window_days:float prop ->
  ?encryption_config:continuous_backup_config__encryption_config list ->
  unit ->
  continuous_backup_config

type encryption_config

val encryption_config :
  ?kms_key_name:string prop -> unit -> encryption_config

type initial_user

val initial_user :
  ?user:string prop -> password:string prop -> unit -> initial_user

type maintenance_update_policy__maintenance_windows__start_time

val maintenance_update_policy__maintenance_windows__start_time :
  ?minutes:float prop ->
  ?nanos:float prop ->
  ?seconds:float prop ->
  hours:float prop ->
  unit ->
  maintenance_update_policy__maintenance_windows__start_time

type maintenance_update_policy__maintenance_windows

val maintenance_update_policy__maintenance_windows :
  day:string prop ->
  start_time:
    maintenance_update_policy__maintenance_windows__start_time list ->
  unit ->
  maintenance_update_policy__maintenance_windows

type maintenance_update_policy

val maintenance_update_policy :
  ?maintenance_windows:
    maintenance_update_policy__maintenance_windows list ->
  unit ->
  maintenance_update_policy

type network_config

val network_config :
  ?allocated_ip_range:string prop ->
  ?network:string prop ->
  unit ->
  network_config

type psc_config

val psc_config : ?psc_enabled:bool prop -> unit -> psc_config

type restore_backup_source

val restore_backup_source :
  backup_name:string prop -> unit -> restore_backup_source

type restore_continuous_backup_source

val restore_continuous_backup_source :
  cluster:string prop ->
  point_in_time:string prop ->
  unit ->
  restore_continuous_backup_source

type secondary_config

val secondary_config :
  primary_cluster_name:string prop -> unit -> secondary_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_alloydb_cluster

val google_alloydb_cluster :
  ?annotations:string prop Tf_core.assoc ->
  ?cluster_type:string prop ->
  ?database_version:string prop ->
  ?deletion_policy:string prop ->
  ?display_name:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?automated_backup_policy:automated_backup_policy list ->
  ?continuous_backup_config:continuous_backup_config list ->
  ?encryption_config:encryption_config list ->
  ?initial_user:initial_user list ->
  ?maintenance_update_policy:maintenance_update_policy list ->
  ?network_config:network_config list ->
  ?psc_config:psc_config list ->
  ?restore_backup_source:restore_backup_source list ->
  ?restore_continuous_backup_source:
    restore_continuous_backup_source list ->
  ?secondary_config:secondary_config list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  location:string prop ->
  unit ->
  google_alloydb_cluster

val yojson_of_google_alloydb_cluster : google_alloydb_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  backup_source : backup_source list prop;
  cluster_id : string prop;
  cluster_type : string prop;
  continuous_backup_info : continuous_backup_info list prop;
  database_version : string prop;
  deletion_policy : string prop;
  display_name : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  encryption_info : encryption_info list prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  migration_source : migration_source list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?cluster_type:string prop ->
  ?database_version:string prop ->
  ?deletion_policy:string prop ->
  ?display_name:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?automated_backup_policy:automated_backup_policy list ->
  ?continuous_backup_config:continuous_backup_config list ->
  ?encryption_config:encryption_config list ->
  ?initial_user:initial_user list ->
  ?maintenance_update_policy:maintenance_update_policy list ->
  ?network_config:network_config list ->
  ?psc_config:psc_config list ->
  ?restore_backup_source:restore_backup_source list ->
  ?restore_continuous_backup_source:
    restore_continuous_backup_source list ->
  ?secondary_config:secondary_config list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?cluster_type:string prop ->
  ?database_version:string prop ->
  ?deletion_policy:string prop ->
  ?display_name:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?project:string prop ->
  ?automated_backup_policy:automated_backup_policy list ->
  ?continuous_backup_config:continuous_backup_config list ->
  ?encryption_config:encryption_config list ->
  ?initial_user:initial_user list ->
  ?maintenance_update_policy:maintenance_update_policy list ->
  ?network_config:network_config list ->
  ?psc_config:psc_config list ->
  ?restore_backup_source:restore_backup_source list ->
  ?restore_continuous_backup_source:
    restore_continuous_backup_source list ->
  ?secondary_config:secondary_config list ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
