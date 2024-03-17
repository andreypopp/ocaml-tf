(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_filter_rule__destination_port_range
type aws_ec2_traffic_mirror_filter_rule__source_port_range
type aws_ec2_traffic_mirror_filter_rule

type t = private {
  arn : string prop;
  description : string prop;
  destination_cidr_block : string prop;
  id : string prop;
  protocol : float prop;
  rule_action : string prop;
  rule_number : float prop;
  source_cidr_block : string prop;
  traffic_direction : string prop;
  traffic_mirror_filter_id : string prop;
}

val aws_ec2_traffic_mirror_filter_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?protocol:float prop ->
  destination_cidr_block:string prop ->
  rule_action:string prop ->
  rule_number:float prop ->
  source_cidr_block:string prop ->
  traffic_direction:string prop ->
  traffic_mirror_filter_id:string prop ->
  destination_port_range:
    aws_ec2_traffic_mirror_filter_rule__destination_port_range list ->
  source_port_range:
    aws_ec2_traffic_mirror_filter_rule__source_port_range list ->
  string ->
  t
