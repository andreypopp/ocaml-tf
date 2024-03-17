(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_hosted_public_virtual_interface__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_hosted_public_virtual_interface__timeouts *)

type aws_dx_hosted_public_virtual_interface = {
  address_family : string;  (** address_family *)
  amazon_address : string option; [@option]  (** amazon_address *)
  bgp_asn : float;  (** bgp_asn *)
  bgp_auth_key : string option; [@option]  (** bgp_auth_key *)
  connection_id : string;  (** connection_id *)
  customer_address : string option; [@option]
      (** customer_address *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  owner_account_id : string;  (** owner_account_id *)
  route_filter_prefixes : string list;  (** route_filter_prefixes *)
  vlan : float;  (** vlan *)
  timeouts : aws_dx_hosted_public_virtual_interface__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_hosted_public_virtual_interface *)

let aws_dx_hosted_public_virtual_interface ?amazon_address
    ?bgp_auth_key ?customer_address ?id ?timeouts ~address_family
    ~bgp_asn ~connection_id ~name ~owner_account_id
    ~route_filter_prefixes ~vlan __resource_id =
  let __resource_type = "aws_dx_hosted_public_virtual_interface" in
  let __resource =
    {
      address_family;
      amazon_address;
      bgp_asn;
      bgp_auth_key;
      connection_id;
      customer_address;
      id;
      name;
      owner_account_id;
      route_filter_prefixes;
      vlan;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_hosted_public_virtual_interface __resource);
  ()
