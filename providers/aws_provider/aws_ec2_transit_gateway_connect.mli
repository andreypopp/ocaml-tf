(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_connect__timeouts
type aws_ec2_transit_gateway_connect

val aws_ec2_transit_gateway_connect :
  ?protocol:string ->
  ?tags:(string * string) list ->
  ?transit_gateway_default_route_table_association:bool ->
  ?transit_gateway_default_route_table_propagation:bool ->
  ?timeouts:aws_ec2_transit_gateway_connect__timeouts ->
  transit_gateway_id:string ->
  transport_attachment_id:string ->
  string ->
  unit
