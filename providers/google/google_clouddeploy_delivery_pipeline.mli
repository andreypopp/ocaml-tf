(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition__targets_type_condition = {
  error_details : string prop;  (** error_details *)
  status : bool prop;  (** status *)
}

type condition__targets_present_condition = {
  missing_targets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** missing_targets *)
  status : bool prop;  (** status *)
  update_time : string prop;  (** update_time *)
}

type condition__pipeline_ready_condition = {
  status : bool prop;  (** status *)
  update_time : string prop;  (** update_time *)
}

type condition = {
  pipeline_ready_condition :
    condition__pipeline_ready_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** pipeline_ready_condition *)
  targets_present_condition :
    condition__targets_present_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** targets_present_condition *)
  targets_type_condition : condition__targets_type_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** targets_type_condition *)
}

type serial_pipeline__stages__deploy_parameters

val serial_pipeline__stages__deploy_parameters :
  ?match_target_labels:string prop Tf_core.assoc ->
  values:string prop Tf_core.assoc ->
  unit ->
  serial_pipeline__stages__deploy_parameters

type serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy

val serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy :
  ?actions:string prop list ->
  unit ->
  serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy

type serial_pipeline__stages__strategy__canary__canary_deployment__predeploy

val serial_pipeline__stages__strategy__canary__canary_deployment__predeploy :
  ?actions:string prop list ->
  unit ->
  serial_pipeline__stages__strategy__canary__canary_deployment__predeploy

type serial_pipeline__stages__strategy__canary__canary_deployment

val serial_pipeline__stages__strategy__canary__canary_deployment :
  ?verify:bool prop ->
  ?postdeploy:
    serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    list ->
  ?predeploy:
    serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    list ->
  percentages:float prop list ->
  unit ->
  serial_pipeline__stages__strategy__canary__canary_deployment

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy

val serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy :
  ?actions:string prop list ->
  unit ->
  serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy

val serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy :
  ?actions:string prop list ->
  unit ->
  serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs

val serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs :
  ?profiles:string prop list ->
  ?verify:bool prop ->
  ?postdeploy:
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    list ->
  ?predeploy:
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    list ->
  percentage:float prop ->
  phase_id:string prop ->
  unit ->
  serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs

type serial_pipeline__stages__strategy__canary__custom_canary_deployment

val serial_pipeline__stages__strategy__canary__custom_canary_deployment :
  phase_configs:
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    list ->
  unit ->
  serial_pipeline__stages__strategy__canary__custom_canary_deployment

type serial_pipeline__stages__strategy__canary__runtime_config__cloud_run

val serial_pipeline__stages__strategy__canary__runtime_config__cloud_run :
  ?automatic_traffic_control:bool prop ->
  ?canary_revision_tags:string prop list ->
  ?prior_revision_tags:string prop list ->
  ?stable_revision_tags:string prop list ->
  unit ->
  serial_pipeline__stages__strategy__canary__runtime_config__cloud_run

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh

val serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh :
  ?route_update_wait_time:string prop ->
  ?stable_cutback_duration:string prop ->
  deployment:string prop ->
  http_route:string prop ->
  service:string prop ->
  unit ->
  serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking

val serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking :
  ?disable_pod_overprovisioning:bool prop ->
  deployment:string prop ->
  service:string prop ->
  unit ->
  serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes

val serial_pipeline__stages__strategy__canary__runtime_config__kubernetes :
  ?gateway_service_mesh:
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    list ->
  ?service_networking:
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    list ->
  unit ->
  serial_pipeline__stages__strategy__canary__runtime_config__kubernetes

type serial_pipeline__stages__strategy__canary__runtime_config

val serial_pipeline__stages__strategy__canary__runtime_config :
  ?cloud_run:
    serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    list ->
  ?kubernetes:
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    list ->
  unit ->
  serial_pipeline__stages__strategy__canary__runtime_config

type serial_pipeline__stages__strategy__canary

val serial_pipeline__stages__strategy__canary :
  ?canary_deployment:
    serial_pipeline__stages__strategy__canary__canary_deployment list ->
  ?custom_canary_deployment:
    serial_pipeline__stages__strategy__canary__custom_canary_deployment
    list ->
  ?runtime_config:
    serial_pipeline__stages__strategy__canary__runtime_config list ->
  unit ->
  serial_pipeline__stages__strategy__canary

type serial_pipeline__stages__strategy__standard__postdeploy

val serial_pipeline__stages__strategy__standard__postdeploy :
  ?actions:string prop list ->
  unit ->
  serial_pipeline__stages__strategy__standard__postdeploy

type serial_pipeline__stages__strategy__standard__predeploy

val serial_pipeline__stages__strategy__standard__predeploy :
  ?actions:string prop list ->
  unit ->
  serial_pipeline__stages__strategy__standard__predeploy

type serial_pipeline__stages__strategy__standard

val serial_pipeline__stages__strategy__standard :
  ?verify:bool prop ->
  ?postdeploy:
    serial_pipeline__stages__strategy__standard__postdeploy list ->
  ?predeploy:
    serial_pipeline__stages__strategy__standard__predeploy list ->
  unit ->
  serial_pipeline__stages__strategy__standard

type serial_pipeline__stages__strategy

val serial_pipeline__stages__strategy :
  ?canary:serial_pipeline__stages__strategy__canary list ->
  ?standard:serial_pipeline__stages__strategy__standard list ->
  unit ->
  serial_pipeline__stages__strategy

type serial_pipeline__stages

val serial_pipeline__stages :
  ?profiles:string prop list ->
  ?target_id:string prop ->
  ?deploy_parameters:serial_pipeline__stages__deploy_parameters list ->
  ?strategy:serial_pipeline__stages__strategy list ->
  unit ->
  serial_pipeline__stages

type serial_pipeline

val serial_pipeline :
  ?stages:serial_pipeline__stages list -> unit -> serial_pipeline

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_clouddeploy_delivery_pipeline

val google_clouddeploy_delivery_pipeline :
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?suspended:bool prop ->
  ?serial_pipeline:serial_pipeline list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_clouddeploy_delivery_pipeline

val yojson_of_google_clouddeploy_delivery_pipeline :
  google_clouddeploy_delivery_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  condition : condition list prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : string Tf_core.assoc prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  suspended : bool prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?suspended:bool prop ->
  ?serial_pipeline:serial_pipeline list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?suspended:bool prop ->
  ?serial_pipeline:serial_pipeline list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
