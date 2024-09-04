(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificate_configuration

val certificate_configuration :
  ?certificate_type:string prop -> unit -> certificate_configuration

type ec2_inbound_permission

val ec2_inbound_permission :
  from_port:float prop ->
  ip_range:string prop ->
  protocol:string prop ->
  to_port:float prop ->
  unit ->
  ec2_inbound_permission

type resource_creation_limit_policy

val resource_creation_limit_policy :
  ?new_game_sessions_per_creator:float prop ->
  ?policy_period_in_minutes:float prop ->
  unit ->
  resource_creation_limit_policy

type runtime_configuration__server_process

val runtime_configuration__server_process :
  ?parameters:string prop ->
  concurrent_executions:float prop ->
  launch_path:string prop ->
  unit ->
  runtime_configuration__server_process

type runtime_configuration

val runtime_configuration :
  ?game_session_activation_timeout_seconds:float prop ->
  ?max_concurrent_game_session_activations:float prop ->
  ?server_process:runtime_configuration__server_process list ->
  unit ->
  runtime_configuration

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_gamelift_fleet

val aws_gamelift_fleet :
  ?build_id:string prop ->
  ?description:string prop ->
  ?fleet_type:string prop ->
  ?id:string prop ->
  ?instance_role_arn:string prop ->
  ?metric_groups:string prop list ->
  ?new_game_session_protection_policy:string prop ->
  ?script_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?certificate_configuration:certificate_configuration list ->
  ?resource_creation_limit_policy:resource_creation_limit_policy list ->
  ?runtime_configuration:runtime_configuration list ->
  ?timeouts:timeouts ->
  ec2_instance_type:string prop ->
  name:string prop ->
  ec2_inbound_permission:ec2_inbound_permission list ->
  unit ->
  aws_gamelift_fleet

val yojson_of_aws_gamelift_fleet : aws_gamelift_fleet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  build_arn : string prop;
  build_id : string prop;
  description : string prop;
  ec2_instance_type : string prop;
  fleet_type : string prop;
  id : string prop;
  instance_role_arn : string prop;
  log_paths : string list prop;
  metric_groups : string list prop;
  name : string prop;
  new_game_session_protection_policy : string prop;
  operating_system : string prop;
  script_arn : string prop;
  script_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?build_id:string prop ->
  ?description:string prop ->
  ?fleet_type:string prop ->
  ?id:string prop ->
  ?instance_role_arn:string prop ->
  ?metric_groups:string prop list ->
  ?new_game_session_protection_policy:string prop ->
  ?script_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?certificate_configuration:certificate_configuration list ->
  ?resource_creation_limit_policy:resource_creation_limit_policy list ->
  ?runtime_configuration:runtime_configuration list ->
  ?timeouts:timeouts ->
  ec2_instance_type:string prop ->
  name:string prop ->
  ec2_inbound_permission:ec2_inbound_permission list ->
  string ->
  t

val make :
  ?build_id:string prop ->
  ?description:string prop ->
  ?fleet_type:string prop ->
  ?id:string prop ->
  ?instance_role_arn:string prop ->
  ?metric_groups:string prop list ->
  ?new_game_session_protection_policy:string prop ->
  ?script_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?certificate_configuration:certificate_configuration list ->
  ?resource_creation_limit_policy:resource_creation_limit_policy list ->
  ?runtime_configuration:runtime_configuration list ->
  ?timeouts:timeouts ->
  ec2_instance_type:string prop ->
  name:string prop ->
  ec2_inbound_permission:ec2_inbound_permission list ->
  string ->
  t Tf_core.resource
