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

type azurerm_log_analytics_linked_service = {
  id : string prop option; [@option]  (** id *)
  read_access_id : string prop option; [@option]
      (** read_access_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  workspace_id : string prop;  (** workspace_id *)
  write_access_id : string prop option; [@option]
      (** write_access_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_service *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_linked_service ?id ?read_access_id
    ?write_access_id ?timeouts ~resource_group_name ~workspace_id ()
    : azurerm_log_analytics_linked_service =
  {
    id;
    read_access_id;
    resource_group_name;
    workspace_id;
    write_access_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  read_access_id : string prop;
  resource_group_name : string prop;
  workspace_id : string prop;
  write_access_id : string prop;
}

let make ?id ?read_access_id ?write_access_id ?timeouts
    ~resource_group_name ~workspace_id __id =
  let __type = "azurerm_log_analytics_linked_service" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       read_access_id = Prop.computed __type __id "read_access_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       workspace_id = Prop.computed __type __id "workspace_id";
       write_access_id = Prop.computed __type __id "write_access_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_linked_service
        (azurerm_log_analytics_linked_service ?id ?read_access_id
           ?write_access_id ?timeouts ~resource_group_name
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?read_access_id ?write_access_id
    ?timeouts ~resource_group_name ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?read_access_id ?write_access_id ?timeouts
      ~resource_group_name ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
