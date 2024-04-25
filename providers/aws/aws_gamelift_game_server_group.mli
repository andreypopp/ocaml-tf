(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_scaling_policy__target_tracking_configuration

val auto_scaling_policy__target_tracking_configuration :
  target_value:float prop ->
  unit ->
  auto_scaling_policy__target_tracking_configuration

type auto_scaling_policy

val auto_scaling_policy :
  ?estimated_instance_warmup:float prop ->
  target_tracking_configuration:
    auto_scaling_policy__target_tracking_configuration list ->
  unit ->
  auto_scaling_policy

type instance_definition

val instance_definition :
  ?weighted_capacity:string prop ->
  instance_type:string prop ->
  unit ->
  instance_definition

type launch_template

val launch_template :
  ?id:string prop ->
  ?name:string prop ->
  ?version:string prop ->
  unit ->
  launch_template

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_gamelift_game_server_group

val aws_gamelift_game_server_group :
  ?balancing_strategy:string prop ->
  ?game_server_protection_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_subnets:string prop list ->
  ?auto_scaling_policy:auto_scaling_policy list ->
  ?timeouts:timeouts ->
  game_server_group_name:string prop ->
  max_size:float prop ->
  min_size:float prop ->
  role_arn:string prop ->
  instance_definition:instance_definition list ->
  launch_template:launch_template list ->
  unit ->
  aws_gamelift_game_server_group

val yojson_of_aws_gamelift_game_server_group :
  aws_gamelift_game_server_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auto_scaling_group_arn : string prop;
  balancing_strategy : string prop;
  game_server_group_name : string prop;
  game_server_protection_policy : string prop;
  id : string prop;
  max_size : float prop;
  min_size : float prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_subnets : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?balancing_strategy:string prop ->
  ?game_server_protection_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_subnets:string prop list ->
  ?auto_scaling_policy:auto_scaling_policy list ->
  ?timeouts:timeouts ->
  game_server_group_name:string prop ->
  max_size:float prop ->
  min_size:float prop ->
  role_arn:string prop ->
  instance_definition:instance_definition list ->
  launch_template:launch_template list ->
  string ->
  t

val make :
  ?balancing_strategy:string prop ->
  ?game_server_protection_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_subnets:string prop list ->
  ?auto_scaling_policy:auto_scaling_policy list ->
  ?timeouts:timeouts ->
  game_server_group_name:string prop ->
  max_size:float prop ->
  min_size:float prop ->
  role_arn:string prop ->
  instance_definition:instance_definition list ->
  launch_template:launch_template list ->
  string ->
  t Tf_core.resource
