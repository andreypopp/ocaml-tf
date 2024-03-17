(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_machine_extension__protected_settings_from_key_vault = {
  secret_url : string;  (** secret_url *)
  source_vault_id : string;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_extension__protected_settings_from_key_vault *)

type azurerm_virtual_machine_extension__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_extension__timeouts *)

type azurerm_virtual_machine_extension = {
  auto_upgrade_minor_version : bool option; [@option]
      (** auto_upgrade_minor_version *)
  automatic_upgrade_enabled : bool option; [@option]
      (** automatic_upgrade_enabled *)
  failure_suppression_enabled : bool option; [@option]
      (** failure_suppression_enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  protected_settings : string option; [@option]
      (** protected_settings *)
  provision_after_extensions : string list option; [@option]
      (** provision_after_extensions *)
  publisher : string;  (** publisher *)
  settings : string option; [@option]  (** settings *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  type_handler_version : string;  (** type_handler_version *)
  virtual_machine_id : string;  (** virtual_machine_id *)
  protected_settings_from_key_vault :
    azurerm_virtual_machine_extension__protected_settings_from_key_vault
    list;
  timeouts : azurerm_virtual_machine_extension__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_extension *)

let azurerm_virtual_machine_extension ?auto_upgrade_minor_version
    ?automatic_upgrade_enabled ?failure_suppression_enabled ?id
    ?protected_settings ?provision_after_extensions ?settings ?tags
    ?timeouts ~name ~publisher ~type_ ~type_handler_version
    ~virtual_machine_id ~protected_settings_from_key_vault
    __resource_id =
  let __resource_type = "azurerm_virtual_machine_extension" in
  let __resource =
    {
      auto_upgrade_minor_version;
      automatic_upgrade_enabled;
      failure_suppression_enabled;
      id;
      name;
      protected_settings;
      provision_after_extensions;
      publisher;
      settings;
      tags;
      type_;
      type_handler_version;
      virtual_machine_id;
      protected_settings_from_key_vault;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_extension __resource);
  ()
