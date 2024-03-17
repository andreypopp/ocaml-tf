(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_snapshot_policy__daily_schedule
type azurerm_netapp_snapshot_policy__hourly_schedule
type azurerm_netapp_snapshot_policy__monthly_schedule
type azurerm_netapp_snapshot_policy__timeouts
type azurerm_netapp_snapshot_policy__weekly_schedule
type azurerm_netapp_snapshot_policy

val azurerm_netapp_snapshot_policy :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_netapp_snapshot_policy__timeouts ->
  account_name:string ->
  enabled:bool ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  daily_schedule:azurerm_netapp_snapshot_policy__daily_schedule list ->
  hourly_schedule:
    azurerm_netapp_snapshot_policy__hourly_schedule list ->
  monthly_schedule:
    azurerm_netapp_snapshot_policy__monthly_schedule list ->
  weekly_schedule:
    azurerm_netapp_snapshot_policy__weekly_schedule list ->
  string ->
  unit
