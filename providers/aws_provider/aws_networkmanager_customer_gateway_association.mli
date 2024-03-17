(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_customer_gateway_association__timeouts
type aws_networkmanager_customer_gateway_association

val aws_networkmanager_customer_gateway_association :
  ?id:string ->
  ?link_id:string ->
  ?timeouts:aws_networkmanager_customer_gateway_association__timeouts ->
  customer_gateway_arn:string ->
  device_id:string ->
  global_network_id:string ->
  string ->
  unit
