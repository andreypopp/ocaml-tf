(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module_role_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_assignment__timeouts *)

type azurerm_key_vault_managed_hardware_security_module_role_assignment = {
  name : string;  (** name *)
  principal_id : string;  (** principal_id *)
  role_definition_id : string;  (** role_definition_id *)
  scope : string;  (** scope *)
  vault_base_url : string;  (** vault_base_url *)
  timeouts :
    azurerm_key_vault_managed_hardware_security_module_role_assignment__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_assignment *)

let azurerm_key_vault_managed_hardware_security_module_role_assignment
    ?timeouts ~name ~principal_id ~role_definition_id ~scope
    ~vault_base_url __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_hardware_security_module_role_assignment"
  in
  let __resource =
    {
      name;
      principal_id;
      role_definition_id;
      scope;
      vault_base_url;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_hardware_security_module_role_assignment
       __resource);
  ()
