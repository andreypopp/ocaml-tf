(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module__network_acls
type azurerm_key_vault_managed_hardware_security_module__timeouts
type azurerm_key_vault_managed_hardware_security_module

val azurerm_key_vault_managed_hardware_security_module :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_protection_enabled:bool prop ->
  ?security_domain_key_vault_certificate_ids:string prop list ->
  ?security_domain_quorum:float prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_key_vault_managed_hardware_security_module__timeouts ->
  admin_object_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  tenant_id:string prop ->
  network_acls:
    azurerm_key_vault_managed_hardware_security_module__network_acls
    list ->
  string ->
  unit
