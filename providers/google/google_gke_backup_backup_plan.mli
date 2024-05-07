(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backup_config__encryption_key

val backup_config__encryption_key :
  gcp_kms_encryption_key:string prop ->
  unit ->
  backup_config__encryption_key

type backup_config__selected_applications__namespaced_names

val backup_config__selected_applications__namespaced_names :
  name:string prop ->
  namespace:string prop ->
  unit ->
  backup_config__selected_applications__namespaced_names

type backup_config__selected_applications

val backup_config__selected_applications :
  namespaced_names:
    backup_config__selected_applications__namespaced_names list ->
  unit ->
  backup_config__selected_applications

type backup_config__selected_namespaces

val backup_config__selected_namespaces :
  namespaces:string prop list ->
  unit ->
  backup_config__selected_namespaces

type backup_config

val backup_config :
  ?all_namespaces:bool prop ->
  ?include_secrets:bool prop ->
  ?include_volume_data:bool prop ->
  ?encryption_key:backup_config__encryption_key list ->
  ?selected_applications:backup_config__selected_applications list ->
  ?selected_namespaces:backup_config__selected_namespaces list ->
  unit ->
  backup_config

type backup_schedule

val backup_schedule :
  ?cron_schedule:string prop ->
  ?paused:bool prop ->
  unit ->
  backup_schedule

type retention_policy

val retention_policy :
  ?backup_delete_lock_days:float prop ->
  ?backup_retain_days:float prop ->
  ?locked:bool prop ->
  unit ->
  retention_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gke_backup_backup_plan

val google_gke_backup_backup_plan :
  ?deactivated:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?backup_config:backup_config list ->
  ?backup_schedule:backup_schedule list ->
  ?retention_policy:retention_policy list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_gke_backup_backup_plan

val yojson_of_google_gke_backup_backup_plan :
  google_gke_backup_backup_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster : string prop;
  deactivated : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  protected_pod_count : float prop;
  state : string prop;
  state_reason : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deactivated:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?backup_config:backup_config list ->
  ?backup_schedule:backup_schedule list ->
  ?retention_policy:retention_policy list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?deactivated:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?backup_config:backup_config list ->
  ?backup_schedule:backup_schedule list ->
  ?retention_policy:retention_policy list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
