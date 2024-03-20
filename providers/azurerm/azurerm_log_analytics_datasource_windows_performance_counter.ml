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

type azurerm_log_analytics_datasource_windows_performance_counter = {
  counter_name : string prop;  (** counter_name *)
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  interval_seconds : float prop;  (** interval_seconds *)
  name : string prop;  (** name *)
  object_name : string prop;  (** object_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  workspace_name : string prop;  (** workspace_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_datasource_windows_performance_counter *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_datasource_windows_performance_counter ?id
    ?timeouts ~counter_name ~instance_name ~interval_seconds ~name
    ~object_name ~resource_group_name ~workspace_name () :
    azurerm_log_analytics_datasource_windows_performance_counter =
  {
    counter_name;
    id;
    instance_name;
    interval_seconds;
    name;
    object_name;
    resource_group_name;
    workspace_name;
    timeouts;
  }

type t = {
  counter_name : string prop;
  id : string prop;
  instance_name : string prop;
  interval_seconds : float prop;
  name : string prop;
  object_name : string prop;
  resource_group_name : string prop;
  workspace_name : string prop;
}

let make ?id ?timeouts ~counter_name ~instance_name ~interval_seconds
    ~name ~object_name ~resource_group_name ~workspace_name __id =
  let __type =
    "azurerm_log_analytics_datasource_windows_performance_counter"
  in
  let __attrs =
    ({
       counter_name = Prop.computed __type __id "counter_name";
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       interval_seconds =
         Prop.computed __type __id "interval_seconds";
       name = Prop.computed __type __id "name";
       object_name = Prop.computed __type __id "object_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       workspace_name = Prop.computed __type __id "workspace_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_datasource_windows_performance_counter
        (azurerm_log_analytics_datasource_windows_performance_counter
           ?id ?timeouts ~counter_name ~instance_name
           ~interval_seconds ~name ~object_name ~resource_group_name
           ~workspace_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~counter_name ~instance_name
    ~interval_seconds ~name ~object_name ~resource_group_name
    ~workspace_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~counter_name ~instance_name ~interval_seconds
      ~name ~object_name ~resource_group_name ~workspace_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
