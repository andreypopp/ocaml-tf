(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_static_member__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_static_member__timeouts *)

type azurerm_network_manager_static_member = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  network_group_id : string;  (** network_group_id *)
  target_virtual_network_id : string;
      (** target_virtual_network_id *)
  timeouts : azurerm_network_manager_static_member__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_static_member *)

let azurerm_network_manager_static_member ?id ?timeouts ~name
    ~network_group_id ~target_virtual_network_id __resource_id =
  let __resource_type = "azurerm_network_manager_static_member" in
  let __resource =
    {
      id;
      name;
      network_group_id;
      target_virtual_network_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_static_member __resource);
  ()
