(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_vpc

val aws_default_vpc :
  ?assign_generated_ipv6_cidr_block:bool prop ->
  ?enable_dns_hostnames:bool prop ->
  ?enable_dns_support:bool prop ->
  ?enable_network_address_usage_metrics:bool prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?ipv6_cidr_block:string prop ->
  ?ipv6_cidr_block_network_border_group:string prop ->
  ?ipv6_ipam_pool_id:string prop ->
  ?ipv6_netmask_length:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  unit
