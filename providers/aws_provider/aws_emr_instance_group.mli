(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_emr_instance_group__ebs_config
type aws_emr_instance_group

val aws_emr_instance_group :
  ?autoscaling_policy:string prop ->
  ?bid_price:string prop ->
  ?configurations_json:string prop ->
  ?ebs_optimized:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?name:string prop ->
  cluster_id:string prop ->
  instance_type:string prop ->
  ebs_config:aws_emr_instance_group__ebs_config list ->
  string ->
  unit
