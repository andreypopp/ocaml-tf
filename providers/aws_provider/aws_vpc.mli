(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc

type t = private {
  arn : string prop;
  assign_generated_ipv6_cidr_block : bool prop;
  cidr_block : string prop;
  default_network_acl_id : string prop;
  default_route_table_id : string prop;
  default_security_group_id : string prop;
  dhcp_options_id : string prop;
  enable_dns_hostnames : bool prop;
  enable_dns_support : bool prop;
  enable_network_address_usage_metrics : bool prop;
  id : string prop;
  instance_tenancy : string prop;
  ipv4_ipam_pool_id : string prop;
  ipv4_netmask_length : float prop;
  ipv6_association_id : string prop;
  ipv6_cidr_block : string prop;
  ipv6_cidr_block_network_border_group : string prop;
  ipv6_ipam_pool_id : string prop;
  ipv6_netmask_length : float prop;
  main_route_table_id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpc :
  ?assign_generated_ipv6_cidr_block:bool prop ->
  ?cidr_block:string prop ->
  ?enable_dns_hostnames:bool prop ->
  ?enable_dns_support:bool prop ->
  ?enable_network_address_usage_metrics:bool prop ->
  ?id:string prop ->
  ?instance_tenancy:string prop ->
  ?ipv4_ipam_pool_id:string prop ->
  ?ipv4_netmask_length:float prop ->
  ?ipv6_cidr_block:string prop ->
  ?ipv6_cidr_block_network_border_group:string prop ->
  ?ipv6_ipam_pool_id:string prop ->
  ?ipv6_netmask_length:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
