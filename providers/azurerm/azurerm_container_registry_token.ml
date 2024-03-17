(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_token__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_token__timeouts *)

type azurerm_container_registry_token = {
  container_registry_name : string prop;
      (** container_registry_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope_map_id : string prop;  (** scope_map_id *)
  timeouts : azurerm_container_registry_token__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_token *)

type t = {
  container_registry_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_map_id : string prop;
}

let azurerm_container_registry_token ?enabled ?id ?timeouts
    ~container_registry_name ~name ~resource_group_name ~scope_map_id
    __resource_id =
  let __resource_type = "azurerm_container_registry_token" in
  let __resource =
    ({
       container_registry_name;
       enabled;
       id;
       name;
       resource_group_name;
       scope_map_id;
       timeouts;
     }
      : azurerm_container_registry_token)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_token __resource);
  let __resource_attributes =
    ({
       container_registry_name =
         Prop.computed __resource_type __resource_id
           "container_registry_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       scope_map_id =
         Prop.computed __resource_type __resource_id "scope_map_id";
     }
      : t)
  in
  __resource_attributes
