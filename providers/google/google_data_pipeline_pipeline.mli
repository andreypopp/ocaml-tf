(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type schedule_info

val schedule_info :
  ?schedule:string prop ->
  ?time_zone:string prop ->
  unit ->
  schedule_info

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type workload__dataflow_flex_template_request__launch_parameter__environment

val workload__dataflow_flex_template_request__launch_parameter__environment :
  ?additional_experiments:string prop list ->
  ?additional_user_labels:(string * string prop) list ->
  ?enable_streaming_engine:bool prop ->
  ?flexrs_goal:string prop ->
  ?ip_configuration:string prop ->
  ?kms_key_name:string prop ->
  ?machine_type:string prop ->
  ?max_workers:float prop ->
  ?network:string prop ->
  ?num_workers:float prop ->
  ?service_account_email:string prop ->
  ?subnetwork:string prop ->
  ?temp_location:string prop ->
  ?worker_region:string prop ->
  ?worker_zone:string prop ->
  ?zone:string prop ->
  unit ->
  workload__dataflow_flex_template_request__launch_parameter__environment

type workload__dataflow_flex_template_request__launch_parameter

val workload__dataflow_flex_template_request__launch_parameter :
  ?container_spec_gcs_path:string prop ->
  ?launch_options:(string * string prop) list ->
  ?parameters:(string * string prop) list ->
  ?transform_name_mappings:(string * string prop) list ->
  ?update:bool prop ->
  job_name:string prop ->
  environment:
    workload__dataflow_flex_template_request__launch_parameter__environment
    list ->
  unit ->
  workload__dataflow_flex_template_request__launch_parameter

type workload__dataflow_flex_template_request

val workload__dataflow_flex_template_request :
  ?validate_only:bool prop ->
  location:string prop ->
  project_id:string prop ->
  launch_parameter:
    workload__dataflow_flex_template_request__launch_parameter list ->
  unit ->
  workload__dataflow_flex_template_request

type workload__dataflow_launch_template_request__launch_parameters__environment

val workload__dataflow_launch_template_request__launch_parameters__environment :
  ?additional_experiments:string prop list ->
  ?additional_user_labels:(string * string prop) list ->
  ?bypass_temp_dir_validation:bool prop ->
  ?enable_streaming_engine:bool prop ->
  ?ip_configuration:string prop ->
  ?kms_key_name:string prop ->
  ?machine_type:string prop ->
  ?max_workers:float prop ->
  ?network:string prop ->
  ?num_workers:float prop ->
  ?service_account_email:string prop ->
  ?subnetwork:string prop ->
  ?temp_location:string prop ->
  ?worker_region:string prop ->
  ?worker_zone:string prop ->
  ?zone:string prop ->
  unit ->
  workload__dataflow_launch_template_request__launch_parameters__environment

type workload__dataflow_launch_template_request__launch_parameters

val workload__dataflow_launch_template_request__launch_parameters :
  ?parameters:(string * string prop) list ->
  ?transform_name_mapping:(string * string prop) list ->
  ?update:bool prop ->
  job_name:string prop ->
  environment:
    workload__dataflow_launch_template_request__launch_parameters__environment
    list ->
  unit ->
  workload__dataflow_launch_template_request__launch_parameters

type workload__dataflow_launch_template_request

val workload__dataflow_launch_template_request :
  ?gcs_path:string prop ->
  ?location:string prop ->
  ?validate_only:bool prop ->
  project_id:string prop ->
  launch_parameters:
    workload__dataflow_launch_template_request__launch_parameters
    list ->
  unit ->
  workload__dataflow_launch_template_request

type workload

val workload :
  dataflow_flex_template_request:
    workload__dataflow_flex_template_request list ->
  dataflow_launch_template_request:
    workload__dataflow_launch_template_request list ->
  unit ->
  workload

type google_data_pipeline_pipeline

val google_data_pipeline_pipeline :
  ?display_name:string prop ->
  ?id:string prop ->
  ?pipeline_sources:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?scheduler_service_account_email:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  state:string prop ->
  type_:string prop ->
  schedule_info:schedule_info list ->
  workload:workload list ->
  unit ->
  google_data_pipeline_pipeline

val yojson_of_google_data_pipeline_pipeline :
  google_data_pipeline_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  display_name : string prop;
  id : string prop;
  job_count : float prop;
  last_update_time : string prop;
  name : string prop;
  pipeline_sources : (string * string) list prop;
  project : string prop;
  region : string prop;
  scheduler_service_account_email : string prop;
  state : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?pipeline_sources:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?scheduler_service_account_email:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  state:string prop ->
  type_:string prop ->
  schedule_info:schedule_info list ->
  workload:workload list ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?pipeline_sources:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?scheduler_service_account_email:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  state:string prop ->
  type_:string prop ->
  schedule_info:schedule_info list ->
  workload:workload list ->
  string ->
  t Tf_core.resource
