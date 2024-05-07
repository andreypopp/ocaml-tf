(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type capacity_provider_strategy

val capacity_provider_strategy :
  ?base:float prop ->
  ?weight:float prop ->
  capacity_provider:string prop ->
  unit ->
  capacity_provider_strategy

type network_configuration

val network_configuration :
  ?assign_public_ip:bool prop ->
  ?security_groups:string prop list ->
  subnets:string prop list ->
  unit ->
  network_configuration

type overrides__container_overrides__environment

val overrides__container_overrides__environment :
  key:string prop ->
  value:string prop ->
  unit ->
  overrides__container_overrides__environment

type overrides__container_overrides__resource_requirements

val overrides__container_overrides__resource_requirements :
  type_:string prop ->
  value:string prop ->
  unit ->
  overrides__container_overrides__resource_requirements

type overrides__container_overrides

val overrides__container_overrides :
  ?command:string prop list ->
  ?cpu:float prop ->
  ?memory:float prop ->
  ?memory_reservation:float prop ->
  name:string prop ->
  environment:overrides__container_overrides__environment list ->
  resource_requirements:
    overrides__container_overrides__resource_requirements list ->
  unit ->
  overrides__container_overrides

type overrides__inference_accelerator_overrides

val overrides__inference_accelerator_overrides :
  ?device_name:string prop ->
  ?device_type:string prop ->
  unit ->
  overrides__inference_accelerator_overrides

type overrides

val overrides :
  ?cpu:string prop ->
  ?execution_role_arn:string prop ->
  ?memory:string prop ->
  ?task_role_arn:string prop ->
  ?container_overrides:overrides__container_overrides list ->
  inference_accelerator_overrides:
    overrides__inference_accelerator_overrides list ->
  unit ->
  overrides

type placement_constraints

val placement_constraints :
  ?expression:string prop ->
  type_:string prop ->
  unit ->
  placement_constraints

type placement_strategy

val placement_strategy :
  ?field:string prop ->
  type_:string prop ->
  unit ->
  placement_strategy

type aws_ecs_task_execution

val aws_ecs_task_execution :
  ?client_token:string prop ->
  ?desired_count:float prop ->
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?group:string prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?reference_id:string prop ->
  ?started_by:string prop ->
  ?tags:(string * string prop) list ->
  ?network_configuration:network_configuration list ->
  ?overrides:overrides list ->
  ?placement_strategy:placement_strategy list ->
  cluster:string prop ->
  task_definition:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  placement_constraints:placement_constraints list ->
  unit ->
  aws_ecs_task_execution

val yojson_of_aws_ecs_task_execution : aws_ecs_task_execution -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_token : string prop;
  cluster : string prop;
  desired_count : float prop;
  enable_ecs_managed_tags : bool prop;
  enable_execute_command : bool prop;
  group : string prop;
  id : string prop;
  launch_type : string prop;
  platform_version : string prop;
  propagate_tags : string prop;
  reference_id : string prop;
  started_by : string prop;
  tags : (string * string) list prop;
  task_arns : string list prop;
  task_definition : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_token:string prop ->
  ?desired_count:float prop ->
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?group:string prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?reference_id:string prop ->
  ?started_by:string prop ->
  ?tags:(string * string prop) list ->
  ?network_configuration:network_configuration list ->
  ?overrides:overrides list ->
  ?placement_strategy:placement_strategy list ->
  cluster:string prop ->
  task_definition:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  placement_constraints:placement_constraints list ->
  string ->
  t

val make :
  ?client_token:string prop ->
  ?desired_count:float prop ->
  ?enable_ecs_managed_tags:bool prop ->
  ?enable_execute_command:bool prop ->
  ?group:string prop ->
  ?id:string prop ->
  ?launch_type:string prop ->
  ?platform_version:string prop ->
  ?propagate_tags:string prop ->
  ?reference_id:string prop ->
  ?started_by:string prop ->
  ?tags:(string * string prop) list ->
  ?network_configuration:network_configuration list ->
  ?overrides:overrides list ->
  ?placement_strategy:placement_strategy list ->
  cluster:string prop ->
  task_definition:string prop ->
  capacity_provider_strategy:capacity_provider_strategy list ->
  placement_constraints:placement_constraints list ->
  string ->
  t Tf_core.resource
