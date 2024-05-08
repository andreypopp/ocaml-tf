(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type threat_detection_policy = {
  disabled_alerts : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** disabled_alerts *)
  email_account_admins : bool prop;  (** email_account_admins *)
  email_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** email_addresses *)
  enabled : bool prop;  (** enabled *)
  retention_days : float prop;  (** retention_days *)
  storage_account_access_key : string prop;
      (** storage_account_access_key *)
  storage_endpoint : string prop;  (** storage_endpoint *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mysql_server

val azurerm_mysql_server :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_mysql_server

val yojson_of_azurerm_mysql_server : azurerm_mysql_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  identity : identity list prop;
  infrastructure_encryption_enabled : bool prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  sku_name : string prop;
  ssl_enforcement_enabled : bool prop;
  ssl_minimal_tls_version_enforced : string prop;
  storage_mb : float prop;
  tags : (string * string) list prop;
  threat_detection_policy : threat_detection_policy list prop;
  version : string prop;
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
