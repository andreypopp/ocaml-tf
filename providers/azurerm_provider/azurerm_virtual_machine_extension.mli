(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_extension__protected_settings_from_key_vault

type azurerm_virtual_machine_extension__timeouts
type azurerm_virtual_machine_extension

val azurerm_virtual_machine_extension :
  ?auto_upgrade_minor_version:bool prop ->
  ?automatic_upgrade_enabled:bool prop ->
  ?failure_suppression_enabled:bool prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?provision_after_extensions:string prop list ->
  ?settings:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_virtual_machine_extension__timeouts ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  type_handler_version:string prop ->
  virtual_machine_id:string prop ->
  protected_settings_from_key_vault:
    azurerm_virtual_machine_extension__protected_settings_from_key_vault
    list ->
  string ->
  unit
