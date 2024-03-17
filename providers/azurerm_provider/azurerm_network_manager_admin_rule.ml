(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_admin_rule__destination = {
  address_prefix : string;  (** address_prefix *)
  address_prefix_type : string;  (** address_prefix_type *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_admin_rule__destination *)

type azurerm_network_manager_admin_rule__source = {
  address_prefix : string;  (** address_prefix *)
  address_prefix_type : string;  (** address_prefix_type *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_admin_rule__source *)

type azurerm_network_manager_admin_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_admin_rule__timeouts *)

type azurerm_network_manager_admin_rule = {
  action : string;  (** action *)
  admin_rule_collection_id : string;  (** admin_rule_collection_id *)
  description : string option; [@option]  (** description *)
  destination_port_ranges : string list option; [@option]
      (** destination_port_ranges *)
  direction : string;  (** direction *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  protocol : string;  (** protocol *)
  source_port_ranges : string list option; [@option]
      (** source_port_ranges *)
  destination : azurerm_network_manager_admin_rule__destination list;
  source : azurerm_network_manager_admin_rule__source list;
  timeouts : azurerm_network_manager_admin_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_admin_rule *)

let azurerm_network_manager_admin_rule ?description
    ?destination_port_ranges ?id ?source_port_ranges ?timeouts
    ~action ~admin_rule_collection_id ~direction ~name ~priority
    ~protocol ~destination ~source __resource_id =
  let __resource_type = "azurerm_network_manager_admin_rule" in
  let __resource =
    {
      action;
      admin_rule_collection_id;
      description;
      destination_port_ranges;
      direction;
      id;
      name;
      priority;
      protocol;
      source_port_ranges;
      destination;
      source;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_admin_rule __resource);
  ()
