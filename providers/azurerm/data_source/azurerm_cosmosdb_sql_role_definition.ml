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

type permissions = {
  data_actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_data_actions then bnds
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

type azurerm_cosmosdb_sql_role_definition = {
  account_name : string prop;
  id : string prop option; [@option]
  resource_group_name : string prop;
  role_definition_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_sql_role_definition) -> ()

let yojson_of_azurerm_cosmosdb_sql_role_definition =
  (function
   | {
       account_name = v_account_name;
       id = v_id;
       resource_group_name = v_resource_group_name;
       role_definition_id = v_role_definition_id;
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
    : azurerm_cosmosdb_sql_role_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_sql_role_definition

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_cosmosdb_sql_role_definition ?id ?timeouts ~account_name
    ~resource_group_name ~role_definition_id () :
    azurerm_cosmosdb_sql_role_definition =
  {
    account_name;
    id;
    resource_group_name;
    role_definition_id;
    timeouts;
  }

type t = {
  tf_name : string;
  account_name : string prop;
  assignable_scopes : string list prop;
  id : string prop;
  name : string prop;
  permissions : permissions list prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  type_ : string prop;
}

let make ?id ?timeouts ~account_name ~resource_group_name
    ~role_definition_id __id =
  let __type = "azurerm_cosmosdb_sql_role_definition" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       assignable_scopes =
         Prop.computed __type __id "assignable_scopes";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       permissions = Prop.computed __type __id "permissions";
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
        (azurerm_cosmosdb_sql_role_definition ?id ?timeouts
           ~account_name ~resource_group_name ~role_definition_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name
    ~resource_group_name ~role_definition_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~resource_group_name
      ~role_definition_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
