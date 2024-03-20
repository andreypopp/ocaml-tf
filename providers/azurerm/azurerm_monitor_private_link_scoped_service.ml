(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_private_link_scoped_service = {
  id : string prop option; [@option]  (** id *)
  linked_resource_id : string prop;  (** linked_resource_id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope_name : string prop;  (** scope_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_private_link_scoped_service *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_monitor_private_link_scoped_service ?id ?timeouts
    ~linked_resource_id ~name ~resource_group_name ~scope_name () :
    azurerm_monitor_private_link_scoped_service =
  {
    id;
    linked_resource_id;
    name;
    resource_group_name;
    scope_name;
    timeouts;
  }

type t = {
  id : string prop;
  linked_resource_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_name : string prop;
}

let make ?id ?timeouts ~linked_resource_id ~name ~resource_group_name
    ~scope_name __id =
  let __type = "azurerm_monitor_private_link_scoped_service" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       linked_resource_id =
         Prop.computed __type __id "linked_resource_id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope_name = Prop.computed __type __id "scope_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_private_link_scoped_service
        (azurerm_monitor_private_link_scoped_service ?id ?timeouts
           ~linked_resource_id ~name ~resource_group_name ~scope_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~linked_resource_id ~name
    ~resource_group_name ~scope_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~linked_resource_id ~name ~resource_group_name
      ~scope_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
