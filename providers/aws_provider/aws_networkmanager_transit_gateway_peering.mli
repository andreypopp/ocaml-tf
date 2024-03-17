(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_transit_gateway_peering__timeouts
type aws_networkmanager_transit_gateway_peering

val aws_networkmanager_transit_gateway_peering :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_networkmanager_transit_gateway_peering__timeouts ->
  core_network_id:string ->
  transit_gateway_arn:string ->
  string ->
  unit
