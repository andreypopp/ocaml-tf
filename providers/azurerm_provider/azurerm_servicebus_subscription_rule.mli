(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_servicebus_subscription_rule__correlation_filter
type azurerm_servicebus_subscription_rule__timeouts
type azurerm_servicebus_subscription_rule

type t = private {
  action : string prop;
  filter_type : string prop;
  id : string prop;
  name : string prop;
  sql_filter : string prop;
  sql_filter_compatibility_level : float prop;
  subscription_id : string prop;
}

val azurerm_servicebus_subscription_rule :
  ?action:string prop ->
  ?id:string prop ->
  ?sql_filter:string prop ->
  ?timeouts:azurerm_servicebus_subscription_rule__timeouts ->
  filter_type:string prop ->
  name:string prop ->
  subscription_id:string prop ->
  correlation_filter:
    azurerm_servicebus_subscription_rule__correlation_filter list ->
  string ->
  t
