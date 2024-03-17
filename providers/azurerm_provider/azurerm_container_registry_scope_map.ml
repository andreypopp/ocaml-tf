(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_scope_map__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_scope_map__timeouts *)

type azurerm_container_registry_scope_map = {
  actions : string prop list;  (** actions *)
  container_registry_name : string prop;
      (** container_registry_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
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
