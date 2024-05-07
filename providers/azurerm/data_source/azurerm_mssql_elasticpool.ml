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

type sku = {
  capacity : float prop;
  family : string prop;
  name : string prop;
  tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | {
       capacity = v_capacity;
       family = v_family;
       name = v_name;
       tier = v_tier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_family in
         ("family", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type azurerm_mssql_elasticpool = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_elasticpool) -> ()

let yojson_of_azurerm_mssql_elasticpool =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       server_name = v_server_name;
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
         let arg = yojson_of_prop yojson_of_string v_server_name in
         ("server_name", arg) :: bnds
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
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_elasticpool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_elasticpool

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mssql_elasticpool ?id ?timeouts ~name
    ~resource_group_name ~server_name () : azurerm_mssql_elasticpool
    =
  { id; name; resource_group_name; server_name; timeouts }

type t = {
  tf_name : string;
  enclave_type : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  max_size_bytes : float prop;
  max_size_gb : float prop;
  name : string prop;
  per_db_max_capacity : float prop;
  per_db_min_capacity : float prop;
  resource_group_name : string prop;
  server_name : string prop;
  sku : sku list prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let make ?id ?timeouts ~name ~resource_group_name ~server_name __id =
  let __type = "azurerm_mssql_elasticpool" in
  let __attrs =
    ({
       tf_name = __id;
       enclave_type = Prop.computed __type __id "enclave_type";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       max_size_bytes = Prop.computed __type __id "max_size_bytes";
       max_size_gb = Prop.computed __type __id "max_size_gb";
       name = Prop.computed __type __id "name";
       per_db_max_capacity =
         Prop.computed __type __id "per_db_max_capacity";
       per_db_min_capacity =
         Prop.computed __type __id "per_db_min_capacity";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_elasticpool
        (azurerm_mssql_elasticpool ?id ?timeouts ~name
           ~resource_group_name ~server_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~server_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name ~server_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
