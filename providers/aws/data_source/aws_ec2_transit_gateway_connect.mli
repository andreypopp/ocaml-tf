(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ec2_transit_gateway_connect

val aws_ec2_transit_gateway_connect :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?transit_gateway_connect_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ec2_transit_gateway_connect

val yojson_of_aws_ec2_transit_gateway_connect :
  aws_ec2_transit_gateway_connect -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  protocol : string prop;
  tags : (string * string) list prop;
  transit_gateway_connect_id : string prop;
  transit_gateway_id : string prop;
  transport_attachment_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?transit_gateway_connect_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?transit_gateway_connect_id:string prop ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
