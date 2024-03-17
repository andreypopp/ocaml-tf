(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription_cost_management_export__export_data_options

type azurerm_subscription_cost_management_export__export_data_storage_location

type azurerm_subscription_cost_management_export__timeouts
type azurerm_subscription_cost_management_export

val azurerm_subscription_cost_management_export :
  ?active:bool prop ->
  ?id:string prop ->
  ?timeouts:azurerm_subscription_cost_management_export__timeouts ->
  name:string prop ->
  recurrence_period_end_date:string prop ->
  recurrence_period_start_date:string prop ->
  recurrence_type:string prop ->
  subscription_id:string prop ->
  export_data_options:
    azurerm_subscription_cost_management_export__export_data_options
    list ->
  export_data_storage_location:
    azurerm_subscription_cost_management_export__export_data_storage_location
    list ->
  string ->
  unit
