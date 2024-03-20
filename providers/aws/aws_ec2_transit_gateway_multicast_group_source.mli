(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_transit_gateway_multicast_group_source

val aws_ec2_transit_gateway_multicast_group_source :
  ?id:string prop ->
  group_ip_address:string prop ->
  network_interface_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_multicast_group_source

val yojson_of_aws_ec2_transit_gateway_multicast_group_source :
  aws_ec2_transit_gateway_multicast_group_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group_ip_address : string prop;
  id : string prop;
  network_interface_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_ip_address:string prop ->
  network_interface_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  group_ip_address:string prop ->
  network_interface_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  string ->
  t Tf_core.resource
