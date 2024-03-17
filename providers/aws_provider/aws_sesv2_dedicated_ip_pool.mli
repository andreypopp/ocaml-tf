(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_dedicated_ip_pool__timeouts
type aws_sesv2_dedicated_ip_pool

val aws_sesv2_dedicated_ip_pool :
  ?id:string prop ->
  ?scaling_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_sesv2_dedicated_ip_pool__timeouts ->
  pool_name:string prop ->
  string ->
  unit
