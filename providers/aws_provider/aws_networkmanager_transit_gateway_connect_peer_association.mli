(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_transit_gateway_connect_peer_association__timeouts

type aws_networkmanager_transit_gateway_connect_peer_association

val aws_networkmanager_transit_gateway_connect_peer_association :
  ?id:string prop ->
  ?link_id:string prop ->
  ?timeouts:
    aws_networkmanager_transit_gateway_connect_peer_association__timeouts ->
  device_id:string prop ->
  global_network_id:string prop ->
  transit_gateway_connect_peer_arn:string prop ->
  string ->
  unit
