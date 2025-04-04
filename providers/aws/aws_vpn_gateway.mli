(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpn_gateway

val aws_vpn_gateway :
  ?amazon_side_asn:string prop ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_id:string prop ->
  unit ->
  aws_vpn_gateway

val yojson_of_aws_vpn_gateway : aws_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  amazon_side_asn : string prop;
  arn : string prop;
  availability_zone : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?amazon_side_asn:string prop ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_id:string prop ->
  string ->
  t

val make :
  ?amazon_side_asn:string prop ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_id:string prop ->
  string ->
  t Tf_core.resource
