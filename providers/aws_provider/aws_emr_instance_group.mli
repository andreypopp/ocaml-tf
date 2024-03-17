(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_instance_group__ebs_config
type aws_emr_instance_group

val aws_emr_instance_group :
  ?autoscaling_policy:string ->
  ?bid_price:string ->
  ?configurations_json:string ->
  ?ebs_optimized:bool ->
  ?id:string ->
  ?instance_count:float ->
  ?name:string ->
  cluster_id:string ->
  instance_type:string ->
  ebs_config:aws_emr_instance_group__ebs_config list ->
  string ->
  unit
