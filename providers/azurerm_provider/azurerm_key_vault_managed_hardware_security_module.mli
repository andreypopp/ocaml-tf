(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module__network_acls
type azurerm_key_vault_managed_hardware_security_module__timeouts
type azurerm_key_vault_managed_hardware_security_module

val azurerm_key_vault_managed_hardware_security_module :
  ?id:string ->
  ?public_network_access_enabled:bool ->
  ?purge_protection_enabled:bool ->
  ?security_domain_key_vault_certificate_ids:string list ->
  ?security_domain_quorum:float ->
  ?soft_delete_retention_days:float ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_key_vault_managed_hardware_security_module__timeouts ->
  admin_object_ids:string list ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  tenant_id:string ->
  network_acls:
    azurerm_key_vault_managed_hardware_security_module__network_acls
    list ->
  string ->
  unit
