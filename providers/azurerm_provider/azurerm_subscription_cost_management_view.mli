(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription_cost_management_view__dataset__aggregation
type azurerm_subscription_cost_management_view__dataset__grouping
type azurerm_subscription_cost_management_view__dataset__sorting
type azurerm_subscription_cost_management_view__dataset
type azurerm_subscription_cost_management_view__kpi
type azurerm_subscription_cost_management_view__pivot
type azurerm_subscription_cost_management_view__timeouts
type azurerm_subscription_cost_management_view

type t = private {
  accumulated : bool prop;
  chart_type : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  report_type : string prop;
  subscription_id : string prop;
  timeframe : string prop;
}

val azurerm_subscription_cost_management_view :
  ?id:string prop ->
  ?timeouts:azurerm_subscription_cost_management_view__timeouts ->
  accumulated:bool prop ->
  chart_type:string prop ->
  display_name:string prop ->
  name:string prop ->
  report_type:string prop ->
  subscription_id:string prop ->
  timeframe:string prop ->
  dataset:azurerm_subscription_cost_management_view__dataset list ->
  kpi:azurerm_subscription_cost_management_view__kpi list ->
  pivot:azurerm_subscription_cost_management_view__pivot list ->
  string ->
  t
