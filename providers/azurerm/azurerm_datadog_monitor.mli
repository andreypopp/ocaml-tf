(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_datadog_monitor__datadog_organization
type azurerm_datadog_monitor__identity
type azurerm_datadog_monitor__timeouts
type azurerm_datadog_monitor__user
type azurerm_datadog_monitor

type t = private {
  id : string prop;
  location : string prop;
  marketplace_subscription_status : string prop;
  monitoring_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_datadog_monitor :
  ?id:string prop ->
  ?monitoring_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_datadog_monitor__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  datadog_organization:
    azurerm_datadog_monitor__datadog_organization list ->
  identity:azurerm_datadog_monitor__identity list ->
  user:azurerm_datadog_monitor__user list ->
  string ->
  t
