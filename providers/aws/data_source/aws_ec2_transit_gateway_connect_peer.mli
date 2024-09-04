(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_connect_peer

val aws_ec2_transit_gateway_connect_peer :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_connect_peer_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
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
  tags : string Tf_core.assoc prop;
  transit_gateway_address : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_connect_peer_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_connect_peer_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_connect_peer_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
