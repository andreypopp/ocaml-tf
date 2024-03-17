(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module_role_definition__permission = {
  actions : string prop list option; [@option]  (** actions *)
  data_actions : string prop list option; [@option]
      (** data_actions *)
  not_actions : string prop list option; [@option]
      (** not_actions *)
  not_data_actions : string prop list option; [@option]
      (** not_data_actions *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_definition__permission *)

type azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module_role_definition__timeouts *)

type azurerm_key_vault_managed_hardware_security_module_role_definition = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_name : string prop option; [@option]  (** role_name *)
  vault_base_url : string prop;  (** vault_base_url *)
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
    ?description ?id ?role_name ?timeouts ~name ~vault_base_url
    ~permission __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_hardware_security_module_role_definition"
  in
  let __resource =
    {
      description;
      id;
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
