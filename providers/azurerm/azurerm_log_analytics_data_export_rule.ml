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

type azurerm_log_analytics_data_export_rule = {
  destination_resource_id : string prop;
      (** destination_resource_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  table_names : string prop list;  (** table_names *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_data_export_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_data_export_rule ?enabled ?id ?timeouts
    ~destination_resource_id ~name ~resource_group_name ~table_names
    ~workspace_resource_id () :
    azurerm_log_analytics_data_export_rule =
  {
    destination_resource_id;
    enabled;
    id;
    name;
    resource_group_name;
    table_names;
    workspace_resource_id;
    timeouts;
  }

type t = {
  destination_resource_id : string prop;
  enabled : bool prop;
  export_rule_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  table_names : string list prop;
  workspace_resource_id : string prop;
}

let make ?enabled ?id ?timeouts ~destination_resource_id ~name
    ~resource_group_name ~table_names ~workspace_resource_id __id =
  let __type = "azurerm_log_analytics_data_export_rule" in
  let __attrs =
    ({
       destination_resource_id =
         Prop.computed __type __id "destination_resource_id";
       enabled = Prop.computed __type __id "enabled";
       export_rule_id = Prop.computed __type __id "export_rule_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       table_names = Prop.computed __type __id "table_names";
       workspace_resource_id =
         Prop.computed __type __id "workspace_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_data_export_rule
        (azurerm_log_analytics_data_export_rule ?enabled ?id
           ?timeouts ~destination_resource_id ~name
           ~resource_group_name ~table_names ~workspace_resource_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?timeouts
    ~destination_resource_id ~name ~resource_group_name ~table_names
    ~workspace_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?timeouts ~destination_resource_id ~name
      ~resource_group_name ~table_names ~workspace_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
