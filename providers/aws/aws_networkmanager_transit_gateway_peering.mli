(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_networkmanager_transit_gateway_peering

val aws_networkmanager_transit_gateway_peering :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  transit_gateway_arn:string prop ->
  unit ->
  aws_networkmanager_transit_gateway_peering

val yojson_of_aws_networkmanager_transit_gateway_peering :
  aws_networkmanager_transit_gateway_peering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  peering_type : string prop;
  resource_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  transit_gateway_arn : string prop;
  transit_gateway_peering_attachment_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  transit_gateway_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  core_network_id:string prop ->
  transit_gateway_arn:string prop ->
  string ->
  t Tf_core.resource
