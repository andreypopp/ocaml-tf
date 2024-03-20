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

type azurerm_cosmosdb_sql_dedicated_gateway = {
  cosmosdb_account_id : string prop;
  id : string prop option; [@option]
  instance_count : float prop;
  instance_size : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_sql_dedicated_gateway) -> ()

let yojson_of_azurerm_cosmosdb_sql_dedicated_gateway =
  (function
   | {
       cosmosdb_account_id = v_cosmosdb_account_id;
       id = v_id;
       instance_count = v_instance_count;
       instance_size = v_instance_size;
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
         let arg = yojson_of_prop yojson_of_string v_instance_size in
         ("instance_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_cosmosdb_account_id
         in
         ("cosmosdb_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_sql_dedicated_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_sql_dedicated_gateway

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_dedicated_gateway ?id ?timeouts
    ~cosmosdb_account_id ~instance_count ~instance_size () :
    azurerm_cosmosdb_sql_dedicated_gateway =
  {
    cosmosdb_account_id;
    id;
    instance_count;
    instance_size;
    timeouts;
  }

type t = {
  cosmosdb_account_id : string prop;
  id : string prop;
  instance_count : float prop;
  instance_size : string prop;
}

let make ?id ?timeouts ~cosmosdb_account_id ~instance_count
    ~instance_size __id =
  let __type = "azurerm_cosmosdb_sql_dedicated_gateway" in
  let __attrs =
    ({
       cosmosdb_account_id =
         Prop.computed __type __id "cosmosdb_account_id";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       instance_size = Prop.computed __type __id "instance_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_dedicated_gateway
        (azurerm_cosmosdb_sql_dedicated_gateway ?id ?timeouts
           ~cosmosdb_account_id ~instance_count ~instance_size ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cosmosdb_account_id
    ~instance_count ~instance_size __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cosmosdb_account_id ~instance_count
      ~instance_size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
