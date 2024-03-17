(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpn_gateway

val aws_vpn_gateway :
  ?amazon_side_asn:string ->
  ?availability_zone:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_id:string ->
  string ->
  unit
