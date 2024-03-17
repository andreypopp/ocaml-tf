(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_transit_virtual_interface__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dx_transit_virtual_interface__timeouts *)

type aws_dx_transit_virtual_interface = {
  address_family : string prop;  (** address_family *)
  amazon_address : string prop option; [@option]
      (** amazon_address *)
  bgp_asn : float prop;  (** bgp_asn *)
  bgp_auth_key : string prop option; [@option]  (** bgp_auth_key *)
  connection_id : string prop;  (** connection_id *)
  customer_address : string prop option; [@option]
      (** customer_address *)
  dx_gateway_id : string prop;  (** dx_gateway_id *)
  id : string prop option; [@option]  (** id *)
  mtu : float prop option; [@option]  (** mtu *)
  name : string prop;  (** name *)
  sitelink_enabled : bool prop option; [@option]
      (** sitelink_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vlan : float prop;  (** vlan *)
  timeouts : aws_dx_transit_virtual_interface__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_transit_virtual_interface *)

let aws_dx_transit_virtual_interface ?amazon_address ?bgp_auth_key
    ?customer_address ?id ?mtu ?sitelink_enabled ?tags ?tags_all
    ?timeouts ~address_family ~bgp_asn ~connection_id ~dx_gateway_id
    ~name ~vlan __resource_id =
  let __resource_type = "aws_dx_transit_virtual_interface" in
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
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_transit_virtual_interface __resource);
  ()
