(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_local_network_gateway__bgp_settings = {
  asn : float prop;  (** asn *)
  bgp_peering_address : string prop;  (** bgp_peering_address *)
  peer_weight : float prop option; [@option]  (** peer_weight *)
}
[@@deriving yojson_of]
(** azurerm_local_network_gateway__bgp_settings *)

type azurerm_local_network_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_local_network_gateway__timeouts *)

type azurerm_local_network_gateway = {
  address_space : string prop list option; [@option]
      (** address_space *)
  gateway_address : string prop option; [@option]
      (** gateway_address *)
  gateway_fqdn : string prop option; [@option]  (** gateway_fqdn *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
