(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type daily_schedule

val daily_schedule :
  hour:float prop ->
  minute:float prop ->
  snapshots_to_keep:float prop ->
  unit ->
  daily_schedule

type hourly_schedule

val hourly_schedule :
  minute:float prop ->
  snapshots_to_keep:float prop ->
  unit ->
  hourly_schedule

type monthly_schedule

val monthly_schedule :
  days_of_month:float prop list ->
  hour:float prop ->
  minute:float prop ->
  snapshots_to_keep:float prop ->
  unit ->
  monthly_schedule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type weekly_schedule

val weekly_schedule :
  days_of_week:string prop list ->
  hour:float prop ->
  minute:float prop ->
  snapshots_to_keep:float prop ->
  unit ->
  weekly_schedule

type azurerm_netapp_snapshot_policy

val azurerm_netapp_snapshot_policy :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?daily_schedule:daily_schedule list ->
  ?hourly_schedule:hourly_schedule list ->
  ?monthly_schedule:monthly_schedule list ->
  ?timeouts:timeouts ->
  ?weekly_schedule:weekly_schedule list ->
  account_name:string prop ->
  enabled:bool prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_netapp_snapshot_policy

val yojson_of_azurerm_netapp_snapshot_policy :
  azurerm_netapp_snapshot_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?daily_schedule:daily_schedule list ->
  ?hourly_schedule:hourly_schedule list ->
  ?monthly_schedule:monthly_schedule list ->
  ?timeouts:timeouts ->
  ?weekly_schedule:weekly_schedule list ->
  account_name:string prop ->
  enabled:bool prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?daily_schedule:daily_schedule list ->
  ?hourly_schedule:hourly_schedule list ->
  ?monthly_schedule:monthly_schedule list ->
  ?timeouts:timeouts ->
  ?weekly_schedule:weekly_schedule list ->
  account_name:string prop ->
  enabled:bool prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
