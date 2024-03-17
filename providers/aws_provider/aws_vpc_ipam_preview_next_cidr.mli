(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_preview_next_cidr

type t = private {
  cidr : string prop;
  disallowed_cidrs : string list prop;
  id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
}

val aws_vpc_ipam_preview_next_cidr :
  ?disallowed_cidrs:string prop list ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ipam_pool_id:string prop ->
  string ->
  t
