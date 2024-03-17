(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipv4_cidr_block_association__timeouts
type aws_vpc_ipv4_cidr_block_association

val aws_vpc_ipv4_cidr_block_association :
  ?cidr_block:string ->
  ?id:string ->
  ?ipv4_ipam_pool_id:string ->
  ?ipv4_netmask_length:float ->
  ?timeouts:aws_vpc_ipv4_cidr_block_association__timeouts ->
  vpc_id:string ->
  string ->
  unit
