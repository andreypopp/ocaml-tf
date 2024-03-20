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

type azurerm_container_registry_scope_map = {
  actions : string prop list;  (** actions *)
  container_registry_name : string prop;
      (** container_registry_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_scope_map *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry_scope_map ?description ?id ?timeouts
    ~actions ~container_registry_name ~name ~resource_group_name () :
    azurerm_container_registry_scope_map =
  {
    actions;
    container_registry_name;
    description;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  actions : string list prop;
  container_registry_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?description ?id ?timeouts ~actions ~container_registry_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_container_registry_scope_map" in
  let __attrs =
    ({
       actions = Prop.computed __type __id "actions";
       container_registry_name =
         Prop.computed __type __id "container_registry_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_scope_map
        (azurerm_container_registry_scope_map ?description ?id
           ?timeouts ~actions ~container_registry_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~actions
    ~container_registry_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~actions ~container_registry_name
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
