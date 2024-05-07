(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type azurerm_storage_sync_cloud_endpoint = {
  file_share_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  storage_account_id : string prop;
  storage_account_tenant_id : string prop option; [@option]
  storage_sync_group_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_sync_cloud_endpoint) -> ()

let yojson_of_azurerm_storage_sync_cloud_endpoint =
  (function
   | {
       file_share_name = v_file_share_name;
       id = v_id;
       name = v_name;
       storage_account_id = v_storage_account_id;
       storage_account_tenant_id = v_storage_account_tenant_id;
       storage_sync_group_id = v_storage_sync_group_id;
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
           yojson_of_prop yojson_of_string v_storage_sync_group_id
         in
         ("storage_sync_group_id", arg) :: bnds
       in
       let bnds =
         match v_storage_account_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_file_share_name
         in
         ("file_share_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_storage_sync_cloud_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_sync_cloud_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_storage_sync_cloud_endpoint ?id
    ?storage_account_tenant_id ?timeouts ~file_share_name ~name
    ~storage_account_id ~storage_sync_group_id () :
    azurerm_storage_sync_cloud_endpoint =
  {
    file_share_name;
    id;
    name;
    storage_account_id;
    storage_account_tenant_id;
    storage_sync_group_id;
    timeouts;
  }

type t = {
  tf_name : string;
  file_share_name : string prop;
  id : string prop;
  name : string prop;
  storage_account_id : string prop;
  storage_account_tenant_id : string prop;
  storage_sync_group_id : string prop;
}

let make ?id ?storage_account_tenant_id ?timeouts ~file_share_name
    ~name ~storage_account_id ~storage_sync_group_id __id =
  let __type = "azurerm_storage_sync_cloud_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       file_share_name = Prop.computed __type __id "file_share_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       storage_account_tenant_id =
         Prop.computed __type __id "storage_account_tenant_id";
       storage_sync_group_id =
         Prop.computed __type __id "storage_sync_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_sync_cloud_endpoint
        (azurerm_storage_sync_cloud_endpoint ?id
           ?storage_account_tenant_id ?timeouts ~file_share_name
           ~name ~storage_account_id ~storage_sync_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?storage_account_tenant_id ?timeouts
    ~file_share_name ~name ~storage_account_id ~storage_sync_group_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?storage_account_tenant_id ?timeouts ~file_share_name
      ~name ~storage_account_id ~storage_sync_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
