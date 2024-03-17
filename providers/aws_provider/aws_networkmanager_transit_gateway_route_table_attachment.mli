(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_transit_gateway_route_table_attachment__timeouts

type aws_networkmanager_transit_gateway_route_table_attachment

val aws_networkmanager_transit_gateway_route_table_attachment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:
    aws_networkmanager_transit_gateway_route_table_attachment__timeouts ->
  peering_id:string prop ->
  transit_gateway_route_table_arn:string prop ->
  string ->
  unit
