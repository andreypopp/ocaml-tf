(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipv6_cidr_block_association__timeouts
type aws_vpc_ipv6_cidr_block_association

val aws_vpc_ipv6_cidr_block_association :
  ?id:string ->
  ?ipv6_cidr_block:string ->
  ?ipv6_netmask_length:float ->
  ?timeouts:aws_vpc_ipv6_cidr_block_association__timeouts ->
  ipv6_ipam_pool_id:string ->
  vpc_id:string ->
  string ->
  unit
