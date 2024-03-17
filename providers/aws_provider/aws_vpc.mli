(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc

val aws_vpc :
  ?assign_generated_ipv6_cidr_block:bool ->
  ?enable_dns_support:bool ->
  ?instance_tenancy:string ->
  ?ipv4_ipam_pool_id:string ->
  ?ipv4_netmask_length:float ->
  ?ipv6_ipam_pool_id:string ->
  ?ipv6_netmask_length:float ->
  ?tags:(string * string) list ->
  string ->
  unit
