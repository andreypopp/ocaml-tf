(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpc_endpoint_private_dns

val aws_vpc_endpoint_private_dns :
  private_dns_enabled:bool prop ->
  vpc_endpoint_id:string prop ->
  unit ->
  aws_vpc_endpoint_private_dns

val yojson_of_aws_vpc_endpoint_private_dns :
  aws_vpc_endpoint_private_dns -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  private_dns_enabled : bool prop;
  vpc_endpoint_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  private_dns_enabled:bool prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t

val make :
  private_dns_enabled:bool prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t Tf_core.resource
