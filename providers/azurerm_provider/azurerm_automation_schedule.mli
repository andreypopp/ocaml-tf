(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_schedule__monthly_occurrence
type azurerm_automation_schedule__timeouts
type azurerm_automation_schedule

val azurerm_automation_schedule :
  ?description:string ->
  ?expiry_time:string ->
  ?id:string ->
  ?interval:float ->
  ?month_days:float list ->
  ?start_time:string ->
  ?timezone:string ->
  ?week_days:string list ->
  ?timeouts:azurerm_automation_schedule__timeouts ->
  automation_account_name:string ->
  frequency:string ->
  name:string ->
  resource_group_name:string ->
  monthly_occurrence:
    azurerm_automation_schedule__monthly_occurrence list ->
  string ->
  unit
