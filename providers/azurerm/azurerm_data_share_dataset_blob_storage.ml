(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type storage_account = {
  name : string prop;
  resource_group_name : string prop;
  subscription_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account) -> ()

let yojson_of_storage_account =
  (function
   | {
       name = v_name;
       resource_group_name = v_resource_group_name;
       subscription_id = v_subscription_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subscription_id
         in
         ("subscription_id", arg) :: bnds
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
       `Assoc bnds
    : storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account

[@@@deriving.end]

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

type azurerm_data_share_dataset_blob_storage = {
  container_name : string prop;
  data_share_id : string prop;
  file_path : string prop option; [@option]
  folder_path : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  storage_account : storage_account list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_share_dataset_blob_storage) -> ()

let yojson_of_azurerm_data_share_dataset_blob_storage =
  (function
   | {
       container_name = v_container_name;
       data_share_id = v_data_share_id;
       file_path = v_file_path;
       folder_path = v_folder_path;
       id = v_id;
       name = v_name;
       storage_account = v_storage_account;
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
         if Stdlib.( = ) [] v_storage_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_account)
               v_storage_account
           in
           let bnd = "storage_account", arg in
           bnd :: bnds
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
         match v_folder_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "folder_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_share_id in
         ("data_share_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_share_dataset_blob_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_share_dataset_blob_storage

[@@@deriving.end]

let storage_account ~name ~resource_group_name ~subscription_id () :
    storage_account =
  { name; resource_group_name; subscription_id }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_share_dataset_blob_storage ?file_path ?folder_path
    ?id ?timeouts ~container_name ~data_share_id ~name
    ~storage_account () : azurerm_data_share_dataset_blob_storage =
  {
    container_name;
    data_share_id;
    file_path;
    folder_path;
    id;
    name;
    storage_account;
    timeouts;
  }

type t = {
  tf_name : string;
  container_name : string prop;
  data_share_id : string prop;
  display_name : string prop;
  file_path : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
}

let make ?file_path ?folder_path ?id ?timeouts ~container_name
    ~data_share_id ~name ~storage_account __id =
  let __type = "azurerm_data_share_dataset_blob_storage" in
  let __attrs =
    ({
       tf_name = __id;
       container_name = Prop.computed __type __id "container_name";
       data_share_id = Prop.computed __type __id "data_share_id";
       display_name = Prop.computed __type __id "display_name";
       file_path = Prop.computed __type __id "file_path";
       folder_path = Prop.computed __type __id "folder_path";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_share_dataset_blob_storage
        (azurerm_data_share_dataset_blob_storage ?file_path
           ?folder_path ?id ?timeouts ~container_name ~data_share_id
           ~name ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?file_path ?folder_path ?id ?timeouts
    ~container_name ~data_share_id ~name ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?file_path ?folder_path ?id ?timeouts ~container_name
      ~data_share_id ~name ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
