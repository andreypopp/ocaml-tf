(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_transit_gateway_connect_peer_association__timeouts

type aws_networkmanager_transit_gateway_connect_peer_association

val aws_networkmanager_transit_gateway_connect_peer_association :
  ?link_id:string ->
  ?timeouts:
    aws_networkmanager_transit_gateway_connect_peer_association__timeouts ->
  device_id:string ->
  global_network_id:string ->
  transit_gateway_connect_peer_arn:string ->
  string ->
  unit
