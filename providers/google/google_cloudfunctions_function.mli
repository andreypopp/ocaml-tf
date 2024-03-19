(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type event_trigger__failure_policy

val event_trigger__failure_policy :
  retry:bool prop -> unit -> event_trigger__failure_policy

type event_trigger

val event_trigger :
  event_type:string prop ->
  resource:string prop ->
  failure_policy:event_trigger__failure_policy list ->
  unit ->
  event_trigger

type secret_environment_variables

val secret_environment_variables :
  ?project_id:string prop ->
  key:string prop ->
  secret:string prop ->
  version:string prop ->
  unit ->
  secret_environment_variables

type secret_volumes__versions

val secret_volumes__versions :
  path:string prop ->
  version:string prop ->
  unit ->
  secret_volumes__versions

type secret_volumes

val secret_volumes :
  ?project_id:string prop ->
  mount_path:string prop ->
  secret:string prop ->
  versions:secret_volumes__versions list ->
  unit ->
  secret_volumes

type source_repository

val source_repository : url:string prop -> unit -> source_repository

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloudfunctions_function

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
  ?timeouts:timeouts ->
  name:string prop ->
  runtime:string prop ->
  event_trigger:event_trigger list ->
  secret_environment_variables:secret_environment_variables list ->
  secret_volumes:secret_volumes list ->
  source_repository:source_repository list ->
  unit ->
  google_cloudfunctions_function

val yojson_of_google_cloudfunctions_function :
  google_cloudfunctions_function -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  name:string prop ->
  runtime:string prop ->
  event_trigger:event_trigger list ->
  secret_environment_variables:secret_environment_variables list ->
  secret_volumes:secret_volumes list ->
  source_repository:source_repository list ->
  string ->
  t
