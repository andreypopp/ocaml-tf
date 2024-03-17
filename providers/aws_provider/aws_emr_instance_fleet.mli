(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_instance_fleet__instance_type_configs__configurations
type aws_emr_instance_fleet__instance_type_configs__ebs_config
type aws_emr_instance_fleet__instance_type_configs

type aws_emr_instance_fleet__launch_specifications__on_demand_specification

type aws_emr_instance_fleet__launch_specifications__spot_specification
type aws_emr_instance_fleet__launch_specifications
type aws_emr_instance_fleet

val aws_emr_instance_fleet :
  ?id:string ->
  ?name:string ->
  ?target_on_demand_capacity:float ->
  ?target_spot_capacity:float ->
  cluster_id:string ->
  instance_type_configs:
    aws_emr_instance_fleet__instance_type_configs list ->
  launch_specifications:
    aws_emr_instance_fleet__launch_specifications list ->
  string ->
  unit
