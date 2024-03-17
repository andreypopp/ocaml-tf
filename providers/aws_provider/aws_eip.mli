(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eip__timeouts
type aws_eip

val aws_eip :
  ?address:string prop ->
  ?associate_with_private_ip:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?domain:string prop ->
  ?id:string prop ->
  ?instance:string prop ->
  ?network_border_group:string prop ->
  ?network_interface:string prop ->
  ?public_ipv4_pool:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc:bool prop ->
  ?timeouts:aws_eip__timeouts ->
  string ->
  unit
