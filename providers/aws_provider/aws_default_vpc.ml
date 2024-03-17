(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_vpc = {
  assign_generated_ipv6_cidr_block : bool option; [@option]
      (** assign_generated_ipv6_cidr_block *)
  enable_dns_hostnames : bool option; [@option]
      (** enable_dns_hostnames *)
  enable_dns_support : bool option; [@option]
      (** enable_dns_support *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  ipv6_ipam_pool_id : string option; [@option]
      (** ipv6_ipam_pool_id *)
  ipv6_netmask_length : float option; [@option]
      (** ipv6_netmask_length *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_default_vpc *)

let aws_default_vpc ?assign_generated_ipv6_cidr_block
    ?enable_dns_hostnames ?enable_dns_support ?force_destroy
    ?ipv6_ipam_pool_id ?ipv6_netmask_length ?tags __resource_id =
  let __resource_type = "aws_default_vpc" in
  let __resource =
    {
      assign_generated_ipv6_cidr_block;
      enable_dns_hostnames;
      enable_dns_support;
      force_destroy;
      ipv6_ipam_pool_id;
      ipv6_netmask_length;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_vpc __resource);
  ()
