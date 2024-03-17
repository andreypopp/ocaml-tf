(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_vpc_attachment

val aws_ec2_transit_gateway_vpc_attachment :
  ?appliance_mode_support:string prop ->
  ?dns_support:string prop ->
  ?id:string prop ->
  ?ipv6_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_default_route_table_association:bool prop ->
  ?transit_gateway_default_route_table_propagation:bool prop ->
  subnet_ids:string prop list ->
  transit_gateway_id:string prop ->
  vpc_id:string prop ->
  string ->
  unit
