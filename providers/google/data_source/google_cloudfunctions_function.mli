(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type event_trigger__failure_policy = {
  retry : bool prop;  (** retry *)
}

type event_trigger = {
  event_type : string prop;  (** event_type *)
  failure_policy : event_trigger__failure_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** failure_policy *)
  resource : string prop;  (** resource *)
}

type secret_environment_variables = {
  key : string prop;  (** key *)
  project_id : string prop;  (** project_id *)
  secret : string prop;  (** secret *)
  version : string prop;  (** version *)
}

type secret_volumes__versions = {
  path : string prop;  (** path *)
  version : string prop;  (** version *)
}

type secret_volumes = {
  mount_path : string prop;  (** mount_path *)
  project_id : string prop;  (** project_id *)
  secret : string prop;  (** secret *)
  versions : secret_volumes__versions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** versions *)
}

type source_repository = {
  deployed_url : string prop;  (** deployed_url *)
  url : string prop;  (** url *)
}

type google_cloudfunctions_function

val google_cloudfunctions_function :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_cloudfunctions_function

val yojson_of_google_cloudfunctions_function :
  google_cloudfunctions_function -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  available_memory_mb : float prop;
  build_environment_variables : string Tf_core.assoc prop;
  build_worker_pool : string prop;
  description : string prop;
  docker_registry : string prop;
  docker_repository : string prop;
  effective_labels : string Tf_core.assoc prop;
  entry_point : string prop;
  environment_variables : string Tf_core.assoc prop;
  event_trigger : event_trigger list prop;
  https_trigger_security_level : string prop;
  https_trigger_url : string prop;
  id : string prop;
  ingress_settings : string prop;
  kms_key_name : string prop;
  labels : string Tf_core.assoc prop;
  max_instances : float prop;
  min_instances : float prop;
  name : string prop;
  project : string prop;
  region : string prop;
  runtime : string prop;
  secret_environment_variables :
    secret_environment_variables list prop;
  secret_volumes : secret_volumes list prop;
  service_account_email : string prop;
  source_archive_bucket : string prop;
  source_archive_object : string prop;
  source_repository : source_repository list prop;
  status : string prop;
  terraform_labels : string Tf_core.assoc prop;
  timeout : float prop;
  trigger_http : bool prop;
  version_id : string prop;
  vpc_connector : string prop;
  vpc_connector_egress_settings : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
