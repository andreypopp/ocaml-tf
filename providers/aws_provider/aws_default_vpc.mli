(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_vpc

val aws_default_vpc :
  ?assign_generated_ipv6_cidr_block:bool ->
  ?enable_dns_hostnames:bool ->
  ?enable_dns_support:bool ->
  ?force_destroy:bool ->
  ?ipv6_ipam_pool_id:string ->
  ?ipv6_netmask_length:float ->
  ?tags:(string * string) list ->
  string ->
  unit
