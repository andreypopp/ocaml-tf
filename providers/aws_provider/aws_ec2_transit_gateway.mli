(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway__timeouts
type aws_ec2_transit_gateway

val aws_ec2_transit_gateway :
  ?amazon_side_asn:float ->
  ?auto_accept_shared_attachments:string ->
  ?default_route_table_association:string ->
  ?default_route_table_propagation:string ->
  ?description:string ->
  ?dns_support:string ->
  ?id:string ->
  ?multicast_support:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?transit_gateway_cidr_blocks:string list ->
  ?vpn_ecmp_support:string ->
  ?timeouts:aws_ec2_transit_gateway__timeouts ->
  string ->
  unit
