(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cidr_authorization_context

val cidr_authorization_context :
  ?message:string prop ->
  ?signature:string prop ->
  unit ->
  cidr_authorization_context

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_vpc_ipam_pool_cidr

val aws_vpc_ipam_pool_cidr :
  ?cidr:string prop ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ?timeouts:timeouts ->
  ipam_pool_id:string prop ->
  cidr_authorization_context:cidr_authorization_context list ->
  unit ->
  aws_vpc_ipam_pool_cidr

val yojson_of_aws_vpc_ipam_pool_cidr : aws_vpc_ipam_pool_cidr -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cidr : string prop;
  id : string prop;
  ipam_pool_cidr_id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr:string prop ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ?timeouts:timeouts ->
  ipam_pool_id:string prop ->
  cidr_authorization_context:cidr_authorization_context list ->
  string ->
  t

val make :
  ?cidr:string prop ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ?timeouts:timeouts ->
  ipam_pool_id:string prop ->
  cidr_authorization_context:cidr_authorization_context list ->
  string ->
  t Tf_core.resource
