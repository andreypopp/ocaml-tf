(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_manager_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_manager_deployment__timeouts *)

type azurerm_network_manager_deployment = {
  configuration_ids : string list;  (** configuration_ids *)
  location : string;  (** location *)
  network_manager_id : string;  (** network_manager_id *)
  scope_access : string;  (** scope_access *)
  triggers : (string * string) list option; [@option]
      (** triggers *)
  timeouts : azurerm_network_manager_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_manager_deployment *)

let azurerm_network_manager_deployment ?triggers ?timeouts
    ~configuration_ids ~location ~network_manager_id ~scope_access
    __resource_id =
  let __resource_type = "azurerm_network_manager_deployment" in
  let __resource =
    {
      configuration_ids;
      location;
      network_manager_id;
      scope_access;
      triggers;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_manager_deployment __resource);
  ()
