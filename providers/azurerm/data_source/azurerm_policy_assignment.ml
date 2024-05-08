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

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type non_compliance_message = {
  content : string prop;
  policy_definition_reference_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : non_compliance_message) -> ()

let yojson_of_non_compliance_message =
  (function
   | {
       content = v_content;
       policy_definition_reference_id =
         v_policy_definition_reference_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_policy_definition_reference_id
         in
         ("policy_definition_reference_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : non_compliance_message -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_non_compliance_message

[@@@deriving.end]

type azurerm_policy_assignment = {
  id : string prop option; [@option]
  name : string prop;
  scope_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_policy_assignment) -> ()

let yojson_of_azurerm_policy_assignment =
  (function
   | {
       id = v_id;
       name = v_name;
       scope_id = v_scope_id;
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
         let arg = yojson_of_prop yojson_of_string v_scope_id in
         ("scope_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_policy_assignment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_policy_assignment

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_policy_assignment ?id ?timeouts ~name ~scope_id () :
    azurerm_policy_assignment =
  { id; name; scope_id; timeouts }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  enforce : bool prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  metadata : string prop;
  name : string prop;
  non_compliance_message : non_compliance_message list prop;
  not_scopes : string list prop;
  parameters : string prop;
  policy_definition_id : string prop;
  scope_id : string prop;
}

let make ?id ?timeouts ~name ~scope_id __id =
  let __type = "azurerm_policy_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enforce = Prop.computed __type __id "enforce";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       location = Prop.computed __type __id "location";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       non_compliance_message =
         Prop.computed __type __id "non_compliance_message";
       not_scopes = Prop.computed __type __id "not_scopes";
       parameters = Prop.computed __type __id "parameters";
       policy_definition_id =
         Prop.computed __type __id "policy_definition_id";
       scope_id = Prop.computed __type __id "scope_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_policy_assignment
        (azurerm_policy_assignment ?id ?timeouts ~name ~scope_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~scope_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~scope_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
