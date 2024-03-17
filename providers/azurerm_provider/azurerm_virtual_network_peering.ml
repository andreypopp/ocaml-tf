(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_network_peering__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_peering__timeouts *)

type azurerm_virtual_network_peering = {
  allow_forwarded_traffic : bool option; [@option]
      (** allow_forwarded_traffic *)
  allow_gateway_transit : bool option; [@option]
      (** allow_gateway_transit *)
  allow_virtual_network_access : bool option; [@option]
      (** allow_virtual_network_access *)
  name : string;  (** name *)
  remote_virtual_network_id : string;
      (** remote_virtual_network_id *)
  resource_group_name : string;  (** resource_group_name *)
  triggers : (string * string) list option; [@option]
      (** triggers *)
  use_remote_gateways : bool option; [@option]
      (** use_remote_gateways *)
  virtual_network_name : string;  (** virtual_network_name *)
  timeouts : azurerm_virtual_network_peering__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_peering *)

let azurerm_virtual_network_peering ?allow_forwarded_traffic
    ?allow_gateway_transit ?allow_virtual_network_access ?triggers
    ?use_remote_gateways ?timeouts ~name ~remote_virtual_network_id
    ~resource_group_name ~virtual_network_name __resource_id =
  let __resource_type = "azurerm_virtual_network_peering" in
  let __resource =
    {
      allow_forwarded_traffic;
      allow_gateway_transit;
      allow_virtual_network_access;
      name;
      remote_virtual_network_id;
      resource_group_name;
      triggers;
      use_remote_gateways;
      virtual_network_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_peering __resource);
  ()
