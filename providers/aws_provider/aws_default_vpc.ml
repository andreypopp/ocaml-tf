(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_vpc = {
  assign_generated_ipv6_cidr_block : bool prop option; [@option]
      (** assign_generated_ipv6_cidr_block *)
  enable_dns_hostnames : bool prop option; [@option]
      (** enable_dns_hostnames *)
  enable_dns_support : bool prop option; [@option]
      (** enable_dns_support *)
  enable_network_address_usage_metrics : bool prop option; [@option]
      (** enable_network_address_usage_metrics *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
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
(** aws_default_vpc *)

let aws_default_vpc ?assign_generated_ipv6_cidr_block
    ?enable_dns_hostnames ?enable_dns_support
    ?enable_network_address_usage_metrics ?force_destroy ?id
    ?ipv6_cidr_block ?ipv6_cidr_block_network_border_group
    ?ipv6_ipam_pool_id ?ipv6_netmask_length ?tags ?tags_all
    __resource_id =
  let __resource_type = "aws_default_vpc" in
  let __resource =
    {
      assign_generated_ipv6_cidr_block;
      enable_dns_hostnames;
      enable_dns_support;
      enable_network_address_usage_metrics;
      force_destroy;
      id;
      ipv6_cidr_block;
      ipv6_cidr_block_network_border_group;
      ipv6_ipam_pool_id;
      ipv6_netmask_length;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_vpc __resource);
  ()
