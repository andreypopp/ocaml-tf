(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_scale_set_extension__protected_settings_from_key_vault

type azurerm_virtual_machine_scale_set_extension__timeouts
type azurerm_virtual_machine_scale_set_extension

type t = private {
  auto_upgrade_minor_version : bool prop;
  automatic_upgrade_enabled : bool prop;
  failure_suppression_enabled : bool prop;
  force_update_tag : string prop;
  id : string prop;
  name : string prop;
  protected_settings : string prop;
  provision_after_extensions : string list prop;
  publisher : string prop;
  settings : string prop;
  type_ : string prop;
  type_handler_version : string prop;
  virtual_machine_scale_set_id : string prop;
}

val azurerm_virtual_machine_scale_set_extension :
  ?auto_upgrade_minor_version:bool prop ->
  ?automatic_upgrade_enabled:bool prop ->
  ?failure_suppression_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?provision_after_extensions:string prop list ->
  ?settings:string prop ->
  ?timeouts:azurerm_virtual_machine_scale_set_extension__timeouts ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  type_handler_version:string prop ->
  virtual_machine_scale_set_id:string prop ->
  protected_settings_from_key_vault:
    azurerm_virtual_machine_scale_set_extension__protected_settings_from_key_vault
    list ->
  string ->
  t
