(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eip__timeouts
type aws_eip

val aws_eip :
  ?address:string ->
  ?associate_with_private_ip:string ->
  ?customer_owned_ipv4_pool:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_eip__timeouts ->
  string ->
  unit
