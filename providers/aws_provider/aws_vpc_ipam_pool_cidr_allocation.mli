(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_pool_cidr_allocation

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

val aws_vpc_ipam_pool_cidr_allocation :
  ?cidr:string prop ->
  ?description:string prop ->
  ?disallowed_cidrs:string prop list ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ipam_pool_id:string prop ->
  string ->
  t
