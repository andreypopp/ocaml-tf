(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_game_server_group__auto_scaling_policy__target_tracking_configuration

type aws_gamelift_game_server_group__auto_scaling_policy
type aws_gamelift_game_server_group__instance_definition
type aws_gamelift_game_server_group__launch_template
type aws_gamelift_game_server_group__timeouts
type aws_gamelift_game_server_group

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

val aws_gamelift_game_server_group :
  ?balancing_strategy:string prop ->
  ?game_server_protection_policy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_subnets:string prop list ->
  ?timeouts:aws_gamelift_game_server_group__timeouts ->
  game_server_group_name:string prop ->
  max_size:float prop ->
  min_size:float prop ->
  role_arn:string prop ->
  auto_scaling_policy:
    aws_gamelift_game_server_group__auto_scaling_policy list ->
  instance_definition:
    aws_gamelift_game_server_group__instance_definition list ->
  launch_template:
    aws_gamelift_game_server_group__launch_template list ->
  string ->
  t
