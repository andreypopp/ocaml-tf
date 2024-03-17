(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_transit_gateway_peering__timeouts
type aws_networkmanager_transit_gateway_peering

type t = private {
  arn : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  peering_type : string prop;
  resource_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_arn : string prop;
  transit_gateway_peering_attachment_id : string prop;
}

val aws_networkmanager_transit_gateway_peering :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_transit_gateway_peering__timeouts ->
  core_network_id:string prop ->
  transit_gateway_arn:string prop ->
  string ->
  t
