(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_preview_next_cidr

val aws_vpc_ipam_preview_next_cidr :
  ?disallowed_cidrs:string list ->
  ?netmask_length:float ->
  ipam_pool_id:string ->
  string ->
  unit
