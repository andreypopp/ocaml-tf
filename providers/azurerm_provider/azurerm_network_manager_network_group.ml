(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_network_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_network_group__timeouts *)

type azurerm_network_manager_network_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_manager_id : string prop;  (** network_manager_id *)
  timeouts : azurerm_network_manager_network_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_network_group *)

let azurerm_network_manager_network_group ?description ?id ?timeouts
    ~name ~network_manager_id __resource_id =
  let __resource_type = "azurerm_network_manager_network_group" in
  let __resource =
    { description; id; name; network_manager_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_network_group __resource);
  ()
