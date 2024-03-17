(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc = {
  assign_generated_ipv6_cidr_block : bool option; [@option]
      (** assign_generated_ipv6_cidr_block *)
  cidr_block : string option; [@option]  (** cidr_block *)
  enable_dns_hostnames : bool option; [@option]
      (** enable_dns_hostnames *)
  enable_dns_support : bool option; [@option]
      (** enable_dns_support *)
  enable_network_address_usage_metrics : bool option; [@option]
      (** enable_network_address_usage_metrics *)
  id : string option; [@option]  (** id *)
  instance_tenancy : string option; [@option]
      (** instance_tenancy *)
  ipv4_ipam_pool_id : string option; [@option]
      (** ipv4_ipam_pool_id *)
  ipv4_netmask_length : float option; [@option]
      (** ipv4_netmask_length *)
  ipv6_cidr_block : string option; [@option]  (** ipv6_cidr_block *)
  ipv6_cidr_block_network_border_group : string option; [@option]
      (** ipv6_cidr_block_network_border_group *)
  ipv6_ipam_pool_id : string option; [@option]
      (** ipv6_ipam_pool_id *)
  ipv6_netmask_length : float option; [@option]
      (** ipv6_netmask_length *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_vpc *)

let aws_vpc ?assign_generated_ipv6_cidr_block ?cidr_block
    ?enable_dns_hostnames ?enable_dns_support
    ?enable_network_address_usage_metrics ?id ?instance_tenancy
    ?ipv4_ipam_pool_id ?ipv4_netmask_length ?ipv6_cidr_block
    ?ipv6_cidr_block_network_border_group ?ipv6_ipam_pool_id
    ?ipv6_netmask_length ?tags ?tags_all __resource_id =
  let __resource_type = "aws_vpc" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc __resource);
  ()
