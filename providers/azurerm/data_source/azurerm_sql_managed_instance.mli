(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_sql_managed_instance

val azurerm_sql_managed_instance :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_sql_managed_instance

val yojson_of_azurerm_sql_managed_instance :
  azurerm_sql_managed_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  collation : string prop;
  dns_zone_partner_id : string prop;
  fqdn : string prop;
  id : string prop;
  identity : identity list prop;
  license_type : string prop;
  location : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  proxy_override : string prop;
  public_data_endpoint_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  storage_size_in_gb : float prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  timezone_id : string prop;
  vcores : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
