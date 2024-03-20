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

type azurerm_storage_table_entity = {
  entity : (string * string prop) list;
  id : string prop option; [@option]
  partition_key : string prop;
  row_key : string prop;
  storage_account_name : string prop option; [@option]
  storage_table_id : string prop option; [@option]
  table_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_table_entity) -> ()

let yojson_of_azurerm_storage_table_entity =
  (function
   | {
       entity = v_entity;
       id = v_id;
       partition_key = v_partition_key;
       row_key = v_row_key;
       storage_account_name = v_storage_account_name;
       storage_table_id = v_storage_table_id;
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
         match v_table_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_table_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_table_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_name", arg in
             bnd :: bnds
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
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_entity
         in
         ("entity", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_storage_table_entity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_table_entity

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_table_entity ?id ?storage_account_name
    ?storage_table_id ?table_name ?timeouts ~entity ~partition_key
    ~row_key () : azurerm_storage_table_entity =
  {
    entity;
    id;
    partition_key;
    row_key;
    storage_account_name;
    storage_table_id;
    table_name;
    timeouts;
  }

type t = {
  entity : (string * string) list prop;
  id : string prop;
  partition_key : string prop;
  row_key : string prop;
  storage_account_name : string prop;
  storage_table_id : string prop;
  table_name : string prop;
}

let make ?id ?storage_account_name ?storage_table_id ?table_name
    ?timeouts ~entity ~partition_key ~row_key __id =
  let __type = "azurerm_storage_table_entity" in
  let __attrs =
    ({
       entity = Prop.computed __type __id "entity";
       id = Prop.computed __type __id "id";
       partition_key = Prop.computed __type __id "partition_key";
       row_key = Prop.computed __type __id "row_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_table_id =
         Prop.computed __type __id "storage_table_id";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_table_entity
        (azurerm_storage_table_entity ?id ?storage_account_name
           ?storage_table_id ?table_name ?timeouts ~entity
           ~partition_key ~row_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?storage_account_name ?storage_table_id
    ?table_name ?timeouts ~entity ~partition_key ~row_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?storage_account_name ?storage_table_id ?table_name
      ?timeouts ~entity ~partition_key ~row_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
