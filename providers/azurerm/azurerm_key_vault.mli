(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_policy = {
  application_id : string prop;  (** application_id *)
  certificate_permissions : string prop list;
      (** certificate_permissions *)
  key_permissions : string prop list;  (** key_permissions *)
  object_id : string prop;  (** object_id *)
  secret_permissions : string prop list;  (** secret_permissions *)
  storage_permissions : string prop list;  (** storage_permissions *)
  tenant_id : string prop;  (** tenant_id *)
}

type contact

val contact :
  ?name:string prop ->
  ?phone:string prop ->
  email:string prop ->
  unit ->
  contact

type network_acls

val network_acls :
  ?ip_rules:string prop list ->
  ?virtual_network_subnet_ids:string prop list ->
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

type azurerm_key_vault

val azurerm_key_vault :
  ?access_policy:access_policy list ->
  ?enable_rbac_authorization:bool prop ->
  ?enabled_for_deployment:bool prop ->
  ?enabled_for_disk_encryption:bool prop ->
  ?enabled_for_template_deployment:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_protection_enabled:bool prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?network_acls:network_acls list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  tenant_id:string prop ->
  contact:contact list ->
  unit ->
  azurerm_key_vault

val yojson_of_azurerm_key_vault : azurerm_key_vault -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_policy : access_policy list prop;
  enable_rbac_authorization : bool prop;
  enabled_for_deployment : bool prop;
  enabled_for_disk_encryption : bool prop;
  enabled_for_template_deployment : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  vault_uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_policy:access_policy list ->
  ?enable_rbac_authorization:bool prop ->
  ?enabled_for_deployment:bool prop ->
  ?enabled_for_disk_encryption:bool prop ->
  ?enabled_for_template_deployment:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_protection_enabled:bool prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?network_acls:network_acls list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  tenant_id:string prop ->
  contact:contact list ->
  string ->
  t

val make :
  ?access_policy:access_policy list ->
  ?enable_rbac_authorization:bool prop ->
  ?enabled_for_deployment:bool prop ->
  ?enabled_for_disk_encryption:bool prop ->
  ?enabled_for_template_deployment:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_protection_enabled:bool prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?network_acls:network_acls list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  tenant_id:string prop ->
  contact:contact list ->
  string ->
  t Tf_core.resource
