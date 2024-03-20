(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type customer_managed_key

val customer_managed_key :
  ?infrastructure_encryption_enabled:bool prop ->
  identity_id:string prop ->
  key_vault_key_id:string prop ->
  unit ->
  customer_managed_key

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type network_rule_set__network_rules

val network_rule_set__network_rules :
  ?ignore_missing_vnet_service_endpoint:bool prop ->
  subnet_id:string prop ->
  unit ->
  network_rule_set__network_rules

type network_rule_set

val network_rule_set :
  ?default_action:string prop ->
  ?ip_rules:string prop list ->
  ?public_network_access_enabled:bool prop ->
  ?trusted_services_allowed:bool prop ->
  network_rules:network_rule_set__network_rules list ->
  unit ->
  network_rule_set

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_servicebus_namespace

val azurerm_servicebus_namespace :
  ?capacity:float prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?minimum_tls_version:string prop ->
  ?premium_messaging_partitions:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  customer_managed_key:customer_managed_key list ->
  identity:identity list ->
  network_rule_set:network_rule_set list ->
  unit ->
  azurerm_servicebus_namespace

val yojson_of_azurerm_servicebus_namespace :
  azurerm_servicebus_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  capacity : float prop;
  default_primary_connection_string : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_key : string prop;
  endpoint : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  premium_messaging_partitions : float prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?capacity:float prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?minimum_tls_version:string prop ->
  ?premium_messaging_partitions:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  customer_managed_key:customer_managed_key list ->
  identity:identity list ->
  network_rule_set:network_rule_set list ->
  string ->
  t

val make :
  ?capacity:float prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?minimum_tls_version:string prop ->
  ?premium_messaging_partitions:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  customer_managed_key:customer_managed_key list ->
  identity:identity list ->
  network_rule_set:network_rule_set list ->
  string ->
  t Tf_core.resource
