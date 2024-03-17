(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_network_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_network_group__timeouts *)

type azurerm_network_manager_network_group = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  network_manager_id : string;  (** network_manager_id *)
  timeouts : azurerm_network_manager_network_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_network_group *)

let azurerm_network_manager_network_group ?description ?timeouts
    ~name ~network_manager_id __resource_id =
  let __resource_type = "azurerm_network_manager_network_group" in
  let __resource =
    { description; name; network_manager_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_network_group __resource);
  ()
