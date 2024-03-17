(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_token__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_token__timeouts *)

type azurerm_container_registry_token = {
  container_registry_name : string;  (** container_registry_name *)
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  scope_map_id : string;  (** scope_map_id *)
  timeouts : azurerm_container_registry_token__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_token *)

let azurerm_container_registry_token ?enabled ?timeouts
    ~container_registry_name ~name ~resource_group_name ~scope_map_id
    __resource_id =
  let __resource_type = "azurerm_container_registry_token" in
  let __resource =
    {
      container_registry_name;
      enabled;
      name;
      resource_group_name;
      scope_map_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_token __resource);
  ()
