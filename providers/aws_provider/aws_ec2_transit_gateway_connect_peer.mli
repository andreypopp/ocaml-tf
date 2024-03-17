(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_connect_peer__timeouts
type aws_ec2_transit_gateway_connect_peer

val aws_ec2_transit_gateway_connect_peer :
  ?bgp_asn:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?transit_gateway_address:string ->
  ?timeouts:aws_ec2_transit_gateway_connect_peer__timeouts ->
  inside_cidr_blocks:string list ->
  peer_address:string ->
  transit_gateway_attachment_id:string ->
  string ->
  unit
