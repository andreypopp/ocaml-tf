(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpn_gateway_attachment

val aws_vpn_gateway_attachment :
  ?id:string prop ->
  vpc_id:string prop ->
  vpn_gateway_id:string prop ->
  unit ->
  aws_vpn_gateway_attachment

val yojson_of_aws_vpn_gateway_attachment :
  aws_vpn_gateway_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  vpc_id : string prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  vpc_id:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  vpc_id:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  t Tf_core.resource
