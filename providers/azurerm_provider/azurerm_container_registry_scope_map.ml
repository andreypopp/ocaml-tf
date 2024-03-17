(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_scope_map__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_scope_map__timeouts *)

type azurerm_container_registry_scope_map = {
  actions : string list;  (** actions *)
  container_registry_name : string;  (** container_registry_name *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_container_registry_scope_map__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_scope_map *)

let azurerm_container_registry_scope_map ?description ?id ?timeouts
    ~actions ~container_registry_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_container_registry_scope_map" in
  let __resource =
    {
      actions;
      container_registry_name;
      description;
      id;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_scope_map __resource);
  ()
