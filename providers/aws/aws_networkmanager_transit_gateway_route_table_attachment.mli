(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_networkmanager_transit_gateway_route_table_attachment

val aws_networkmanager_transit_gateway_route_table_attachment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  peering_id:string prop ->
  transit_gateway_route_table_arn:string prop ->
  unit ->
  aws_networkmanager_transit_gateway_route_table_attachment

val yojson_of_aws_networkmanager_transit_gateway_route_table_attachment :
  aws_networkmanager_transit_gateway_route_table_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  peering_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_route_table_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  peering_id:string prop ->
  transit_gateway_route_table_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  peering_id:string prop ->
  transit_gateway_route_table_arn:string prop ->
  string ->
  t Tf_core.resource
