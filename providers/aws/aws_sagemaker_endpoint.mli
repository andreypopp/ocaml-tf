(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type deployment_config__auto_rollback_configuration__alarms

val deployment_config__auto_rollback_configuration__alarms :
  alarm_name:string prop ->
  unit ->
  deployment_config__auto_rollback_configuration__alarms

type deployment_config__auto_rollback_configuration

val deployment_config__auto_rollback_configuration :
  alarms:deployment_config__auto_rollback_configuration__alarms list ->
  unit ->
  deployment_config__auto_rollback_configuration

type deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size

val deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size :
  type_:string prop ->
  value:float prop ->
  unit ->
  deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size

type deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size

val deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size :
  type_:string prop ->
  value:float prop ->
  unit ->
  deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size

type deployment_config__blue_green_update_policy__traffic_routing_configuration

val deployment_config__blue_green_update_policy__traffic_routing_configuration :
  ?canary_size:
    deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    list ->
  ?linear_step_size:
    deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    list ->
  type_:string prop ->
  wait_interval_in_seconds:float prop ->
  unit ->
  deployment_config__blue_green_update_policy__traffic_routing_configuration

type deployment_config__blue_green_update_policy

val deployment_config__blue_green_update_policy :
  ?maximum_execution_timeout_in_seconds:float prop ->
  ?termination_wait_in_seconds:float prop ->
  traffic_routing_configuration:
    deployment_config__blue_green_update_policy__traffic_routing_configuration
    list ->
  unit ->
  deployment_config__blue_green_update_policy

type deployment_config__rolling_update_policy__maximum_batch_size

val deployment_config__rolling_update_policy__maximum_batch_size :
  type_:string prop ->
  value:float prop ->
  unit ->
  deployment_config__rolling_update_policy__maximum_batch_size

type deployment_config__rolling_update_policy__rollback_maximum_batch_size

val deployment_config__rolling_update_policy__rollback_maximum_batch_size :
  type_:string prop ->
  value:float prop ->
  unit ->
  deployment_config__rolling_update_policy__rollback_maximum_batch_size

type deployment_config__rolling_update_policy

val deployment_config__rolling_update_policy :
  ?maximum_execution_timeout_in_seconds:float prop ->
  ?rollback_maximum_batch_size:
    deployment_config__rolling_update_policy__rollback_maximum_batch_size
    list ->
  wait_interval_in_seconds:float prop ->
  maximum_batch_size:
    deployment_config__rolling_update_policy__maximum_batch_size list ->
  unit ->
  deployment_config__rolling_update_policy

type deployment_config

val deployment_config :
  ?auto_rollback_configuration:
    deployment_config__auto_rollback_configuration list ->
  ?blue_green_update_policy:
    deployment_config__blue_green_update_policy list ->
  ?rolling_update_policy:
    deployment_config__rolling_update_policy list ->
  unit ->
  deployment_config

type aws_sagemaker_endpoint

val aws_sagemaker_endpoint :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?deployment_config:deployment_config list ->
  endpoint_config_name:string prop ->
  unit ->
  aws_sagemaker_endpoint

val yojson_of_aws_sagemaker_endpoint : aws_sagemaker_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  endpoint_config_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?deployment_config:deployment_config list ->
  endpoint_config_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?deployment_config:deployment_config list ->
  endpoint_config_name:string prop ->
  string ->
  t Tf_core.resource
