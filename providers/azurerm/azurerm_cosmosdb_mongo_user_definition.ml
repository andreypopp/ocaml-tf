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

type azurerm_cosmosdb_mongo_user_definition = {
  cosmos_mongo_database_id : string prop;
  id : string prop option; [@option]
  inherited_role_names : string prop list option; [@option]
  password : string prop;
  username : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_mongo_user_definition) -> ()

let yojson_of_azurerm_cosmosdb_mongo_user_definition =
  (function
   | {
       cosmos_mongo_database_id = v_cosmos_mongo_database_id;
       id = v_id;
       inherited_role_names = v_inherited_role_names;
       password = v_password;
       username = v_username;
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
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_inherited_role_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inherited_role_names", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_cosmos_mongo_database_id
         in
         ("cosmos_mongo_database_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_mongo_user_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_mongo_user_definition

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_mongo_user_definition ?id ?inherited_role_names
    ?timeouts ~cosmos_mongo_database_id ~password ~username () :
    azurerm_cosmosdb_mongo_user_definition =
  {
    cosmos_mongo_database_id;
    id;
    inherited_role_names;
    password;
    username;
    timeouts;
  }

type t = {
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  password : string prop;
  username : string prop;
}

let make ?id ?inherited_role_names ?timeouts
    ~cosmos_mongo_database_id ~password ~username __id =
  let __type = "azurerm_cosmosdb_mongo_user_definition" in
  let __attrs =
    ({
       cosmos_mongo_database_id =
         Prop.computed __type __id "cosmos_mongo_database_id";
       id = Prop.computed __type __id "id";
       inherited_role_names =
         Prop.computed __type __id "inherited_role_names";
       password = Prop.computed __type __id "password";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_mongo_user_definition
        (azurerm_cosmosdb_mongo_user_definition ?id
           ?inherited_role_names ?timeouts ~cosmos_mongo_database_id
           ~password ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?inherited_role_names ?timeouts
    ~cosmos_mongo_database_id ~password ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?inherited_role_names ?timeouts
      ~cosmos_mongo_database_id ~password ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
