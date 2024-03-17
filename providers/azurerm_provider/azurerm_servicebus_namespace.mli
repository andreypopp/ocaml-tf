(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_namespace__customer_managed_key
type azurerm_servicebus_namespace__identity
type azurerm_servicebus_namespace__network_rule_set__network_rules
type azurerm_servicebus_namespace__network_rule_set
type azurerm_servicebus_namespace__timeouts
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
  ?timeouts:azurerm_servicebus_namespace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  customer_managed_key:
    azurerm_servicebus_namespace__customer_managed_key list ->
  identity:azurerm_servicebus_namespace__identity list ->
  network_rule_set:
    azurerm_servicebus_namespace__network_rule_set list ->
  string ->
  unit
