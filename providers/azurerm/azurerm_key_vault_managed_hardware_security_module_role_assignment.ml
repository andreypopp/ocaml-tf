(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~name ~principal_id
    ~role_definition_id ~scope ~vault_base_url __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_hardware_security_module_role_assignment"
  in
  let __resource =
    azurerm_key_vault_managed_hardware_security_module_role_assignment
      ?id ?timeouts ~name ~principal_id ~role_definition_id ~scope
      ~vault_base_url ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_hardware_security_module_role_assignment
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       principal_id =
         Prop.computed __resource_type __resource_id "principal_id";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       role_definition_id =
         Prop.computed __resource_type __resource_id
           "role_definition_id";
       scope = Prop.computed __resource_type __resource_id "scope";
       vault_base_url =
         Prop.computed __resource_type __resource_id "vault_base_url";
     }
      : t)
  in
  __resource_attributes
