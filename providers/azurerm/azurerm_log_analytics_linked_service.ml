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

type azurerm_log_analytics_linked_service = {
  id : string prop option; [@option]
  read_access_id : string prop option; [@option]
  resource_group_name : string prop;
  workspace_id : string prop;
  write_access_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_log_analytics_linked_service) -> ()

let yojson_of_azurerm_log_analytics_linked_service =
  (function
   | {
       id = v_id;
       read_access_id = v_read_access_id;
       resource_group_name = v_resource_group_name;
       workspace_id = v_workspace_id;
       write_access_id = v_write_access_id;
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
         match v_write_access_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "write_access_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_read_access_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read_access_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_linked_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_linked_service

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
