(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_network_manager_connectivity_configuration__applies_to_group = {
  global_mesh_enabled : bool option; [@option]
      (** global_mesh_enabled *)
  group_connectivity : string;  (** group_connectivity *)
  network_group_id : string;  (** network_group_id *)
  use_hub_gateway : bool option; [@option]  (** use_hub_gateway *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_connectivity_configuration__applies_to_group *)

type azurerm_network_manager_connectivity_configuration__hub = {
  resource_id : string;  (** resource_id *)
  resource_type : string;  (** resource_type *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_connectivity_configuration__hub *)

type azurerm_network_manager_connectivity_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_connectivity_configuration__timeouts *)

type azurerm_network_manager_connectivity_configuration = {
  connectivity_topology : string;  (** connectivity_topology *)
  delete_existing_peering_enabled : bool option; [@option]
      (** delete_existing_peering_enabled *)
  description : string option; [@option]  (** description *)
  global_mesh_enabled : bool option; [@option]
      (** global_mesh_enabled *)
  name : string;  (** name *)
  network_manager_id : string;  (** network_manager_id *)
  applies_to_group :
    azurerm_network_manager_connectivity_configuration__applies_to_group
    list;
  hub : azurerm_network_manager_connectivity_configuration__hub list;
  timeouts :
    azurerm_network_manager_connectivity_configuration__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_connectivity_configuration *)

let azurerm_network_manager_connectivity_configuration
    ?delete_existing_peering_enabled ?description
    ?global_mesh_enabled ?timeouts ~connectivity_topology ~name
    ~network_manager_id ~applies_to_group ~hub __resource_id =
  let __resource_type =
    "azurerm_network_manager_connectivity_configuration"
  in
  let __resource =
    {
      connectivity_topology;
      delete_existing_peering_enabled;
      description;
      global_mesh_enabled;
      name;
      network_manager_id;
      applies_to_group;
      hub;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_connectivity_configuration
       __resource);
  ()
