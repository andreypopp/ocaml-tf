(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type protected_settings_from_key_vault

val protected_settings_from_key_vault :
  secret_url:string prop ->
  source_vault_id:string prop ->
  unit ->
  protected_settings_from_key_vault

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_machine_scale_set_extension

val azurerm_virtual_machine_scale_set_extension :
  ?auto_upgrade_minor_version:bool prop ->
  ?automatic_upgrade_enabled:bool prop ->
  ?failure_suppression_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?provision_after_extensions:string prop list ->
  ?settings:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  type_handler_version:string prop ->
  virtual_machine_scale_set_id:string prop ->
  protected_settings_from_key_vault:
    protected_settings_from_key_vault list ->
  unit ->
  azurerm_virtual_machine_scale_set_extension

val yojson_of_azurerm_virtual_machine_scale_set_extension :
  azurerm_virtual_machine_scale_set_extension -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?auto_upgrade_minor_version:bool prop ->
  ?automatic_upgrade_enabled:bool prop ->
  ?failure_suppression_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?provision_after_extensions:string prop list ->
  ?settings:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  type_handler_version:string prop ->
  virtual_machine_scale_set_id:string prop ->
  protected_settings_from_key_vault:
    protected_settings_from_key_vault list ->
  string ->
  t

val make :
  ?auto_upgrade_minor_version:bool prop ->
  ?automatic_upgrade_enabled:bool prop ->
  ?failure_suppression_enabled:bool prop ->
  ?force_update_tag:string prop ->
  ?id:string prop ->
  ?protected_settings:string prop ->
  ?provision_after_extensions:string prop list ->
  ?settings:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  type_handler_version:string prop ->
  virtual_machine_scale_set_id:string prop ->
  protected_settings_from_key_vault:
    protected_settings_from_key_vault list ->
  string ->
  t Tf_core.resource
