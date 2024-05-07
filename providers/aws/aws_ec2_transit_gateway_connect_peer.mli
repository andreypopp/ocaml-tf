(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_connect_peer

val aws_ec2_transit_gateway_connect_peer :
  ?bgp_asn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_address:string prop ->
  ?timeouts:timeouts ->
  inside_cidr_blocks:string prop list ->
  peer_address:string prop ->
  transit_gateway_attachment_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_connect_peer

val yojson_of_aws_ec2_transit_gateway_connect_peer :
  aws_ec2_transit_gateway_connect_peer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?bgp_asn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_address:string prop ->
  ?timeouts:timeouts ->
  inside_cidr_blocks:string prop list ->
  peer_address:string prop ->
  transit_gateway_attachment_id:string prop ->
  string ->
  t

val make :
  ?bgp_asn:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_address:string prop ->
  ?timeouts:timeouts ->
  inside_cidr_blocks:string prop list ->
  peer_address:string prop ->
  transit_gateway_attachment_id:string prop ->
  string ->
  t Tf_core.resource
