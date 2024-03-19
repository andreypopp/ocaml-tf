(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity

val identity : type_:string prop -> unit -> identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sql_managed_instance

val azurerm_sql_managed_instance :
  ?collation:string prop ->
  ?dns_zone_partner_id:string prop ->
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?proxy_override:string prop ->
  ?public_data_endpoint_enabled:bool prop ->
  ?storage_account_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timezone_id:string prop ->
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
  identity:identity list ->
  unit ->
  azurerm_sql_managed_instance

val yojson_of_azurerm_sql_managed_instance :
  azurerm_sql_managed_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  administrator_login : string prop;
  administrator_login_password : string prop;
  collation : string prop;
  dns_zone_partner_id : string prop;
  fqdn : string prop;
  id : string prop;
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
  tags : (string * string) list prop;
  timezone_id : string prop;
  vcores : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?collation:string prop ->
  ?dns_zone_partner_id:string prop ->
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?proxy_override:string prop ->
  ?public_data_endpoint_enabled:bool prop ->
  ?storage_account_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timezone_id:string prop ->
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
  identity:identity list ->
  string ->
  t
