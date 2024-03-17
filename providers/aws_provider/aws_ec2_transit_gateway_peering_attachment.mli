(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment

val aws_ec2_transit_gateway_peering_attachment :
  ?id:string prop ->
  ?peer_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  peer_region:string prop ->
  peer_transit_gateway_id:string prop ->
  transit_gateway_id:string prop ->
  string ->
  unit
