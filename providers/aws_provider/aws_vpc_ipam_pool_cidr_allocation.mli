(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_pool_cidr_allocation

val aws_vpc_ipam_pool_cidr_allocation :
  ?description:string ->
  ?disallowed_cidrs:string list ->
  ?netmask_length:float ->
  ipam_pool_id:string ->
  string ->
  unit
