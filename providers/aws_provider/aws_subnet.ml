(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_subnet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_subnet__timeouts *)

type aws_subnet = {
  assign_ipv6_address_on_creation : bool option; [@option]
      (** assign_ipv6_address_on_creation *)
  cidr_block : string option; [@option]  (** cidr_block *)
  customer_owned_ipv4_pool : string option; [@option]
      (** customer_owned_ipv4_pool *)
  enable_dns64 : bool option; [@option]  (** enable_dns64 *)
  enable_lni_at_device_index : float option; [@option]
      (** enable_lni_at_device_index *)
  enable_resource_name_dns_a_record_on_launch : bool option;
      [@option]
      (** enable_resource_name_dns_a_record_on_launch *)
  enable_resource_name_dns_aaaa_record_on_launch : bool option;
      [@option]
      (** enable_resource_name_dns_aaaa_record_on_launch *)
  ipv6_cidr_block : string option; [@option]  (** ipv6_cidr_block *)
  ipv6_native : bool option; [@option]  (** ipv6_native *)
  map_customer_owned_ip_on_launch : bool option; [@option]
      (** map_customer_owned_ip_on_launch *)
  map_public_ip_on_launch : bool option; [@option]
      (** map_public_ip_on_launch *)
  outpost_arn : string option; [@option]  (** outpost_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_id : string;  (** vpc_id *)
  timeouts : aws_subnet__timeouts option;
}
[@@deriving yojson_of]
(** aws_subnet *)

let aws_subnet ?assign_ipv6_address_on_creation ?cidr_block
    ?customer_owned_ipv4_pool ?enable_dns64
    ?enable_lni_at_device_index
    ?enable_resource_name_dns_a_record_on_launch
    ?enable_resource_name_dns_aaaa_record_on_launch ?ipv6_cidr_block
    ?ipv6_native ?map_customer_owned_ip_on_launch
    ?map_public_ip_on_launch ?outpost_arn ?tags ?timeouts ~vpc_id
    __resource_id =
  let __resource_type = "aws_subnet" in
  let __resource =
    {
      assign_ipv6_address_on_creation;
      cidr_block;
      customer_owned_ipv4_pool;
      enable_dns64;
      enable_lni_at_device_index;
      enable_resource_name_dns_a_record_on_launch;
      enable_resource_name_dns_aaaa_record_on_launch;
      ipv6_cidr_block;
      ipv6_native;
      map_customer_owned_ip_on_launch;
      map_public_ip_on_launch;
      outpost_arn;
      tags;
      vpc_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_subnet __resource);
  ()
