(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_machine_scale_set_extension__protected_settings_from_key_vault = {
  secret_url : string prop;  (** secret_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set_extension__protected_settings_from_key_vault *)

type azurerm_virtual_machine_scale_set_extension__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set_extension__timeouts *)

type azurerm_virtual_machine_scale_set_extension = {
  auto_upgrade_minor_version : bool prop option; [@option]
      (** auto_upgrade_minor_version *)
  automatic_upgrade_enabled : bool prop option; [@option]
      (** automatic_upgrade_enabled *)
  failure_suppression_enabled : bool prop option; [@option]
      (** failure_suppression_enabled *)
  force_update_tag : string prop option; [@option]
      (** force_update_tag *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  protected_settings : string prop option; [@option]
      (** protected_settings *)
  provision_after_extensions : string prop list option; [@option]
      (** provision_after_extensions *)
  publisher : string prop;  (** publisher *)
  settings : string prop option; [@option]  (** settings *)
  type_ : string prop; [@key "type"]  (** type *)
  type_handler_version : string prop;  (** type_handler_version *)
  virtual_machine_scale_set_id : string prop;
      (** virtual_machine_scale_set_id *)
  protected_settings_from_key_vault :
    azurerm_virtual_machine_scale_set_extension__protected_settings_from_key_vault
    list;
  timeouts :
    azurerm_virtual_machine_scale_set_extension__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set_extension *)

let azurerm_virtual_machine_scale_set_extension
    ?auto_upgrade_minor_version ?automatic_upgrade_enabled
    ?failure_suppression_enabled ?force_update_tag ?id
    ?protected_settings ?provision_after_extensions ?settings
    ?timeouts ~name ~publisher ~type_ ~type_handler_version
    ~virtual_machine_scale_set_id ~protected_settings_from_key_vault
    __resource_id =
  let __resource_type =
    "azurerm_virtual_machine_scale_set_extension"
  in
  let __resource =
    {
      auto_upgrade_minor_version;
      automatic_upgrade_enabled;
      failure_suppression_enabled;
      force_update_tag;
      id;
      name;
      protected_settings;
      provision_after_extensions;
      publisher;
      settings;
      type_;
      type_handler_version;
      virtual_machine_scale_set_id;
      protected_settings_from_key_vault;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_scale_set_extension __resource);
  ()
