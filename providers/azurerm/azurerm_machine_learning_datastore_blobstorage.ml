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

type azurerm_machine_learning_datastore_blobstorage = {
  account_key : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  is_default : bool prop option; [@option]
  name : string prop;
  service_data_auth_identity : string prop option; [@option]
  shared_access_signature : string prop option; [@option]
  storage_container_id : string prop;
  tags : (string * string prop) list option; [@option]
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_machine_learning_datastore_blobstorage) -> ()

let yojson_of_azurerm_machine_learning_datastore_blobstorage =
  (function
   | {
       account_key = v_account_key;
       description = v_description;
       id = v_id;
       is_default = v_is_default;
       name = v_name;
       service_data_auth_identity = v_service_data_auth_identity;
       shared_access_signature = v_shared_access_signature;
       storage_container_id = v_storage_container_id;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_container_id
         in
         ("storage_container_id", arg) :: bnds
       in
       let bnds =
         match v_shared_access_signature with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_access_signature", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_data_auth_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_data_auth_identity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_machine_learning_datastore_blobstorage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_machine_learning_datastore_blobstorage

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_machine_learning_datastore_blobstorage ?account_key
    ?description ?id ?is_default ?service_data_auth_identity
    ?shared_access_signature ?tags ?timeouts ~name
    ~storage_container_id ~workspace_id () :
    azurerm_machine_learning_datastore_blobstorage =
  {
    account_key;
    description;
    id;
    is_default;
    name;
    service_data_auth_identity;
    shared_access_signature;
    storage_container_id;
    tags;
    workspace_id;
    timeouts;
  }

type t = {
  account_key : string prop;
  description : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  service_data_auth_identity : string prop;
  shared_access_signature : string prop;
  storage_container_id : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?account_key ?description ?id ?is_default
    ?service_data_auth_identity ?shared_access_signature ?tags
    ?timeouts ~name ~storage_container_id ~workspace_id __id =
  let __type = "azurerm_machine_learning_datastore_blobstorage" in
  let __attrs =
    ({
       account_key = Prop.computed __type __id "account_key";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       name = Prop.computed __type __id "name";
       service_data_auth_identity =
         Prop.computed __type __id "service_data_auth_identity";
       shared_access_signature =
         Prop.computed __type __id "shared_access_signature";
       storage_container_id =
         Prop.computed __type __id "storage_container_id";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_datastore_blobstorage
        (azurerm_machine_learning_datastore_blobstorage ?account_key
           ?description ?id ?is_default ?service_data_auth_identity
           ?shared_access_signature ?tags ?timeouts ~name
           ~storage_container_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?account_key ?description ?id ?is_default
    ?service_data_auth_identity ?shared_access_signature ?tags
    ?timeouts ~name ~storage_container_id ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?account_key ?description ?id ?is_default
      ?service_data_auth_identity ?shared_access_signature ?tags
      ?timeouts ~name ~storage_container_id ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
