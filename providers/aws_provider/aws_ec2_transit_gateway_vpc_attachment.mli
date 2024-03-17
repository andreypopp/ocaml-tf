(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_vpc_attachment

val aws_ec2_transit_gateway_vpc_attachment :
  ?appliance_mode_support:string ->
  ?dns_support:string ->
  ?id:string ->
  ?ipv6_support:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?transit_gateway_default_route_table_association:bool ->
  ?transit_gateway_default_route_table_propagation:bool ->
  subnet_ids:string list ->
  transit_gateway_id:string ->
  vpc_id:string ->
  string ->
  unit
