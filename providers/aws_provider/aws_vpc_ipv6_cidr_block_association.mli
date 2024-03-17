(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipv6_cidr_block_association__timeouts
type aws_vpc_ipv6_cidr_block_association

val aws_vpc_ipv6_cidr_block_association :
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?ipv6_netmask_length:float prop ->
  ?timeouts:aws_vpc_ipv6_cidr_block_association__timeouts ->
  ipv6_ipam_pool_id:string prop ->
  vpc_id:string prop ->
  string ->
  unit
