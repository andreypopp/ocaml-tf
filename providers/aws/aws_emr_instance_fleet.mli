(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_instance_fleet__instance_type_configs__configurations
type aws_emr_instance_fleet__instance_type_configs__ebs_config
type aws_emr_instance_fleet__instance_type_configs

type aws_emr_instance_fleet__launch_specifications__on_demand_specification

type aws_emr_instance_fleet__launch_specifications__spot_specification
type aws_emr_instance_fleet__launch_specifications
type aws_emr_instance_fleet

type t = private {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  provisioned_on_demand_capacity : float prop;
  provisioned_spot_capacity : float prop;
  target_on_demand_capacity : float prop;
  target_spot_capacity : float prop;
}

val aws_emr_instance_fleet :
  ?id:string prop ->
  ?name:string prop ->
  ?target_on_demand_capacity:float prop ->
  ?target_spot_capacity:float prop ->
  cluster_id:string prop ->
  instance_type_configs:
    aws_emr_instance_fleet__instance_type_configs list ->
  launch_specifications:
    aws_emr_instance_fleet__launch_specifications list ->
  string ->
  t
