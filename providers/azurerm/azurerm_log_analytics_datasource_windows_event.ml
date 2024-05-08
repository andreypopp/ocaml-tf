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

type azurerm_log_analytics_datasource_windows_event = {
  event_log_name : string prop;
  event_types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  workspace_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_log_analytics_datasource_windows_event) -> ()

let yojson_of_azurerm_log_analytics_datasource_windows_event =
  (function
   | {
       event_log_name = v_event_log_name;
       event_types = v_event_types;
       id = v_id;
       name = v_name;
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
         if [] = v_event_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_event_types
           in
           let bnd = "event_types", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_event_log_name
         in
         ("event_log_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_datasource_windows_event ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_datasource_windows_event

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_datasource_windows_event ?id ?timeouts
    ~event_log_name ~event_types ~name ~resource_group_name
    ~workspace_name () :
    azurerm_log_analytics_datasource_windows_event =
  {
    event_log_name;
    event_types;
    id;
    name;
    resource_group_name;
    workspace_name;
    timeouts;
  }

type t = {
  tf_name : string;
  event_log_name : string prop;
  event_types : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  workspace_name : string prop;
}

let make ?id ?timeouts ~event_log_name ~event_types ~name
    ~resource_group_name ~workspace_name __id =
  let __type = "azurerm_log_analytics_datasource_windows_event" in
  let __attrs =
    ({
       tf_name = __id;
       event_log_name = Prop.computed __type __id "event_log_name";
       event_types = Prop.computed __type __id "event_types";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_log_analytics_datasource_windows_event
        (azurerm_log_analytics_datasource_windows_event ?id ?timeouts
           ~event_log_name ~event_types ~name ~resource_group_name
           ~workspace_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~event_log_name ~event_types
    ~name ~resource_group_name ~workspace_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~event_log_name ~event_types ~name
      ~resource_group_name ~workspace_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
