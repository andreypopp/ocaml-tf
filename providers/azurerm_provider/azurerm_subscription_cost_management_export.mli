(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription_cost_management_export__export_data_options

type azurerm_subscription_cost_management_export__export_data_storage_location

type azurerm_subscription_cost_management_export__timeouts
type azurerm_subscription_cost_management_export

val azurerm_subscription_cost_management_export :
  ?active:bool ->
  ?id:string ->
  ?timeouts:azurerm_subscription_cost_management_export__timeouts ->
  name:string ->
  recurrence_period_end_date:string ->
  recurrence_period_start_date:string ->
  recurrence_type:string ->
  subscription_id:string ->
  export_data_options:
    azurerm_subscription_cost_management_export__export_data_options
    list ->
  export_data_storage_location:
    azurerm_subscription_cost_management_export__export_data_storage_location
    list ->
  string ->
  unit
