(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_public_virtual_interface__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_public_virtual_interface__timeouts *)

type aws_dx_public_virtual_interface = {
  address_family : string prop;  (** address_family *)
  amazon_address : string prop option; [@option]
      (** amazon_address *)
  bgp_asn : float prop;  (** bgp_asn *)
  bgp_auth_key : string prop option; [@option]  (** bgp_auth_key *)
  connection_id : string prop;  (** connection_id *)
  customer_address : string prop option; [@option]
      (** customer_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  route_filter_prefixes : string prop list;
      (** route_filter_prefixes *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vlan : float prop;  (** vlan *)
  timeouts : aws_dx_public_virtual_interface__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_public_virtual_interface *)

let aws_dx_public_virtual_interface ?amazon_address ?bgp_auth_key
    ?customer_address ?id ?tags ?tags_all ?timeouts ~address_family
    ~bgp_asn ~connection_id ~name ~route_filter_prefixes ~vlan
    __resource_id =
  let __resource_type = "aws_dx_public_virtual_interface" in
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
      route_filter_prefixes;
      tags;
      tags_all;
      vlan;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_public_virtual_interface __resource);
  ()
