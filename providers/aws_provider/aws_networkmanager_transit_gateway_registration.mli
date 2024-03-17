(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_transit_gateway_registration__timeouts
type aws_networkmanager_transit_gateway_registration

val aws_networkmanager_transit_gateway_registration :
  ?id:string prop ->
  ?timeouts:aws_networkmanager_transit_gateway_registration__timeouts ->
  global_network_id:string prop ->
  transit_gateway_arn:string prop ->
  string ->
  unit
