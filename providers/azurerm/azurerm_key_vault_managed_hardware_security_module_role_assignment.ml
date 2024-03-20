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

type azurerm_key_vault_managed_hardware_security_module_role_assignment = {
  id : string prop option; [@option]
  name : string prop;
  principal_id : string prop;
  role_definition_id : string prop;
  scope : string prop;
  vault_base_url : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_key_vault_managed_hardware_security_module_role_assignment) ->
  ()

let yojson_of_azurerm_key_vault_managed_hardware_security_module_role_assignment
    =
  (function
   | {
       id = v_id;
       name = v_name;
       principal_id = v_principal_id;
       role_definition_id = v_role_definition_id;
       scope = v_scope;
       vault_base_url = v_vault_base_url;
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
           yojson_of_prop yojson_of_string v_vault_base_url
         in
         ("vault_base_url", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
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
    : azurerm_key_vault_managed_hardware_security_module_role_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_key_vault_managed_hardware_security_module_role_assignment

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_key_vault_managed_hardware_security_module_role_assignment
    ?id ?timeouts ~name ~principal_id ~role_definition_id ~scope
    ~vault_base_url () :
    azurerm_key_vault_managed_hardware_security_module_role_assignment
    =
  {
    id;
    name;
    principal_id;
    role_definition_id;
    scope;
    vault_base_url;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  principal_id : string prop;
  resource_id : string prop;
  role_definition_id : string prop;
  scope : string prop;
  vault_base_url : string prop;
}

let make ?id ?timeouts ~name ~principal_id ~role_definition_id ~scope
    ~vault_base_url __id =
  let __type =
    "azurerm_key_vault_managed_hardware_security_module_role_assignment"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_id = Prop.computed __type __id "principal_id";
       resource_id = Prop.computed __type __id "resource_id";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       scope = Prop.computed __type __id "scope";
       vault_base_url = Prop.computed __type __id "vault_base_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_hardware_security_module_role_assignment
        (azurerm_key_vault_managed_hardware_security_module_role_assignment
           ?id ?timeouts ~name ~principal_id ~role_definition_id
           ~scope ~vault_base_url ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~principal_id
    ~role_definition_id ~scope ~vault_base_url __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~principal_id ~role_definition_id ~scope
      ~vault_base_url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
