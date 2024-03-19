(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type destination_port_range

val destination_port_range :
  ?from_port:float prop ->
  ?to_port:float prop ->
  unit ->
  destination_port_range

type source_port_range

val source_port_range :
  ?from_port:float prop ->
  ?to_port:float prop ->
  unit ->
  source_port_range

type aws_ec2_traffic_mirror_filter_rule

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
  destination_port_range:destination_port_range list ->
  source_port_range:source_port_range list ->
  unit ->
  aws_ec2_traffic_mirror_filter_rule

val yojson_of_aws_ec2_traffic_mirror_filter_rule :
  aws_ec2_traffic_mirror_filter_rule -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?protocol:float prop ->
  destination_cidr_block:string prop ->
  rule_action:string prop ->
  rule_number:float prop ->
  source_cidr_block:string prop ->
  traffic_direction:string prop ->
  traffic_mirror_filter_id:string prop ->
  destination_port_range:destination_port_range list ->
  source_port_range:source_port_range list ->
  string ->
  t
