(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment_accepter

type t = private {
  id : string prop;
  peer_account_id : string prop;
  peer_region : string prop;
  peer_transit_gateway_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
}

val aws_ec2_transit_gateway_peering_attachment_accepter :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  transit_gateway_attachment_id:string prop ->
  string ->
  t
