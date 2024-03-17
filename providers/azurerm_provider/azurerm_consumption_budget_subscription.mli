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

val azurerm_consumption_budget_subscription :
  ?time_grain:string ->
  ?timeouts:azurerm_consumption_budget_subscription__timeouts ->
  amount:float ->
  name:string ->
  subscription_id:string ->
  filter:azurerm_consumption_budget_subscription__filter list ->
  notification:
    azurerm_consumption_budget_subscription__notification list ->
  time_period:
    azurerm_consumption_budget_subscription__time_period list ->
  string ->
  unit
