(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment

val aws_ec2_transit_gateway_peering_attachment :
  ?tags:(string * string) list ->
  peer_region:string ->
  peer_transit_gateway_id:string ->
  transit_gateway_id:string ->
  string ->
  unit
