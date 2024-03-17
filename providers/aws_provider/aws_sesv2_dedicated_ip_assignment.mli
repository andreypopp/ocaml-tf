(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_dedicated_ip_assignment__timeouts
type aws_sesv2_dedicated_ip_assignment

val aws_sesv2_dedicated_ip_assignment :
  ?timeouts:aws_sesv2_dedicated_ip_assignment__timeouts ->
  destination_pool_name:string ->
  ip:string ->
  string ->
  unit
