(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type human_loop_activation_config__human_loop_activation_conditions_config

val human_loop_activation_config__human_loop_activation_conditions_config :
  human_loop_activation_conditions:string prop ->
  unit ->
  human_loop_activation_config__human_loop_activation_conditions_config

type human_loop_activation_config

val human_loop_activation_config :
  ?human_loop_activation_conditions_config:
    human_loop_activation_config__human_loop_activation_conditions_config
    list ->
  unit ->
  human_loop_activation_config

type human_loop_config__public_workforce_task_price__amount_in_usd

val human_loop_config__public_workforce_task_price__amount_in_usd :
  ?cents:float prop ->
  ?dollars:float prop ->
  ?tenth_fractions_of_a_cent:float prop ->
  unit ->
  human_loop_config__public_workforce_task_price__amount_in_usd

type human_loop_config__public_workforce_task_price

val human_loop_config__public_workforce_task_price :
  ?amount_in_usd:
    human_loop_config__public_workforce_task_price__amount_in_usd
    list ->
  unit ->
  human_loop_config__public_workforce_task_price

type human_loop_config

val human_loop_config :
  ?task_availability_lifetime_in_seconds:float prop ->
  ?task_keywords:string prop list ->
  ?task_time_limit_in_seconds:float prop ->
  ?public_workforce_task_price:
    human_loop_config__public_workforce_task_price list ->
  human_task_ui_arn:string prop ->
  task_count:float prop ->
  task_description:string prop ->
  task_title:string prop ->
  workteam_arn:string prop ->
  unit ->
  human_loop_config

type human_loop_request_source

val human_loop_request_source :
  aws_managed_human_loop_request_source:string prop ->
  unit ->
  human_loop_request_source

type output_config

val output_config :
  ?kms_key_id:string prop ->
  s3_output_path:string prop ->
  unit ->
  output_config

type aws_sagemaker_flow_definition

val aws_sagemaker_flow_definition :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?human_loop_activation_config:human_loop_activation_config list ->
  ?human_loop_request_source:human_loop_request_source list ->
  flow_definition_name:string prop ->
  role_arn:string prop ->
  human_loop_config:human_loop_config list ->
  output_config:output_config list ->
  unit ->
  aws_sagemaker_flow_definition

val yojson_of_aws_sagemaker_flow_definition :
  aws_sagemaker_flow_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  flow_definition_name : string prop;
  id : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?human_loop_activation_config:human_loop_activation_config list ->
  ?human_loop_request_source:human_loop_request_source list ->
  flow_definition_name:string prop ->
  role_arn:string prop ->
  human_loop_config:human_loop_config list ->
  output_config:output_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?human_loop_activation_config:human_loop_activation_config list ->
  ?human_loop_request_source:human_loop_request_source list ->
  flow_definition_name:string prop ->
  role_arn:string prop ->
  human_loop_config:human_loop_config list ->
  output_config:output_config list ->
  string ->
  t Tf_core.resource
