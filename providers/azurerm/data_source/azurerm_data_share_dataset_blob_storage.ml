(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

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

type azurerm_data_share_dataset_blob_storage = {
  data_share_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_share_dataset_blob_storage) -> ()

let yojson_of_azurerm_data_share_dataset_blob_storage =
  (function
   | {
       data_share_id = v_data_share_id;
       id = v_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_data_share_id in
         ("data_share_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_share_dataset_blob_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_share_dataset_blob_storage

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_data_share_dataset_blob_storage ?id ?timeouts
    ~data_share_id ~name () : azurerm_data_share_dataset_blob_storage
    =
  { data_share_id; id; name; timeouts }

type t = {
  tf_name : string;
  container_name : string prop;
  data_share_id : string prop;
  display_name : string prop;
  file_path : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  storage_account : storage_account list prop;
}

let make ?id ?timeouts ~data_share_id ~name __id =
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
       storage_account = Prop.computed __type __id "storage_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_share_dataset_blob_storage
        (azurerm_data_share_dataset_blob_storage ?id ?timeouts
           ~data_share_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~data_share_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~data_share_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
