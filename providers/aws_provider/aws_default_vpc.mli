(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_vpc

val aws_default_vpc :
  ?assign_generated_ipv6_cidr_block:bool ->
  ?enable_dns_hostnames:bool ->
  ?enable_dns_support:bool ->
  ?enable_network_address_usage_metrics:bool ->
  ?force_destroy:bool ->
  ?id:string ->
  ?ipv6_cidr_block:string ->
  ?ipv6_cidr_block_network_border_group:string ->
  ?ipv6_ipam_pool_id:string ->
  ?ipv6_netmask_length:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  string ->
  unit
