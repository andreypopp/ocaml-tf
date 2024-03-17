(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_connect_peer__timeouts
type aws_ec2_transit_gateway_connect_peer

val aws_ec2_transit_gateway_connect_peer :
  ?tags:(string * string) list ->
  ?timeouts:aws_ec2_transit_gateway_connect_peer__timeouts ->
  inside_cidr_blocks:string list ->
  peer_address:string ->
  transit_gateway_attachment_id:string ->
  string ->
  unit
