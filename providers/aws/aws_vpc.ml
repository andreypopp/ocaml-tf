(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc = {
  assign_generated_ipv6_cidr_block : bool prop option; [@option]
      (** assign_generated_ipv6_cidr_block *)
  cidr_block : string prop option; [@option]  (** cidr_block *)
  enable_dns_hostnames : bool prop option; [@option]
      (** enable_dns_hostnames *)
  enable_dns_support : bool prop option; [@option]
      (** enable_dns_support *)
  enable_network_address_usage_metrics : bool prop option; [@option]
      (** enable_network_address_usage_metrics *)
  id : string prop option; [@option]  (** id *)
  instance_tenancy : string prop option; [@option]
      (** instance_tenancy *)
  ipv4_ipam_pool_id : string prop option; [@option]
      (** ipv4_ipam_pool_id *)
  ipv4_netmask_length : float prop option; [@option]
      (** ipv4_netmask_length *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  ipv6_cidr_block_network_border_group : string prop option;
      [@option]
      (** ipv6_cidr_block_network_border_group *)
  ipv6_ipam_pool_id : string prop option; [@option]
      (** ipv6_ipam_pool_id *)
  ipv6_netmask_length : float prop option; [@option]
      (** ipv6_netmask_length *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_vpc *)

let aws_vpc ?assign_generated_ipv6_cidr_block ?cidr_block
    ?enable_dns_hostnames ?enable_dns_support
    ?enable_network_address_usage_metrics ?id ?instance_tenancy
    ?ipv4_ipam_pool_id ?ipv4_netmask_length ?ipv6_cidr_block
    ?ipv6_cidr_block_network_border_group ?ipv6_ipam_pool_id
    ?ipv6_netmask_length ?tags ?tags_all () : aws_vpc =
  {
    assign_generated_ipv6_cidr_block;
    cidr_block;
    enable_dns_hostnames;
    enable_dns_support;
    enable_network_address_usage_metrics;
    id;
    instance_tenancy;
    ipv4_ipam_pool_id;
    ipv4_netmask_length;
    ipv6_cidr_block;
    ipv6_cidr_block_network_border_group;
    ipv6_ipam_pool_id;
    ipv6_netmask_length;
    tags;
    tags_all;
  }

type t = {
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

let register ?tf_module ?assign_generated_ipv6_cidr_block ?cidr_block
    ?enable_dns_hostnames ?enable_dns_support
    ?enable_network_address_usage_metrics ?id ?instance_tenancy
    ?ipv4_ipam_pool_id ?ipv4_netmask_length ?ipv6_cidr_block
    ?ipv6_cidr_block_network_border_group ?ipv6_ipam_pool_id
    ?ipv6_netmask_length ?tags ?tags_all __resource_id =
  let __resource_type = "aws_vpc" in
  let __resource =
    aws_vpc ?assign_generated_ipv6_cidr_block ?cidr_block
      ?enable_dns_hostnames ?enable_dns_support
      ?enable_network_address_usage_metrics ?id ?instance_tenancy
      ?ipv4_ipam_pool_id ?ipv4_netmask_length ?ipv6_cidr_block
      ?ipv6_cidr_block_network_border_group ?ipv6_ipam_pool_id
      ?ipv6_netmask_length ?tags ?tags_all ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       assign_generated_ipv6_cidr_block =
         Prop.computed __resource_type __resource_id
           "assign_generated_ipv6_cidr_block";
       cidr_block =
         Prop.computed __resource_type __resource_id "cidr_block";
       default_network_acl_id =
         Prop.computed __resource_type __resource_id
           "default_network_acl_id";
       default_route_table_id =
         Prop.computed __resource_type __resource_id
           "default_route_table_id";
       default_security_group_id =
         Prop.computed __resource_type __resource_id
           "default_security_group_id";
       dhcp_options_id =
         Prop.computed __resource_type __resource_id
           "dhcp_options_id";
       enable_dns_hostnames =
         Prop.computed __resource_type __resource_id
           "enable_dns_hostnames";
       enable_dns_support =
         Prop.computed __resource_type __resource_id
           "enable_dns_support";
       enable_network_address_usage_metrics =
         Prop.computed __resource_type __resource_id
           "enable_network_address_usage_metrics";
       id = Prop.computed __resource_type __resource_id "id";
       instance_tenancy =
         Prop.computed __resource_type __resource_id
           "instance_tenancy";
       ipv4_ipam_pool_id =
         Prop.computed __resource_type __resource_id
           "ipv4_ipam_pool_id";
       ipv4_netmask_length =
         Prop.computed __resource_type __resource_id
           "ipv4_netmask_length";
       ipv6_association_id =
         Prop.computed __resource_type __resource_id
           "ipv6_association_id";
       ipv6_cidr_block =
         Prop.computed __resource_type __resource_id
           "ipv6_cidr_block";
       ipv6_cidr_block_network_border_group =
         Prop.computed __resource_type __resource_id
           "ipv6_cidr_block_network_border_group";
       ipv6_ipam_pool_id =
         Prop.computed __resource_type __resource_id
           "ipv6_ipam_pool_id";
       ipv6_netmask_length =
         Prop.computed __resource_type __resource_id
           "ipv6_netmask_length";
       main_route_table_id =
         Prop.computed __resource_type __resource_id
           "main_route_table_id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
