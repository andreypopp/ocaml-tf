(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_pipeline_pipeline__schedule_info
type google_data_pipeline_pipeline__timeouts

type google_data_pipeline_pipeline__workload__dataflow_flex_template_request__launch_parameter__environment

type google_data_pipeline_pipeline__workload__dataflow_flex_template_request__launch_parameter

type google_data_pipeline_pipeline__workload__dataflow_flex_template_request

type google_data_pipeline_pipeline__workload__dataflow_launch_template_request__launch_parameters__environment

type google_data_pipeline_pipeline__workload__dataflow_launch_template_request__launch_parameters

type google_data_pipeline_pipeline__workload__dataflow_launch_template_request

type google_data_pipeline_pipeline__workload
type google_data_pipeline_pipeline

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

val google_data_pipeline_pipeline :
  ?display_name:string prop ->
  ?id:string prop ->
  ?pipeline_sources:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?scheduler_service_account_email:string prop ->
  ?timeouts:google_data_pipeline_pipeline__timeouts ->
  name:string prop ->
  state:string prop ->
  type_:string prop ->
  schedule_info:google_data_pipeline_pipeline__schedule_info list ->
  workload:google_data_pipeline_pipeline__workload list ->
  string ->
  t
