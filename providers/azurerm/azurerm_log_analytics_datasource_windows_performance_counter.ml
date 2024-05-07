(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_log_analytics_datasource_windows_performance_counter = {
  counter_name : string prop;
  id : string prop option; [@option]
  instance_name : string prop;
  interval_seconds : float prop;
  name : string prop;
  object_name : string prop;
  resource_group_name : string prop;
  workspace_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_log_analytics_datasource_windows_performance_counter) ->
  ()

let yojson_of_azurerm_log_analytics_datasource_windows_performance_counter
    =
  (function
   | {
       counter_name = v_counter_name;
       id = v_id;
       instance_name = v_instance_name;
       interval_seconds = v_interval_seconds;
       name = v_name;
       object_name = v_object_name;
       resource_group_name = v_resource_group_name;
       workspace_name = v_workspace_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workspace_name
         in
         ("workspace_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_name in
         ("object_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_interval_seconds
         in
         ("interval_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_name in
         ("instance_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_counter_name in
         ("counter_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_datasource_windows_performance_counter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_log_analytics_datasource_windows_performance_counter

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
