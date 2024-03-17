(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpn_gateway

val aws_vpn_gateway :
  ?amazon_side_asn:string prop ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_id:string prop ->
  string ->
  unit
