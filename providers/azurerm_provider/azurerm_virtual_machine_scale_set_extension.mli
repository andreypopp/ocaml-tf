(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_scale_set_extension__protected_settings_from_key_vault

type azurerm_virtual_machine_scale_set_extension__timeouts
type azurerm_virtual_machine_scale_set_extension

val azurerm_virtual_machine_scale_set_extension :
  ?auto_upgrade_minor_version:bool ->
  ?automatic_upgrade_enabled:bool ->
  ?failure_suppression_enabled:bool ->
  ?force_update_tag:string ->
  ?protected_settings:string ->
  ?provision_after_extensions:string list ->
  ?settings:string ->
  ?timeouts:azurerm_virtual_machine_scale_set_extension__timeouts ->
  name:string ->
  publisher:string ->
  type_:string ->
  type_handler_version:string ->
  virtual_machine_scale_set_id:string ->
  protected_settings_from_key_vault:
    azurerm_virtual_machine_scale_set_extension__protected_settings_from_key_vault
    list ->
  string ->
  unit
