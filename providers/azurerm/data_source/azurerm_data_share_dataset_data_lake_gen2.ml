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

type azurerm_data_share_dataset_data_lake_gen2 = {
  id : string prop option; [@option]
  name : string prop;
  share_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_share_dataset_data_lake_gen2) -> ()

let yojson_of_azurerm_data_share_dataset_data_lake_gen2 =
  (function
   | {
       id = v_id;
       name = v_name;
       share_id = v_share_id;
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
         let arg = yojson_of_prop yojson_of_string v_share_id in
         ("share_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_data_share_dataset_data_lake_gen2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_share_dataset_data_lake_gen2

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_data_share_dataset_data_lake_gen2 ?id ?timeouts ~name
    ~share_id () : azurerm_data_share_dataset_data_lake_gen2 =
  { id; name; share_id; timeouts }

type t = {
  display_name : string prop;
  file_path : string prop;
  file_system_name : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  share_id : string prop;
  storage_account_id : string prop;
}

let make ?id ?timeouts ~name ~share_id __id =
  let __type = "azurerm_data_share_dataset_data_lake_gen2" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       file_path = Prop.computed __type __id "file_path";
       file_system_name =
         Prop.computed __type __id "file_system_name";
       folder_path = Prop.computed __type __id "folder_path";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       share_id = Prop.computed __type __id "share_id";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_share_dataset_data_lake_gen2
        (azurerm_data_share_dataset_data_lake_gen2 ?id ?timeouts
           ~name ~share_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~share_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~share_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
