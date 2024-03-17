(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment

val aws_ec2_transit_gateway_peering_attachment :
  ?id:string ->
  ?peer_account_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  peer_region:string ->
  peer_transit_gateway_id:string ->
  transit_gateway_id:string ->
  string ->
  unit
