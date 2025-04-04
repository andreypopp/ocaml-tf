(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpn_connection_route

val aws_vpn_connection_route :
  ?id:string prop ->
  destination_cidr_block:string prop ->
  vpn_connection_id:string prop ->
  unit ->
  aws_vpn_connection_route

val yojson_of_aws_vpn_connection_route :
  aws_vpn_connection_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  destination_cidr_block : string prop;
  id : string prop;
  vpn_connection_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  destination_cidr_block:string prop ->
  vpn_connection_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  destination_cidr_block:string prop ->
  vpn_connection_id:string prop ->
  string ->
  t Tf_core.resource
