(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_subscription_rule__correlation_filter
type azurerm_servicebus_subscription_rule__timeouts
type azurerm_servicebus_subscription_rule

val azurerm_servicebus_subscription_rule :
  ?action:string ->
  ?sql_filter:string ->
  ?timeouts:azurerm_servicebus_subscription_rule__timeouts ->
  filter_type:string ->
  name:string ->
  subscription_id:string ->
  correlation_filter:
    azurerm_servicebus_subscription_rule__correlation_filter list ->
  string ->
  unit
