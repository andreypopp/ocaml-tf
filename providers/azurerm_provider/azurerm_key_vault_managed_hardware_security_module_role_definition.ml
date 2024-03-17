(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module_role_definition__permission = {
  actions : string list option; [@option]  (** actions *)
  data_actions : string list option; [@option]  (** data_actions *)
  not_actions : string list option; [@option]  (** not_actions *)
  not_data_actions : string list option; [@option]
      (** not_data_actions *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_definition__permission *)

type azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts *)

type azurerm_key_vault_managed_hardware_security_module_role_definition = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  role_name : string option; [@option]  (** role_name *)
  vault_base_url : string;  (** vault_base_url *)
  permission :
    azurerm_key_vault_managed_hardware_security_module_role_definition__permission
    list;
  timeouts :
    azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_definition *)

let azurerm_key_vault_managed_hardware_security_module_role_definition
    ?description ?role_name ?timeouts ~name ~vault_base_url
    ~permission __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_hardware_security_module_role_definition"
  in
  let __resource =
    {
      description;
      name;
      role_name;
      vault_base_url;
      permission;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_hardware_security_module_role_definition
       __resource);
  ()
