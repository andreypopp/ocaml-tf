(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type privilege__resource = {
  collection_name : string prop option; [@option]
  db_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : privilege__resource) -> ()

let yojson_of_privilege__resource =
  (function
   | { collection_name = v_collection_name; db_name = v_db_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_db_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collection_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : privilege__resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_privilege__resource

[@@@deriving.end]

type privilege = {
  actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  resource : privilege__resource list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : privilege) -> ()

let yojson_of_privilege =
  (function
   | { actions = v_actions; resource = v_resource } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_resource then bnds
         else
           let arg =
             (yojson_of_list yojson_of_privilege__resource)
               v_resource
           in
           let bnd = "resource", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_actions
           in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : privilege -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_privilege

[@@@deriving.end]

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

type azurerm_cosmosdb_mongo_role_definition = {
  cosmos_mongo_database_id : string prop;
  id : string prop option; [@option]
  inherited_role_names : string prop list option; [@option]
  role_name : string prop;
  privilege : privilege list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_mongo_role_definition) -> ()

let yojson_of_azurerm_cosmosdb_mongo_role_definition =
  (function
   | {
       cosmos_mongo_database_id = v_cosmos_mongo_database_id;
       id = v_id;
       inherited_role_names = v_inherited_role_names;
       role_name = v_role_name;
       privilege = v_privilege;
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
         if [] = v_privilege then bnds
         else
           let arg =
             (yojson_of_list yojson_of_privilege) v_privilege
           in
           let bnd = "privilege", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_name in
         ("role_name", arg) :: bnds
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
    : azurerm_cosmosdb_mongo_role_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_mongo_role_definition

[@@@deriving.end]

let privilege__resource ?collection_name ?db_name () :
    privilege__resource =
  { collection_name; db_name }

let privilege ~actions ~resource () : privilege =
  { actions; resource }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_mongo_role_definition ?id ?inherited_role_names
    ?(privilege = []) ?timeouts ~cosmos_mongo_database_id ~role_name
    () : azurerm_cosmosdb_mongo_role_definition =
  {
    cosmos_mongo_database_id;
    id;
    inherited_role_names;
    role_name;
    privilege;
    timeouts;
  }

type t = {
  tf_name : string;
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  role_name : string prop;
}

let make ?id ?inherited_role_names ?(privilege = []) ?timeouts
    ~cosmos_mongo_database_id ~role_name __id =
  let __type = "azurerm_cosmosdb_mongo_role_definition" in
  let __attrs =
    ({
       tf_name = __id;
       cosmos_mongo_database_id =
         Prop.computed __type __id "cosmos_mongo_database_id";
       id = Prop.computed __type __id "id";
       inherited_role_names =
         Prop.computed __type __id "inherited_role_names";
       role_name = Prop.computed __type __id "role_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_mongo_role_definition
        (azurerm_cosmosdb_mongo_role_definition ?id
           ?inherited_role_names ~privilege ?timeouts
           ~cosmos_mongo_database_id ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?inherited_role_names ?(privilege = [])
    ?timeouts ~cosmos_mongo_database_id ~role_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?inherited_role_names ~privilege ?timeouts
      ~cosmos_mongo_database_id ~role_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
