(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_pool_cidr__cidr_authorization_context
type aws_vpc_ipam_pool_cidr__timeouts
type aws_vpc_ipam_pool_cidr

val aws_vpc_ipam_pool_cidr :
  ?netmask_length:float ->
  ?timeouts:aws_vpc_ipam_pool_cidr__timeouts ->
  ipam_pool_id:string ->
  cidr_authorization_context:
    aws_vpc_ipam_pool_cidr__cidr_authorization_context list ->
  string ->
  unit
