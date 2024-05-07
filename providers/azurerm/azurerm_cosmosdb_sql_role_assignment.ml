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

type azurerm_cosmosdb_sql_role_assignment = {
  account_name : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  principal_id : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  scope : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_sql_role_assignment) -> ()

let yojson_of_azurerm_cosmosdb_sql_role_assignment =
  (function
   | {
       account_name = v_account_name;
       id = v_id;
       name = v_name;
       principal_id = v_principal_id;
       resource_group_name = v_resource_group_name;
       role_definition_id = v_role_definition_id;
       scope = v_scope;
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
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_role_definition_id
         in
         ("role_definition_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_sql_role_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_sql_role_assignment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_role_assignment ?id ?name ?timeouts
    ~account_name ~principal_id ~resource_group_name
    ~role_definition_id ~scope () :
    azurerm_cosmosdb_sql_role_assignment =
  {
    account_name;
    id;
    name;
    principal_id;
    resource_group_name;
    role_definition_id;
    scope;
    timeouts;
  }

type t = {
  tf_name : string;
  account_name : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

let make ?id ?name ?timeouts ~account_name ~principal_id
    ~resource_group_name ~role_definition_id ~scope __id =
  let __type = "azurerm_cosmosdb_sql_role_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_id = Prop.computed __type __id "principal_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_role_assignment
        (azurerm_cosmosdb_sql_role_assignment ?id ?name ?timeouts
           ~account_name ~principal_id ~resource_group_name
           ~role_definition_id ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~account_name
    ~principal_id ~resource_group_name ~role_definition_id ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~account_name ~principal_id
      ~resource_group_name ~role_definition_id ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
