(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_customer_gateway_association__timeouts
type aws_networkmanager_customer_gateway_association

val aws_networkmanager_customer_gateway_association :
  ?id:string prop ->
  ?link_id:string prop ->
  ?timeouts:aws_networkmanager_customer_gateway_association__timeouts ->
  customer_gateway_arn:string prop ->
  device_id:string prop ->
  global_network_id:string prop ->
  string ->
  unit
