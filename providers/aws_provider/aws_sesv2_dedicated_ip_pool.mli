(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_dedicated_ip_pool__timeouts
type aws_sesv2_dedicated_ip_pool

val aws_sesv2_dedicated_ip_pool :
  ?id:string ->
  ?scaling_mode:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_sesv2_dedicated_ip_pool__timeouts ->
  pool_name:string ->
  string ->
  unit
