(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_customer_gateway

val aws_customer_gateway :
  ?certificate_arn:string prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bgp_asn:string prop ->
  type_:string prop ->
  string ->
  unit
