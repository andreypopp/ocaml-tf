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

type items = {
  partition_key : string prop;
  properties : string prop Tf_core.assoc;
  row_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : items) -> ()

let yojson_of_items =
  (function
   | {
       partition_key = v_partition_key;
       properties = v_properties;
       row_key = v_row_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_row_key in
         ("row_key", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_properties
         in
         ("properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_partition_key in
         ("partition_key", arg) :: bnds
       in
       `Assoc bnds
    : items -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_items

[@@@deriving.end]

type azurerm_storage_table_entities = {
  filter : string prop;
  id : string prop option; [@option]
  select : string prop list option; [@option]
  storage_account_name : string prop;
  table_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_table_entities) -> ()

let yojson_of_azurerm_storage_table_entities =
  (function
   | {
       filter = v_filter;
       id = v_id;
       select = v_select;
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
         match v_select with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "select", arg in
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
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_storage_table_entities ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_table_entities

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_storage_table_entities ?id ?select ?timeouts ~filter
    ~storage_account_name ~table_name () :
    azurerm_storage_table_entities =
  { filter; id; select; storage_account_name; table_name; timeouts }

type t = {
  tf_name : string;
  filter : string prop;
  id : string prop;
  items : items list prop;
  select : string list prop;
  storage_account_name : string prop;
  table_name : string prop;
}

let make ?id ?select ?timeouts ~filter ~storage_account_name
    ~table_name __id =
  let __type = "azurerm_storage_table_entities" in
  let __attrs =
    ({
       tf_name = __id;
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       items = Prop.computed __type __id "items";
       select = Prop.computed __type __id "select";
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
      yojson_of_azurerm_storage_table_entities
        (azurerm_storage_table_entities ?id ?select ?timeouts ~filter
           ~storage_account_name ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?select ?timeouts ~filter
    ~storage_account_name ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?select ?timeouts ~filter ~storage_account_name
      ~table_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
