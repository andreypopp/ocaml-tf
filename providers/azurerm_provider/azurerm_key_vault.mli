(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault__contact
type azurerm_key_vault__network_acls
type azurerm_key_vault__timeouts

type azurerm_key_vault__access_policy = {
  application_id : string;  (** application_id *)
  certificate_permissions : string list;
      (** certificate_permissions *)
  key_permissions : string list;  (** key_permissions *)
  object_id : string;  (** object_id *)
  secret_permissions : string list;  (** secret_permissions *)
  storage_permissions : string list;  (** storage_permissions *)
  tenant_id : string;  (** tenant_id *)
}

type azurerm_key_vault

val azurerm_key_vault :
  ?access_policy:azurerm_key_vault__access_policy list ->
  ?enable_rbac_authorization:bool ->
  ?enabled_for_deployment:bool ->
  ?enabled_for_disk_encryption:bool ->
  ?enabled_for_template_deployment:bool ->
  ?id:string ->
  ?public_network_access_enabled:bool ->
  ?purge_protection_enabled:bool ->
  ?soft_delete_retention_days:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_key_vault__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  tenant_id:string ->
  contact:azurerm_key_vault__contact list ->
  network_acls:azurerm_key_vault__network_acls list ->
  string ->
  unit
