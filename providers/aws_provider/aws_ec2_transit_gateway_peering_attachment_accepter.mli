(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment_accepter

val aws_ec2_transit_gateway_peering_attachment_accepter :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  transit_gateway_attachment_id:string ->
  string ->
  unit
