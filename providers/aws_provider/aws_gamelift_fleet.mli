(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_fleet__certificate_configuration
type aws_gamelift_fleet__ec2_inbound_permission
type aws_gamelift_fleet__resource_creation_limit_policy
type aws_gamelift_fleet__runtime_configuration__server_process
type aws_gamelift_fleet__runtime_configuration
type aws_gamelift_fleet__timeouts
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_gamelift_fleet__timeouts ->
  ec2_instance_type:string prop ->
  name:string prop ->
  certificate_configuration:
    aws_gamelift_fleet__certificate_configuration list ->
  ec2_inbound_permission:
    aws_gamelift_fleet__ec2_inbound_permission list ->
  resource_creation_limit_policy:
    aws_gamelift_fleet__resource_creation_limit_policy list ->
  runtime_configuration:
    aws_gamelift_fleet__runtime_configuration list ->
  string ->
  unit
