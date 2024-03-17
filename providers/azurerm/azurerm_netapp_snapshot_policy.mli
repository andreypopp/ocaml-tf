(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_snapshot_policy__daily_schedule
type azurerm_netapp_snapshot_policy__hourly_schedule
type azurerm_netapp_snapshot_policy__monthly_schedule
type azurerm_netapp_snapshot_policy__timeouts
type azurerm_netapp_snapshot_policy__weekly_schedule
type azurerm_netapp_snapshot_policy

type t = private {
  account_name : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_netapp_snapshot_policy :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_netapp_snapshot_policy__timeouts ->
  account_name:string prop ->
  enabled:bool prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  daily_schedule:azurerm_netapp_snapshot_policy__daily_schedule list ->
  hourly_schedule:
    azurerm_netapp_snapshot_policy__hourly_schedule list ->
  monthly_schedule:
    azurerm_netapp_snapshot_policy__monthly_schedule list ->
  weekly_schedule:
    azurerm_netapp_snapshot_policy__weekly_schedule list ->
  string ->
  t
