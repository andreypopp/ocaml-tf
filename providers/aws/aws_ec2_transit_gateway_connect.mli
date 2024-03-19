(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_ec2_transit_gateway_connect

val aws_ec2_transit_gateway_connect :
  ?id:string prop ->
  ?protocol:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_default_route_table_association:bool prop ->
  ?transit_gateway_default_route_table_propagation:bool prop ->
  ?timeouts:timeouts ->
  transit_gateway_id:string prop ->
  transport_attachment_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_connect

val yojson_of_aws_ec2_transit_gateway_connect :
  aws_ec2_transit_gateway_connect -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  protocol : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_default_route_table_association : bool prop;
  transit_gateway_default_route_table_propagation : bool prop;
  transit_gateway_id : string prop;
  transport_attachment_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?protocol:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_default_route_table_association:bool prop ->
  ?transit_gateway_default_route_table_propagation:bool prop ->
  ?timeouts:timeouts ->
  transit_gateway_id:string prop ->
  transport_attachment_id:string prop ->
  string ->
  t
