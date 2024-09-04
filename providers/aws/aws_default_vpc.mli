(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  unit ->
  aws_default_vpc

val yojson_of_aws_default_vpc : aws_default_vpc -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  existing_default_vpc : bool prop;
  force_destroy : bool prop;
  id : string prop;
  instance_tenancy : string prop;
  ipv6_association_id : string prop;
  ipv6_cidr_block : string prop;
  ipv6_cidr_block_network_border_group : string prop;
  ipv6_ipam_pool_id : string prop;
  ipv6_netmask_length : float prop;
  main_route_table_id : string prop;
  owner_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
