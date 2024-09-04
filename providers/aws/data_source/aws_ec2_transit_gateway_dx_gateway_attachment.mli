(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_dx_gateway_attachment

val aws_ec2_transit_gateway_dx_gateway_attachment :
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_transit_gateway_dx_gateway_attachment

val yojson_of_aws_ec2_transit_gateway_dx_gateway_attachment :
  aws_ec2_transit_gateway_dx_gateway_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dx_gateway_id : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  transit_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?dx_gateway_id:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?transit_gateway_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
