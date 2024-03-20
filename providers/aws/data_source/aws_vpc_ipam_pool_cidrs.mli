(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ipam_pool_cidrs = {
  cidr : string prop;  (** cidr *)
  state : string prop;  (** state *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_vpc_ipam_pool_cidrs

val aws_vpc_ipam_pool_cidrs :
  ?id:string prop ->
  ?timeouts:timeouts ->
  ipam_pool_id:string prop ->
  filter:filter list ->
  unit ->
  aws_vpc_ipam_pool_cidrs

val yojson_of_aws_vpc_ipam_pool_cidrs :
  aws_vpc_ipam_pool_cidrs -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ipam_pool_cidrs : ipam_pool_cidrs list prop;
  ipam_pool_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  ipam_pool_id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  ipam_pool_id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
