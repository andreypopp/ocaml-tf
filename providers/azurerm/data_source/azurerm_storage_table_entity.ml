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

type azurerm_storage_table_entity = {
  id : string prop option; [@option]
  partition_key : string prop;
  row_key : string prop;
  storage_account_name : string prop;
  table_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_table_entity) -> ()

let yojson_of_azurerm_storage_table_entity =
  (function
   | {
       id = v_id;
       partition_key = v_partition_key;
       row_key = v_row_key;
       storage_account_name = v_storage_account_name;
       table_name = v_table_name;
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
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_row_key in
         ("row_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_partition_key in
         ("partition_key", arg) :: bnds
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
    : azurerm_storage_table_entity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_table_entity

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_storage_table_entity ?id ?timeouts ~partition_key
    ~row_key ~storage_account_name ~table_name () :
    azurerm_storage_table_entity =
  {
    id;
    partition_key;
    row_key;
    storage_account_name;
    table_name;
    timeouts;
  }

type t = {
  entity : (string * string) list prop;
  id : string prop;
  partition_key : string prop;
  row_key : string prop;
  storage_account_name : string prop;
  table_name : string prop;
}

let make ?id ?timeouts ~partition_key ~row_key ~storage_account_name
    ~table_name __id =
  let __type = "azurerm_storage_table_entity" in
  let __attrs =
    ({
       entity = Prop.computed __type __id "entity";
       id = Prop.computed __type __id "id";
       partition_key = Prop.computed __type __id "partition_key";
       row_key = Prop.computed __type __id "row_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_table_entity
        (azurerm_storage_table_entity ?id ?timeouts ~partition_key
           ~row_key ~storage_account_name ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~partition_key ~row_key
    ~storage_account_name ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~partition_key ~row_key ~storage_account_name
      ~table_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
