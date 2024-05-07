(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_role_assignment = {
  condition : string prop option; [@option]
  condition_version : string prop option; [@option]
  delegated_managed_identity_resource_id : string prop option;
      [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  principal_id : string prop;
  principal_type : string prop option; [@option]
  role_definition_id : string prop option; [@option]
  role_definition_name : string prop option; [@option]
  scope : string prop;
  skip_service_principal_aad_check : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_role_assignment) -> ()

let yojson_of_azurerm_role_assignment =
  (function
   | {
       condition = v_condition;
       condition_version = v_condition_version;
       delegated_managed_identity_resource_id =
         v_delegated_managed_identity_resource_id;
       description = v_description;
       id = v_id;
       name = v_name;
       principal_id = v_principal_id;
       principal_type = v_principal_type;
       role_definition_id = v_role_definition_id;
       role_definition_name = v_role_definition_name;
       scope = v_scope;
       skip_service_principal_aad_check =
         v_skip_service_principal_aad_check;
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
         match v_skip_service_principal_aad_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_service_principal_aad_check", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         match v_role_definition_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_definition_name", arg in
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
         match v_principal_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_type", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delegated_managed_identity_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "delegated_managed_identity_resource_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_condition_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_role_assignment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_role_assignment

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_role_assignment ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?id ?name
    ?principal_type ?role_definition_id ?role_definition_name
    ?skip_service_principal_aad_check ?timeouts ~principal_id ~scope
    () : azurerm_role_assignment =
  {
    condition;
    condition_version;
    delegated_managed_identity_resource_id;
    description;
    id;
    name;
    principal_id;
    principal_type;
    role_definition_id;
    role_definition_name;
    scope;
    skip_service_principal_aad_check;
    timeouts;
  }

type t = {
  tf_name : string;
  condition : string prop;
  condition_version : string prop;
  delegated_managed_identity_resource_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_definition_id : string prop;
  role_definition_name : string prop;
  scope : string prop;
  skip_service_principal_aad_check : bool prop;
}

let make ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?id ?name
    ?principal_type ?role_definition_id ?role_definition_name
    ?skip_service_principal_aad_check ?timeouts ~principal_id ~scope
    __id =
  let __type = "azurerm_role_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       condition = Prop.computed __type __id "condition";
       condition_version =
         Prop.computed __type __id "condition_version";
       delegated_managed_identity_resource_id =
         Prop.computed __type __id
           "delegated_managed_identity_resource_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       role_definition_name =
         Prop.computed __type __id "role_definition_name";
       scope = Prop.computed __type __id "scope";
       skip_service_principal_aad_check =
         Prop.computed __type __id "skip_service_principal_aad_check";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_role_assignment
        (azurerm_role_assignment ?condition ?condition_version
           ?delegated_managed_identity_resource_id ?description ?id
           ?name ?principal_type ?role_definition_id
           ?role_definition_name ?skip_service_principal_aad_check
           ?timeouts ~principal_id ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?id ?name
    ?principal_type ?role_definition_id ?role_definition_name
    ?skip_service_principal_aad_check ?timeouts ~principal_id ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?condition ?condition_version
      ?delegated_managed_identity_resource_id ?description ?id ?name
      ?principal_type ?role_definition_id ?role_definition_name
      ?skip_service_principal_aad_check ?timeouts ~principal_id
      ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
