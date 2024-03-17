(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__deploy_parameters

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment__predeploy

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__canary_deployment

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__custom_canary_deployment

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__cloud_run

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config__kubernetes

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary__runtime_config

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__canary

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard__postdeploy

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard__predeploy

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy__standard

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages__strategy

type google_clouddeploy_delivery_pipeline__serial_pipeline__stages
type google_clouddeploy_delivery_pipeline__serial_pipeline
type google_clouddeploy_delivery_pipeline__timeouts

type google_clouddeploy_delivery_pipeline__condition__targets_type_condition = {
  error_details : string prop;  (** error_details *)
  status : bool prop;  (** status *)
}

type google_clouddeploy_delivery_pipeline__condition__targets_present_condition = {
  missing_targets : string prop list;  (** missing_targets *)
  status : bool prop;  (** status *)
  update_time : string prop;  (** update_time *)
}

type google_clouddeploy_delivery_pipeline__condition__pipeline_ready_condition = {
  status : bool prop;  (** status *)
  update_time : string prop;  (** update_time *)
}

type google_clouddeploy_delivery_pipeline__condition = {
  pipeline_ready_condition :
    google_clouddeploy_delivery_pipeline__condition__pipeline_ready_condition
    list;
      (** pipeline_ready_condition *)
  targets_present_condition :
    google_clouddeploy_delivery_pipeline__condition__targets_present_condition
    list;
      (** targets_present_condition *)
  targets_type_condition :
    google_clouddeploy_delivery_pipeline__condition__targets_type_condition
    list;
      (** targets_type_condition *)
}

type google_clouddeploy_delivery_pipeline

val google_clouddeploy_delivery_pipeline :
  ?annotations:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?suspended:bool prop ->
  ?timeouts:google_clouddeploy_delivery_pipeline__timeouts ->
  location:string prop ->
  name:string prop ->
  serial_pipeline:
    google_clouddeploy_delivery_pipeline__serial_pipeline list ->
  string ->
  unit
