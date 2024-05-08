(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permissions = {
  actions : string prop list option; [@option]
  data_actions : string prop list option; [@option]
  not_actions : string prop list option; [@option]
  not_data_actions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permissions) -> ()

let yojson_of_permissions =
  (function
   | {
       actions = v_actions;
       data_actions = v_data_actions;
       not_actions = v_not_actions;
       not_data_actions = v_not_data_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_not_data_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_data_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "data_actions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
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

type azurerm_role_definition = {
  assignable_scopes : string prop list option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  role_definition_id : string prop option; [@option]
  scope : string prop;
  permissions : permissions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_role_definition) -> ()

let yojson_of_azurerm_role_definition =
  (function
   | {
       assignable_scopes = v_assignable_scopes;
       description = v_description;
       id = v_id;
       name = v_name;
       role_definition_id = v_role_definition_id;
       scope = v_scope;
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
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assignable_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "assignable_scopes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_role_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_role_definition

[@@@deriving.end]

let permissions ?actions ?data_actions ?not_actions ?not_data_actions
    () : permissions =
  { actions; data_actions; not_actions; not_data_actions }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_role_definition ?assignable_scopes ?description ?id
    ?role_definition_id ?(permissions = []) ?timeouts ~name ~scope ()
    : azurerm_role_definition =
  {
    assignable_scopes;
    description;
    id;
    name;
    role_definition_id;
    scope;
    permissions;
    timeouts;
  }

type t = {
  tf_name : string;
  assignable_scopes : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  role_definition_id : string prop;
  role_definition_resource_id : string prop;
  scope : string prop;
}

let make ?assignable_scopes ?description ?id ?role_definition_id
    ?(permissions = []) ?timeouts ~name ~scope __id =
  let __type = "azurerm_role_definition" in
  let __attrs =
    ({
       tf_name = __id;
       assignable_scopes =
         Prop.computed __type __id "assignable_scopes";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       role_definition_resource_id =
         Prop.computed __type __id "role_definition_resource_id";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_role_definition
        (azurerm_role_definition ?assignable_scopes ?description ?id
           ?role_definition_id ~permissions ?timeouts ~name ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?assignable_scopes ?description ?id
    ?role_definition_id ?(permissions = []) ?timeouts ~name ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?assignable_scopes ?description ?id ?role_definition_id
      ~permissions ?timeouts ~name ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
