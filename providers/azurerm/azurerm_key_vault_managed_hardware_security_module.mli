(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_acls

val network_acls :
  bypass:string prop ->
  default_action:string prop ->
  unit ->
  network_acls

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_managed_hardware_security_module

val azurerm_key_vault_managed_hardware_security_module :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_protection_enabled:bool prop ->
  ?security_domain_key_vault_certificate_ids:string prop list ->
  ?security_domain_quorum:float prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  admin_object_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  tenant_id:string prop ->
  network_acls:network_acls list ->
  unit ->
  azurerm_key_vault_managed_hardware_security_module

val yojson_of_azurerm_key_vault_managed_hardware_security_module :
  azurerm_key_vault_managed_hardware_security_module -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_object_ids : string list prop;
  hsm_uri : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  security_domain_encrypted_data : string prop;
  security_domain_key_vault_certificate_ids : string list prop;
  security_domain_quorum : float prop;
  sku_name : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_protection_enabled:bool prop ->
  ?security_domain_key_vault_certificate_ids:string prop list ->
  ?security_domain_quorum:float prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  admin_object_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  tenant_id:string prop ->
  network_acls:network_acls list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_protection_enabled:bool prop ->
  ?security_domain_key_vault_certificate_ids:string prop list ->
  ?security_domain_quorum:float prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  admin_object_ids:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  tenant_id:string prop ->
  network_acls:network_acls list ->
  string ->
  t Tf_core.resource
