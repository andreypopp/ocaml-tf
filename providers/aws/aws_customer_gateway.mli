(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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
  unit ->
  aws_customer_gateway

val yojson_of_aws_customer_gateway : aws_customer_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  bgp_asn : string prop;
  certificate_arn : string prop;
  device_name : string prop;
  id : string prop;
  ip_address : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_arn:string prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bgp_asn:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?certificate_arn:string prop ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bgp_asn:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
