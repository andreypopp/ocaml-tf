(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permissions = {
  data_actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permissions) -> ()

let yojson_of_permissions =
  (function
   | { data_actions = v_data_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_data_actions
           in
           let bnd = "data_actions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permissions

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

type azurerm_cosmosdb_sql_role_definition = {
  account_name : string prop;
  assignable_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  permissions : permissions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_sql_role_definition) -> ()

let yojson_of_azurerm_cosmosdb_sql_role_definition =
  (function
   | {
       account_name = v_account_name;
       assignable_scopes = v_assignable_scopes;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       role_definition_id = v_role_definition_id;
       type_ = v_type_;
       permissions = v_permissions;
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
         if Stdlib.( = ) [] v_permissions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_permissions) v_permissions
           in
           let bnd = "permissions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_definition_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_definition_id", arg in
             bnd :: bnds
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
       let bnds =
         if Stdlib.( = ) [] v_assignable_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_assignable_scopes
           in
           let bnd = "assignable_scopes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_sql_role_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_sql_role_definition

[@@@deriving.end]

let permissions ~data_actions () : permissions = { data_actions }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_role_definition ?id ?role_definition_id
    ?type_ ?timeouts ~account_name ~assignable_scopes ~name
    ~resource_group_name ~permissions () :
    azurerm_cosmosdb_sql_role_definition =
  {
    account_name;
    assignable_scopes;
    id;
    name;
    resource_group_name;
    role_definition_id;
    type_;
    permissions;
    timeouts;
  }

type t = {
  tf_name : string;
  account_name : string prop;
  assignable_scopes : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  type_ : string prop;
}

let make ?id ?role_definition_id ?type_ ?timeouts ~account_name
    ~assignable_scopes ~name ~resource_group_name ~permissions __id =
  let __type = "azurerm_cosmosdb_sql_role_definition" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       assignable_scopes =
         Prop.computed __type __id "assignable_scopes";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_role_definition
        (azurerm_cosmosdb_sql_role_definition ?id ?role_definition_id
           ?type_ ?timeouts ~account_name ~assignable_scopes ~name
           ~resource_group_name ~permissions ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?role_definition_id ?type_ ?timeouts
    ~account_name ~assignable_scopes ~name ~resource_group_name
    ~permissions __id =
  let (r : _ Tf_core.resource) =
    make ?id ?role_definition_id ?type_ ?timeouts ~account_name
      ~assignable_scopes ~name ~resource_group_name ~permissions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
