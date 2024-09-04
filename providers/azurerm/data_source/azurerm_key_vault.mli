(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_policy = {
  application_id : string prop;  (** application_id *)
  certificate_permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** certificate_permissions *)
  key_permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** key_permissions *)
  object_id : string prop;  (** object_id *)
  secret_permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** secret_permissions *)
  storage_permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** storage_permissions *)
  tenant_id : string prop;  (** tenant_id *)
}

type network_acls = {
  bypass : string prop;  (** bypass *)
  default_action : string prop;  (** default_action *)
  ip_rules : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_rules *)
  virtual_network_subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_network_subnet_ids *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault

val azurerm_key_vault :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
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
  network_acls : network_acls list prop;
  public_network_access_enabled : bool prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
  tenant_id : string prop;
  vault_uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
