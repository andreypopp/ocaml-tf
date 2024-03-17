(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_default_subnet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_default_subnet__timeouts *)

type aws_default_subnet = {
  assign_ipv6_address_on_creation : bool option; [@option]
      (** assign_ipv6_address_on_creation *)
  availability_zone : string;  (** availability_zone *)
  customer_owned_ipv4_pool : string option; [@option]
      (** customer_owned_ipv4_pool *)
  enable_dns64 : bool option; [@option]  (** enable_dns64 *)
  enable_resource_name_dns_a_record_on_launch : bool option;
      [@option]
      (** enable_resource_name_dns_a_record_on_launch *)
  enable_resource_name_dns_aaaa_record_on_launch : bool option;
      [@option]
      (** enable_resource_name_dns_aaaa_record_on_launch *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  ipv6_native : bool option; [@option]  (** ipv6_native *)
  map_customer_owned_ip_on_launch : bool option; [@option]
      (** map_customer_owned_ip_on_launch *)
  map_public_ip_on_launch : bool option; [@option]
      (** map_public_ip_on_launch *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_default_subnet__timeouts option;
}
[@@deriving yojson_of]
(** aws_default_subnet *)

let aws_default_subnet ?assign_ipv6_address_on_creation
    ?customer_owned_ipv4_pool ?enable_dns64
    ?enable_resource_name_dns_a_record_on_launch
    ?enable_resource_name_dns_aaaa_record_on_launch ?force_destroy
    ?ipv6_native ?map_customer_owned_ip_on_launch
    ?map_public_ip_on_launch ?tags ?timeouts ~availability_zone
    __resource_id =
  let __resource_type = "aws_default_subnet" in
  let __resource =
    {
      assign_ipv6_address_on_creation;
      availability_zone;
      customer_owned_ipv4_pool;
      enable_dns64;
      enable_resource_name_dns_a_record_on_launch;
      enable_resource_name_dns_aaaa_record_on_launch;
      force_destroy;
      ipv6_native;
      map_customer_owned_ip_on_launch;
      map_public_ip_on_launch;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_subnet __resource);
  ()
