(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_connect_peer__timeouts
type aws_ec2_transit_gateway_connect_peer

type t = private {
  arn : string prop;
  bgp_asn : string prop;
  bgp_peer_address : string prop;
  bgp_transit_gateway_addresses : string list prop;
  id : string prop;
  inside_cidr_blocks : string list prop;
  peer_address : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_address : string prop;
  transit_gateway_attachment_id : string prop;
}

val aws_ec2_transit_gateway_connect_peer :
  ?bgp_asn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_address:string prop ->
  ?timeouts:aws_ec2_transit_gateway_connect_peer__timeouts ->
  inside_cidr_blocks:string prop list ->
  peer_address:string prop ->
  transit_gateway_attachment_id:string prop ->
  string ->
  t
