(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_group_cost_management_view__dataset__aggregation
type azurerm_resource_group_cost_management_view__dataset__grouping
type azurerm_resource_group_cost_management_view__dataset__sorting
type azurerm_resource_group_cost_management_view__dataset
type azurerm_resource_group_cost_management_view__kpi
type azurerm_resource_group_cost_management_view__pivot
type azurerm_resource_group_cost_management_view__timeouts
type azurerm_resource_group_cost_management_view

val azurerm_resource_group_cost_management_view :
  ?timeouts:azurerm_resource_group_cost_management_view__timeouts ->
  accumulated:bool ->
  chart_type:string ->
  display_name:string ->
  name:string ->
  report_type:string ->
  resource_group_id:string ->
  timeframe:string ->
  dataset:azurerm_resource_group_cost_management_view__dataset list ->
  kpi:azurerm_resource_group_cost_management_view__kpi list ->
  pivot:azurerm_resource_group_cost_management_view__pivot list ->
  string ->
  unit
