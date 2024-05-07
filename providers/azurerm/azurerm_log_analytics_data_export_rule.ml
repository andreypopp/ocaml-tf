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

type azurerm_log_analytics_data_export_rule = {
  destination_resource_id : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  table_names : string prop list;
  workspace_resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_log_analytics_data_export_rule) -> ()

let yojson_of_azurerm_log_analytics_data_export_rule =
  (function
   | {
       destination_resource_id = v_destination_resource_id;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       table_names = v_table_names;
       workspace_resource_id = v_workspace_resource_id;
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
           yojson_of_prop yojson_of_string v_workspace_resource_id
         in
         ("workspace_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_table_names
         in
         ("table_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_resource_id
         in
         ("destination_resource_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_data_export_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_data_export_rule

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
