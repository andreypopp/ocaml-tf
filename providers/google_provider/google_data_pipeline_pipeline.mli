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

val google_data_pipeline_pipeline :
  ?display_name:string ->
  ?id:string ->
  ?pipeline_sources:(string * string) list ->
  ?project:string ->
  ?region:string ->
  ?scheduler_service_account_email:string ->
  ?timeouts:google_data_pipeline_pipeline__timeouts ->
  name:string ->
  state:string ->
  type_:string ->
  schedule_info:google_data_pipeline_pipeline__schedule_info list ->
  workload:google_data_pipeline_pipeline__workload list ->
  string ->
  unit
