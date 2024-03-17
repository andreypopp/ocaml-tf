(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_transit_gateway_peering__timeouts
type aws_networkmanager_transit_gateway_peering

val aws_networkmanager_transit_gateway_peering :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_transit_gateway_peering__timeouts ->
  core_network_id:string prop ->
  transit_gateway_arn:string prop ->
  string ->
  unit
