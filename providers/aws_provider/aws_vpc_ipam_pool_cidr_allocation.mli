(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_pool_cidr_allocation

val aws_vpc_ipam_pool_cidr_allocation :
  ?cidr:string prop ->
  ?description:string prop ->
  ?disallowed_cidrs:string prop list ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ipam_pool_id:string prop ->
  string ->
  unit
