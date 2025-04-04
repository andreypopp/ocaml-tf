(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_managed_instance

val azurerm_mssql_managed_instance :
  ?collation:string prop ->
  ?dns_zone_partner_id:string prop ->
  ?id:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?minimum_tls_version:string prop ->
  ?proxy_override:string prop ->
  ?public_data_endpoint_enabled:bool prop ->
  ?storage_account_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timezone_id:string prop ->
  ?zone_redundant_enabled:bool prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  license_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage_size_in_gb:float prop ->
  subnet_id:string prop ->
  vcores:float prop ->
  unit ->
  azurerm_mssql_managed_instance

val yojson_of_azurerm_mssql_managed_instance :
  azurerm_mssql_managed_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  administrator_login_password : string prop;
  collation : string prop;
  dns_zone : string prop;
  dns_zone_partner_id : string prop;
  fqdn : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  maintenance_configuration_name : string prop;
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
  zone_redundant_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?collation:string prop ->
  ?dns_zone_partner_id:string prop ->
  ?id:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?minimum_tls_version:string prop ->
  ?proxy_override:string prop ->
  ?public_data_endpoint_enabled:bool prop ->
  ?storage_account_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timezone_id:string prop ->
  ?zone_redundant_enabled:bool prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  license_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage_size_in_gb:float prop ->
  subnet_id:string prop ->
  vcores:float prop ->
  string ->
  t

val make :
  ?collation:string prop ->
  ?dns_zone_partner_id:string prop ->
  ?id:string prop ->
  ?maintenance_configuration_name:string prop ->
  ?minimum_tls_version:string prop ->
  ?proxy_override:string prop ->
  ?public_data_endpoint_enabled:bool prop ->
  ?storage_account_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timezone_id:string prop ->
  ?zone_redundant_enabled:bool prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  administrator_login:string prop ->
  administrator_login_password:string prop ->
  license_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  storage_size_in_gb:float prop ->
  subnet_id:string prop ->
  vcores:float prop ->
  string ->
  t Tf_core.resource
