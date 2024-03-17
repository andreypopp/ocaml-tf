(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_customer_gateway

val aws_customer_gateway :
  ?certificate_arn:string ->
  ?device_name:string ->
  ?ip_address:string ->
  ?tags:(string * string) list ->
  bgp_asn:string ->
  type_:string ->
  string ->
  unit
