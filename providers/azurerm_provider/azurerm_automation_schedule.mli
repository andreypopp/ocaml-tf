(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_schedule__monthly_occurrence
type azurerm_automation_schedule__timeouts
type azurerm_automation_schedule

val azurerm_automation_schedule :
  ?description:string ->
  ?month_days:float list ->
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
