(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_consumption_budget_management_group__filter__dimension

type azurerm_consumption_budget_management_group__filter__not__dimension

type azurerm_consumption_budget_management_group__filter__not__tag
type azurerm_consumption_budget_management_group__filter__not
type azurerm_consumption_budget_management_group__filter__tag
type azurerm_consumption_budget_management_group__filter
type azurerm_consumption_budget_management_group__notification
type azurerm_consumption_budget_management_group__time_period
type azurerm_consumption_budget_management_group__timeouts
type azurerm_consumption_budget_management_group

val azurerm_consumption_budget_management_group :
  ?etag:string prop ->
  ?id:string prop ->
  ?time_grain:string prop ->
  ?timeouts:azurerm_consumption_budget_management_group__timeouts ->
  amount:float prop ->
  management_group_id:string prop ->
  name:string prop ->
  filter:azurerm_consumption_budget_management_group__filter list ->
  notification:
    azurerm_consumption_budget_management_group__notification list ->
  time_period:
    azurerm_consumption_budget_management_group__time_period list ->
  string ->
  unit
