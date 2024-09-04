(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_customer_gateway

val aws_customer_gateway :
  ?bgp_asn:string prop ->
  ?bgp_asn_extended:string prop ->
  ?certificate_arn:string prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  type_:string prop ->
  unit ->
  aws_customer_gateway

val yojson_of_aws_customer_gateway : aws_customer_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  bgp_asn : string prop;
  bgp_asn_extended : string prop;
  certificate_arn : string prop;
  device_name : string prop;
  id : string prop;
  ip_address : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bgp_asn:string prop ->
  ?bgp_asn_extended:string prop ->
  ?certificate_arn:string prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  type_:string prop ->
  string ->
  t

val make :
  ?bgp_asn:string prop ->
  ?bgp_asn_extended:string prop ->
  ?certificate_arn:string prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  type_:string prop ->
  string ->
  t Tf_core.resource
