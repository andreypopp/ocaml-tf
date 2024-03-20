(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?update:string prop -> unit -> timeouts

type google_dataflow_job

val google_dataflow_job :
  ?additional_experiments:string prop list ->
  ?enable_streaming_engine:bool prop ->
  ?id:string prop ->
  ?ip_configuration:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?machine_type:string prop ->
  ?max_workers:float prop ->
  ?network:string prop ->
  ?on_delete:string prop ->
  ?parameters:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?service_account_email:string prop ->
  ?skip_wait_on_job_termination:bool prop ->
  ?subnetwork:string prop ->
  ?transform_name_mapping:(string * string prop) list ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  temp_gcs_location:string prop ->
  template_gcs_path:string prop ->
  unit ->
  google_dataflow_job

val yojson_of_google_dataflow_job : google_dataflow_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_experiments : string list prop;
  effective_labels : (string * string) list prop;
  enable_streaming_engine : bool prop;
  id : string prop;
  ip_configuration : string prop;
  job_id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  max_workers : float prop;
  name : string prop;
  network : string prop;
  on_delete : string prop;
  parameters : (string * string) list prop;
  project : string prop;
  region : string prop;
  service_account_email : string prop;
  skip_wait_on_job_termination : bool prop;
  state : string prop;
  subnetwork : string prop;
  temp_gcs_location : string prop;
  template_gcs_path : string prop;
  terraform_labels : (string * string) list prop;
  transform_name_mapping : (string * string) list prop;
  type_ : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_experiments:string prop list ->
  ?enable_streaming_engine:bool prop ->
  ?id:string prop ->
  ?ip_configuration:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?machine_type:string prop ->
  ?max_workers:float prop ->
  ?network:string prop ->
  ?on_delete:string prop ->
  ?parameters:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?service_account_email:string prop ->
  ?skip_wait_on_job_termination:bool prop ->
  ?subnetwork:string prop ->
  ?transform_name_mapping:(string * string prop) list ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  temp_gcs_location:string prop ->
  template_gcs_path:string prop ->
  string ->
  t

val make :
  ?additional_experiments:string prop list ->
  ?enable_streaming_engine:bool prop ->
  ?id:string prop ->
  ?ip_configuration:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?machine_type:string prop ->
  ?max_workers:float prop ->
  ?network:string prop ->
  ?on_delete:string prop ->
  ?parameters:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?service_account_email:string prop ->
  ?skip_wait_on_job_termination:bool prop ->
  ?subnetwork:string prop ->
  ?transform_name_mapping:(string * string prop) list ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  temp_gcs_location:string prop ->
  template_gcs_path:string prop ->
  string ->
  t Tf_core.resource
