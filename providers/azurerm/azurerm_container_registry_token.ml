(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_container_registry_token = {
  container_registry_name : string prop;
      (** container_registry_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope_map_id : string prop;  (** scope_map_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_token *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry_token ?enabled ?id ?timeouts
    ~container_registry_name ~name ~resource_group_name ~scope_map_id
    () : azurerm_container_registry_token =
  {
    container_registry_name;
    enabled;
    id;
    name;
    resource_group_name;
    scope_map_id;
    timeouts;
  }

type t = {
  container_registry_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_map_id : string prop;
}

let make ?enabled ?id ?timeouts ~container_registry_name ~name
    ~resource_group_name ~scope_map_id __id =
  let __type = "azurerm_container_registry_token" in
  let __attrs =
    ({
       container_registry_name =
         Prop.computed __type __id "container_registry_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope_map_id = Prop.computed __type __id "scope_map_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_token
        (azurerm_container_registry_token ?enabled ?id ?timeouts
           ~container_registry_name ~name ~resource_group_name
           ~scope_map_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?timeouts
    ~container_registry_name ~name ~resource_group_name ~scope_map_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?timeouts ~container_registry_name ~name
      ~resource_group_name ~scope_map_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
