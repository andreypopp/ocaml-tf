(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_datadog_monitor__datadog_organization
type azurerm_datadog_monitor__identity
type azurerm_datadog_monitor__timeouts
type azurerm_datadog_monitor__user
type azurerm_datadog_monitor

val azurerm_datadog_monitor :
  ?monitoring_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_datadog_monitor__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  datadog_organization:
    azurerm_datadog_monitor__datadog_organization list ->
  identity:azurerm_datadog_monitor__identity list ->
  user:azurerm_datadog_monitor__user list ->
  string ->
  unit
