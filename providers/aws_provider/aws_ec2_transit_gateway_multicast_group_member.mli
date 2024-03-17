(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_group_member

val aws_ec2_transit_gateway_multicast_group_member :
  ?id:string prop ->
  group_ip_address:string prop ->
  network_interface_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  string ->
  unit
