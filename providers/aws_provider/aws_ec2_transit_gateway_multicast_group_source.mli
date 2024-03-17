(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_group_source

type t = private {
  group_ip_address : string prop;
  id : string prop;
  network_interface_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

val aws_ec2_transit_gateway_multicast_group_source :
  ?id:string prop ->
  group_ip_address:string prop ->
  network_interface_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  string ->
  t
