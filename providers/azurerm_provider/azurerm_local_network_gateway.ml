(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_local_network_gateway__bgp_settings = {
  asn : float;  (** asn *)
  bgp_peering_address : string;  (** bgp_peering_address *)
  peer_weight : float option; [@option]  (** peer_weight *)
}
[@@deriving yojson_of]
(** azurerm_local_network_gateway__bgp_settings *)

type azurerm_local_network_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_local_network_gateway__timeouts *)

type azurerm_local_network_gateway = {
  address_space : string list option; [@option]  (** address_space *)
  gateway_address : string option; [@option]  (** gateway_address *)
  gateway_fqdn : string option; [@option]  (** gateway_fqdn *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  bgp_settings : azurerm_local_network_gateway__bgp_settings list;
  timeouts : azurerm_local_network_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_local_network_gateway *)

let azurerm_local_network_gateway ?address_space ?gateway_address
    ?gateway_fqdn ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~bgp_settings __resource_id =
  let __resource_type = "azurerm_local_network_gateway" in
  let __resource =
    {
      address_space;
      gateway_address;
      gateway_fqdn;
      id;
      location;
      name;
      resource_group_name;
      tags;
      bgp_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_local_network_gateway __resource);
  ()
