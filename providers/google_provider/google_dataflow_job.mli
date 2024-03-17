(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataflow_job__timeouts
type google_dataflow_job

val google_dataflow_job :
  ?enable_streaming_engine:bool ->
  ?ip_configuration:string ->
  ?kms_key_name:string ->
  ?labels:(string * string) list ->
  ?machine_type:string ->
  ?max_workers:float ->
  ?network:string ->
  ?on_delete:string ->
  ?parameters:(string * string) list ->
  ?region:string ->
  ?service_account_email:string ->
  ?skip_wait_on_job_termination:bool ->
  ?subnetwork:string ->
  ?transform_name_mapping:(string * string) list ->
  ?zone:string ->
  ?timeouts:google_dataflow_job__timeouts ->
  name:string ->
  temp_gcs_location:string ->
  template_gcs_path:string ->
  string ->
  unit
