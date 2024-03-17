(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault__contact
type azurerm_key_vault__network_acls
type azurerm_key_vault__timeouts

type azurerm_key_vault__access_policy = {
  application_id : string prop;  (** application_id *)
  certificate_permissions : string prop list;
      (** certificate_permissions *)
  key_permissions : string prop list;  (** key_permissions *)
  object_id : string prop;  (** object_id *)
  secret_permissions : string prop list;  (** secret_permissions *)
  storage_permissions : string prop list;  (** storage_permissions *)
  tenant_id : string prop;  (** tenant_id *)
}

type azurerm_key_vault

val azurerm_key_vault :
  ?access_policy:azurerm_key_vault__access_policy list ->
  ?enable_rbac_authorization:bool prop ->
  ?enabled_for_deployment:bool prop ->
  ?enabled_for_disk_encryption:bool prop ->
  ?enabled_for_template_deployment:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_protection_enabled:bool prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_key_vault__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  tenant_id:string prop ->
  contact:azurerm_key_vault__contact list ->
  network_acls:azurerm_key_vault__network_acls list ->
  string ->
  unit
