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
  actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  condition : string prop;
  condition_version : string prop;
  data_actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  not_actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  not_data_actions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permissions) -> ()

let yojson_of_permissions =
  (function
   | {
       actions = v_actions;
       condition = v_condition;
       condition_version = v_condition_version;
       data_actions = v_data_actions;
       not_actions = v_not_actions;
       not_data_actions = v_not_data_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_not_data_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_not_data_actions
           in
           let bnd = "not_data_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_not_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_not_actions
           in
           let bnd = "not_actions", arg in
           bnd :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_condition_version
         in
         ("condition_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_condition in
         ("condition", arg) :: bnds
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
    : permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permissions

[@@@deriving.end]

type azurerm_role_definition = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  role_definition_id : string prop option; [@option]
  scope : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_role_definition) -> ()

let yojson_of_azurerm_role_definition =
  (function
   | {
       id = v_id;
       name = v_name;
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
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
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
       `Assoc bnds
    : azurerm_role_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_role_definition

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_role_definition ?id ?name ?role_definition_id ?scope
    ?timeouts () : azurerm_role_definition =
  { id; name; role_definition_id; scope; timeouts }

type t = {
  tf_name : string;
  assignable_scopes : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  permissions : permissions list prop;
  role_definition_id : string prop;
  scope : string prop;
  type_ : string prop;
}

let make ?id ?name ?role_definition_id ?scope ?timeouts __id =
  let __type = "azurerm_role_definition" in
  let __attrs =
    ({
       tf_name = __id;
       assignable_scopes =
         Prop.computed __type __id "assignable_scopes";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       permissions = Prop.computed __type __id "permissions";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       scope = Prop.computed __type __id "scope";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_role_definition
        (azurerm_role_definition ?id ?name ?role_definition_id ?scope
           ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?role_definition_id ?scope
    ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?role_definition_id ?scope ?timeouts __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
