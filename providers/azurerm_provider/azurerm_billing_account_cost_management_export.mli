(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_billing_account_cost_management_export__export_data_options

type azurerm_billing_account_cost_management_export__export_data_storage_location

type azurerm_billing_account_cost_management_export__timeouts
type azurerm_billing_account_cost_management_export

val azurerm_billing_account_cost_management_export :
  ?active:bool ->
  ?timeouts:azurerm_billing_account_cost_management_export__timeouts ->
  billing_account_id:string ->
  name:string ->
  recurrence_period_end_date:string ->
  recurrence_period_start_date:string ->
  recurrence_type:string ->
  export_data_options:
    azurerm_billing_account_cost_management_export__export_data_options
    list ->
  export_data_storage_location:
    azurerm_billing_account_cost_management_export__export_data_storage_location
    list ->
  string ->
  unit
