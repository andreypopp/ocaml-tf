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

type azurerm_log_analytics_linked_storage_account = {
  data_source_type : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  storage_account_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workspace_resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_log_analytics_linked_storage_account) -> ()

let yojson_of_azurerm_log_analytics_linked_storage_account =
  (function
   | {
       data_source_type = v_data_source_type;
       id = v_id;
       resource_group_name = v_resource_group_name;
       storage_account_ids = v_storage_account_ids;
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
         if Stdlib.( = ) [] v_storage_account_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_storage_account_ids
           in
           let bnd = "storage_account_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_data_source_type
         in
         ("data_source_type", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_linked_storage_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_linked_storage_account

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_linked_storage_account ?id ?timeouts
    ~data_source_type ~resource_group_name ~storage_account_ids
    ~workspace_resource_id () :
    azurerm_log_analytics_linked_storage_account =
  {
    data_source_type;
    id;
    resource_group_name;
    storage_account_ids;
    workspace_resource_id;
    timeouts;
  }

type t = {
  tf_name : string;
  data_source_type : string prop;
  id : string prop;
  resource_group_name : string prop;
  storage_account_ids : string list prop;
  workspace_resource_id : string prop;
}

let make ?id ?timeouts ~data_source_type ~resource_group_name
    ~storage_account_ids ~workspace_resource_id __id =
  let __type = "azurerm_log_analytics_linked_storage_account" in
  let __attrs =
    ({
       tf_name = __id;
       data_source_type =
         Prop.computed __type __id "data_source_type";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_ids =
         Prop.computed __type __id "storage_account_ids";
       workspace_resource_id =
         Prop.computed __type __id "workspace_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_linked_storage_account
        (azurerm_log_analytics_linked_storage_account ?id ?timeouts
           ~data_source_type ~resource_group_name
           ~storage_account_ids ~workspace_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~data_source_type
    ~resource_group_name ~storage_account_ids ~workspace_resource_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~data_source_type ~resource_group_name
      ~storage_account_ids ~workspace_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
