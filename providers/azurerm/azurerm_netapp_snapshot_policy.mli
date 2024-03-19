(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  enabled:bool prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  daily_schedule:daily_schedule list ->
  hourly_schedule:hourly_schedule list ->
  monthly_schedule:monthly_schedule list ->
  weekly_schedule:weekly_schedule list ->
  unit ->
  azurerm_netapp_snapshot_policy

val yojson_of_azurerm_netapp_snapshot_policy :
  azurerm_netapp_snapshot_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  enabled:bool prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  daily_schedule:daily_schedule list ->
  hourly_schedule:hourly_schedule list ->
  monthly_schedule:monthly_schedule list ->
  weekly_schedule:weekly_schedule list ->
  string ->
  t
