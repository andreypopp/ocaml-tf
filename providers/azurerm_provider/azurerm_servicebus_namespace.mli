(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_namespace__customer_managed_key
type azurerm_servicebus_namespace__identity
type azurerm_servicebus_namespace__network_rule_set__network_rules
type azurerm_servicebus_namespace__network_rule_set
type azurerm_servicebus_namespace__timeouts
type azurerm_servicebus_namespace

val azurerm_servicebus_namespace :
  ?capacity:float ->
  ?id:string ->
  ?local_auth_enabled:bool ->
  ?minimum_tls_version:string ->
  ?premium_messaging_partitions:float ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?zone_redundant:bool ->
  ?timeouts:azurerm_servicebus_namespace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  customer_managed_key:
    azurerm_servicebus_namespace__customer_managed_key list ->
  identity:azurerm_servicebus_namespace__identity list ->
  network_rule_set:
    azurerm_servicebus_namespace__network_rule_set list ->
  string ->
  unit
