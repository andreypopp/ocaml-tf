(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_private_virtual_interface__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dx_private_virtual_interface__timeouts *)

type aws_dx_private_virtual_interface = {
  address_family : string;  (** address_family *)
  amazon_address : string option; [@option]  (** amazon_address *)
  bgp_asn : float;  (** bgp_asn *)
  bgp_auth_key : string option; [@option]  (** bgp_auth_key *)
  connection_id : string;  (** connection_id *)
  customer_address : string option; [@option]
      (** customer_address *)
  dx_gateway_id : string option; [@option]  (** dx_gateway_id *)
  id : string option; [@option]  (** id *)
  mtu : float option; [@option]  (** mtu *)
  name : string;  (** name *)
  sitelink_enabled : bool option; [@option]  (** sitelink_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vlan : float;  (** vlan *)
  vpn_gateway_id : string option; [@option]  (** vpn_gateway_id *)
  timeouts : aws_dx_private_virtual_interface__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_private_virtual_interface *)

let aws_dx_private_virtual_interface ?amazon_address ?bgp_auth_key
    ?customer_address ?dx_gateway_id ?id ?mtu ?sitelink_enabled ?tags
    ?tags_all ?vpn_gateway_id ?timeouts ~address_family ~bgp_asn
    ~connection_id ~name ~vlan __resource_id =
  let __resource_type = "aws_dx_private_virtual_interface" in
  let __resource =
    {
      address_family;
      amazon_address;
      bgp_asn;
      bgp_auth_key;
      connection_id;
      customer_address;
      dx_gateway_id;
      id;
      mtu;
      name;
      sitelink_enabled;
      tags;
      tags_all;
      vlan;
      vpn_gateway_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_private_virtual_interface __resource);
  ()
