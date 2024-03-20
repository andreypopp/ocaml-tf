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

type azurerm_log_analytics_storage_insights = {
  blob_container_names : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  storage_account_key : string prop;
  table_names : string prop list option; [@option]
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_log_analytics_storage_insights) -> ()

let yojson_of_azurerm_log_analytics_storage_insights =
  (function
   | {
       blob_container_names = v_blob_container_names;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       storage_account_id = v_storage_account_id;
       storage_account_key = v_storage_account_key;
       table_names = v_table_names;
       workspace_id = v_workspace_id;
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
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_table_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "table_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_key
         in
         ("storage_account_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
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
         match v_blob_container_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "blob_container_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_storage_insights ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_storage_insights

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_storage_insights ?blob_container_names ?id
    ?table_names ?timeouts ~name ~resource_group_name
    ~storage_account_id ~storage_account_key ~workspace_id () :
    azurerm_log_analytics_storage_insights =
  {
    blob_container_names;
    id;
    name;
    resource_group_name;
    storage_account_id;
    storage_account_key;
    table_names;
    workspace_id;
    timeouts;
  }

type t = {
  blob_container_names : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  storage_account_key : string prop;
  table_names : string list prop;
  workspace_id : string prop;
}

let make ?blob_container_names ?id ?table_names ?timeouts ~name
    ~resource_group_name ~storage_account_id ~storage_account_key
    ~workspace_id __id =
  let __type = "azurerm_log_analytics_storage_insights" in
  let __attrs =
    ({
       blob_container_names =
         Prop.computed __type __id "blob_container_names";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       storage_account_key =
         Prop.computed __type __id "storage_account_key";
       table_names = Prop.computed __type __id "table_names";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_storage_insights
        (azurerm_log_analytics_storage_insights ?blob_container_names
           ?id ?table_names ?timeouts ~name ~resource_group_name
           ~storage_account_id ~storage_account_key ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?blob_container_names ?id ?table_names
    ?timeouts ~name ~resource_group_name ~storage_account_id
    ~storage_account_key ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?blob_container_names ?id ?table_names ?timeouts ~name
      ~resource_group_name ~storage_account_id ~storage_account_key
      ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
