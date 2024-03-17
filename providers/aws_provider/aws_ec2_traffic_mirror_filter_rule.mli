(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_filter_rule__destination_port_range
type aws_ec2_traffic_mirror_filter_rule__source_port_range
type aws_ec2_traffic_mirror_filter_rule

val aws_ec2_traffic_mirror_filter_rule :
  ?description:string ->
  ?id:string ->
  ?protocol:float ->
  destination_cidr_block:string ->
  rule_action:string ->
  rule_number:float ->
  source_cidr_block:string ->
  traffic_direction:string ->
  traffic_mirror_filter_id:string ->
  destination_port_range:
    aws_ec2_traffic_mirror_filter_rule__destination_port_range list ->
  source_port_range:
    aws_ec2_traffic_mirror_filter_rule__source_port_range list ->
  string ->
  unit
