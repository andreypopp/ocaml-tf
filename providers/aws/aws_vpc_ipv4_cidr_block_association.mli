(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_vpc_ipv4_cidr_block_association

val aws_vpc_ipv4_cidr_block_association :
  ?cidr_block:string prop ->
  ?id:string prop ->
  ?ipv4_ipam_pool_id:string prop ->
  ?ipv4_netmask_length:float prop ->
  ?timeouts:timeouts ->
  vpc_id:string prop ->
  unit ->
  aws_vpc_ipv4_cidr_block_association

val yojson_of_aws_vpc_ipv4_cidr_block_association :
  aws_vpc_ipv4_cidr_block_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cidr_block : string prop;
  id : string prop;
  ipv4_ipam_pool_id : string prop;
  ipv4_netmask_length : float prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr_block:string prop ->
  ?id:string prop ->
  ?ipv4_ipam_pool_id:string prop ->
  ?ipv4_netmask_length:float prop ->
  ?timeouts:timeouts ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?cidr_block:string prop ->
  ?id:string prop ->
  ?ipv4_ipam_pool_id:string prop ->
  ?ipv4_netmask_length:float prop ->
  ?timeouts:timeouts ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
