(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_key_vault_managed_hardware_security_module_role_assignment = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  principal_id : string prop;  (** principal_id *)
  role_definition_id : string prop;  (** role_definition_id *)
  scope : string prop;  (** scope *)
  vault_base_url : string prop;  (** vault_base_url *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_assignment *)

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
