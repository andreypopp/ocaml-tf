(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_peering_attachment

val aws_ec2_transit_gateway_peering_attachment :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_transit_gateway_peering_attachment

val yojson_of_aws_ec2_transit_gateway_peering_attachment :
  aws_ec2_transit_gateway_peering_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  peer_account_id : string prop;
  peer_region : string prop;
  peer_transit_gateway_id : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  transit_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
