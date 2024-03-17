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

type t = private {
  available_memory_mb : float prop;
  build_environment_variables : (string * string) list prop;
  build_worker_pool : string prop;
  description : string prop;
  docker_registry : string prop;
  docker_repository : string prop;
  effective_labels : (string * string) list prop;
  entry_point : string prop;
  environment_variables : (string * string) list prop;
  https_trigger_security_level : string prop;
  https_trigger_url : string prop;
  id : string prop;
  ingress_settings : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  max_instances : float prop;
  min_instances : float prop;
  name : string prop;
  project : string prop;
  region : string prop;
  runtime : string prop;
  service_account_email : string prop;
  source_archive_bucket : string prop;
  source_archive_object : string prop;
  status : string prop;
  terraform_labels : (string * string) list prop;
  timeout : float prop;
  trigger_http : bool prop;
  version_id : string prop;
  vpc_connector : string prop;
  vpc_connector_egress_settings : string prop;
}

val google_cloudfunctions_function :
  ?available_memory_mb:float prop ->
  ?build_environment_variables:(string * string prop) list ->
  ?build_worker_pool:string prop ->
  ?description:string prop ->
  ?docker_registry:string prop ->
  ?docker_repository:string prop ->
  ?entry_point:string prop ->
  ?environment_variables:(string * string prop) list ->
  ?https_trigger_security_level:string prop ->
  ?https_trigger_url:string prop ->
  ?id:string prop ->
  ?ingress_settings:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?max_instances:float prop ->
  ?min_instances:float prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?service_account_email:string prop ->
  ?source_archive_bucket:string prop ->
  ?source_archive_object:string prop ->
  ?timeout:float prop ->
  ?trigger_http:bool prop ->
  ?vpc_connector:string prop ->
  ?vpc_connector_egress_settings:string prop ->
  ?timeouts:google_cloudfunctions_function__timeouts ->
  name:string prop ->
  runtime:string prop ->
  event_trigger:google_cloudfunctions_function__event_trigger list ->
  secret_environment_variables:
    google_cloudfunctions_function__secret_environment_variables list ->
  secret_volumes:google_cloudfunctions_function__secret_volumes list ->
  source_repository:
    google_cloudfunctions_function__source_repository list ->
  string ->
  t
