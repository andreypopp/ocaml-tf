(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway__timeouts
type aws_ec2_transit_gateway

val aws_ec2_transit_gateway :
  ?amazon_side_asn:float prop ->
  ?auto_accept_shared_attachments:string prop ->
  ?default_route_table_association:string prop ->
  ?default_route_table_propagation:string prop ->
  ?description:string prop ->
  ?dns_support:string prop ->
  ?id:string prop ->
  ?multicast_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_cidr_blocks:string prop list ->
  ?vpn_ecmp_support:string prop ->
  ?timeouts:aws_ec2_transit_gateway__timeouts ->
  string ->
  unit
