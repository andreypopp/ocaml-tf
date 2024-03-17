(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_connectivity_configuration__applies_to_group = {
  global_mesh_enabled : bool prop option; [@option]
      (** global_mesh_enabled *)
  group_connectivity : string prop;  (** group_connectivity *)
  network_group_id : string prop;  (** network_group_id *)
  use_hub_gateway : bool prop option; [@option]
      (** use_hub_gateway *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_connectivity_configuration__applies_to_group *)

type azurerm_network_manager_connectivity_configuration__hub = {
  resource_id : string prop;  (** resource_id *)
  resource_type : string prop;  (** resource_type *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_connectivity_configuration__hub *)

type azurerm_network_manager_connectivity_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_connectivity_configuration__timeouts *)

type azurerm_network_manager_connectivity_configuration = {
  connectivity_topology : string prop;  (** connectivity_topology *)
  delete_existing_peering_enabled : bool prop option; [@option]
      (** delete_existing_peering_enabled *)
  description : string prop option; [@option]  (** description *)
  global_mesh_enabled : bool prop option; [@option]
      (** global_mesh_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_manager_id : string prop;  (** network_manager_id *)
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
    ?global_mesh_enabled ?id ?timeouts ~connectivity_topology ~name
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
      id;
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
