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

type azurerm_cosmosdb_sql_function = {
  body : string prop;
  container_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_sql_function) -> ()

let yojson_of_azurerm_cosmosdb_sql_function =
  (function
   | {
       body = v_body;
       container_id = v_container_id;
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
         let arg = yojson_of_prop yojson_of_string v_container_id in
         ("container_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_body in
         ("body", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_sql_function ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_sql_function

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_function ?id ?timeouts ~body ~container_id
    ~name () : azurerm_cosmosdb_sql_function =
  { body; container_id; id; name; timeouts }

type t = {
  tf_name : string;
  body : string prop;
  container_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~body ~container_id ~name __id =
  let __type = "azurerm_cosmosdb_sql_function" in
  let __attrs =
    ({
       tf_name = __id;
       body = Prop.computed __type __id "body";
       container_id = Prop.computed __type __id "container_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_function
        (azurerm_cosmosdb_sql_function ?id ?timeouts ~body
           ~container_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~body ~container_id ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~body ~container_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
