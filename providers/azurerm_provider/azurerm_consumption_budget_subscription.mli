(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_consumption_budget_subscription__filter__dimension
type azurerm_consumption_budget_subscription__filter__not__dimension
type azurerm_consumption_budget_subscription__filter__not__tag
type azurerm_consumption_budget_subscription__filter__not
type azurerm_consumption_budget_subscription__filter__tag
type azurerm_consumption_budget_subscription__filter
type azurerm_consumption_budget_subscription__notification
type azurerm_consumption_budget_subscription__time_period
type azurerm_consumption_budget_subscription__timeouts
type azurerm_consumption_budget_subscription

type t = private {
  amount : float prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  subscription_id : string prop;
  time_grain : string prop;
}

val azurerm_consumption_budget_subscription :
  ?etag:string prop ->
  ?id:string prop ->
  ?time_grain:string prop ->
  ?timeouts:azurerm_consumption_budget_subscription__timeouts ->
  amount:float prop ->
  name:string prop ->
  subscription_id:string prop ->
  filter:azurerm_consumption_budget_subscription__filter list ->
  notification:
    azurerm_consumption_budget_subscription__notification list ->
  time_period:
    azurerm_consumption_budget_subscription__time_period list ->
  string ->
  t
