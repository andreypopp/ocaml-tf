(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudfunctions_function__event_trigger__failure_policy
type google_cloudfunctions_function__event_trigger
type google_cloudfunctions_function__secret_environment_variables
type google_cloudfunctions_function__secret_volumes__versions
type google_cloudfunctions_function__secret_volumes
type google_cloudfunctions_function__source_repository
type google_cloudfunctions_function__timeouts
type google_cloudfunctions_function

val google_cloudfunctions_function :
  ?available_memory_mb:float ->
  ?build_environment_variables:(string * string) list ->
  ?build_worker_pool:string ->
  ?description:string ->
  ?docker_repository:string ->
  ?entry_point:string ->
  ?environment_variables:(string * string) list ->
  ?ingress_settings:string ->
  ?kms_key_name:string ->
  ?labels:(string * string) list ->
  ?min_instances:float ->
  ?source_archive_bucket:string ->
  ?source_archive_object:string ->
  ?timeout:float ->
  ?trigger_http:bool ->
  ?vpc_connector:string ->
  ?timeouts:google_cloudfunctions_function__timeouts ->
  name:string ->
  runtime:string ->
  event_trigger:google_cloudfunctions_function__event_trigger list ->
  secret_environment_variables:
    google_cloudfunctions_function__secret_environment_variables list ->
  secret_volumes:google_cloudfunctions_function__secret_volumes list ->
  source_repository:
    google_cloudfunctions_function__source_repository list ->
  string ->
  unit
