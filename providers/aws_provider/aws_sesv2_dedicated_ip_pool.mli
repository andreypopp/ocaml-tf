(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_dedicated_ip_pool__timeouts
type aws_sesv2_dedicated_ip_pool

val aws_sesv2_dedicated_ip_pool :
  ?tags:(string * string) list ->
  ?timeouts:aws_sesv2_dedicated_ip_pool__timeouts ->
  pool_name:string ->
  string ->
  unit
