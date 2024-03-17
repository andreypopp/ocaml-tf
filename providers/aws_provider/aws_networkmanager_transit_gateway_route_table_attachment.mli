(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_transit_gateway_route_table_attachment__timeouts

type aws_networkmanager_transit_gateway_route_table_attachment

val aws_networkmanager_transit_gateway_route_table_attachment :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:
    aws_networkmanager_transit_gateway_route_table_attachment__timeouts ->
  peering_id:string ->
  transit_gateway_route_table_arn:string ->
  string ->
  unit
