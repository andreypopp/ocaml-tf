(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_bgp_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_bgp_connection__timeouts *)

type azurerm_virtual_hub_bgp_connection = {
  name : string;  (** name *)
  peer_asn : float;  (** peer_asn *)
  peer_ip : string;  (** peer_ip *)
  virtual_hub_id : string;  (** virtual_hub_id *)
  virtual_network_connection_id : string option; [@option]
      (** virtual_network_connection_id *)
  timeouts : azurerm_virtual_hub_bgp_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_bgp_connection *)

let azurerm_virtual_hub_bgp_connection ?virtual_network_connection_id
    ?timeouts ~name ~peer_asn ~peer_ip ~virtual_hub_id __resource_id
    =
  let __resource_type = "azurerm_virtual_hub_bgp_connection" in
  let __resource =
    {
      name;
      peer_asn;
      peer_ip;
      virtual_hub_id;
      virtual_network_connection_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_bgp_connection __resource);
  ()
