(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_vpc_ipam_pool_cidr_allocation

val aws_vpc_ipam_pool_cidr_allocation :
  ?cidr:string prop ->
  ?description:string prop ->
  ?disallowed_cidrs:string prop list ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ipam_pool_id:string prop ->
  unit ->
  aws_vpc_ipam_pool_cidr_allocation

val yojson_of_aws_vpc_ipam_pool_cidr_allocation :
  aws_vpc_ipam_pool_cidr_allocation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cidr : string prop;
  description : string prop;
  disallowed_cidrs : string list prop;
  id : string prop;
  ipam_pool_allocation_id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
  resource_id : string prop;
  resource_owner : string prop;
  resource_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr:string prop ->
  ?description:string prop ->
  ?disallowed_cidrs:string prop list ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ipam_pool_id:string prop ->
  string ->
  t
