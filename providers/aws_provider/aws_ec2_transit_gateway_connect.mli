(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_connect__timeouts
type aws_ec2_transit_gateway_connect

val aws_ec2_transit_gateway_connect :
  ?id:string prop ->
  ?protocol:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_default_route_table_association:bool prop ->
  ?transit_gateway_default_route_table_propagation:bool prop ->
  ?timeouts:aws_ec2_transit_gateway_connect__timeouts ->
  transit_gateway_id:string prop ->
  transport_attachment_id:string prop ->
  string ->
  unit
