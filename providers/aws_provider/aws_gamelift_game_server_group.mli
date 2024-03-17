(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_game_server_group__auto_scaling_policy__target_tracking_configuration

type aws_gamelift_game_server_group__auto_scaling_policy
type aws_gamelift_game_server_group__instance_definition
type aws_gamelift_game_server_group__launch_template
type aws_gamelift_game_server_group__timeouts
type aws_gamelift_game_server_group

val aws_gamelift_game_server_group :
  ?tags:(string * string) list ->
  ?vpc_subnets:string list ->
  ?timeouts:aws_gamelift_game_server_group__timeouts ->
  game_server_group_name:string ->
  max_size:float ->
  min_size:float ->
  role_arn:string ->
  auto_scaling_policy:
    aws_gamelift_game_server_group__auto_scaling_policy list ->
  instance_definition:
    aws_gamelift_game_server_group__instance_definition list ->
  launch_template:
    aws_gamelift_game_server_group__launch_template list ->
  string ->
  unit
