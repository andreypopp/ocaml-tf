(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_scope_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_scope_connection__timeouts *)

type azurerm_network_manager_scope_connection = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  network_manager_id : string;  (** network_manager_id *)
  target_scope_id : string;  (** target_scope_id *)
  tenant_id : string;  (** tenant_id *)
  timeouts :
    azurerm_network_manager_scope_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_scope_connection *)

let azurerm_network_manager_scope_connection ?description ?timeouts
    ~name ~network_manager_id ~target_scope_id ~tenant_id
    __resource_id =
  let __resource_type = "azurerm_network_manager_scope_connection" in
  let __resource =
    {
      description;
      name;
      network_manager_id;
      target_scope_id;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_scope_connection __resource);
  ()
