(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type monthly_occurrence

val monthly_occurrence :
  day:string prop ->
  occurrence:float prop ->
  unit ->
  monthly_occurrence

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_schedule

val azurerm_automation_schedule :
  ?description:string prop ->
  ?expiry_time:string prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?month_days:float prop list ->
  ?start_time:string prop ->
  ?timezone:string prop ->
  ?week_days:string prop list ->
  ?monthly_occurrence:monthly_occurrence list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  frequency:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_schedule

val yojson_of_azurerm_automation_schedule :
  azurerm_automation_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_name : string prop;
  description : string prop;
  expiry_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  month_days : float list prop;
  name : string prop;
  resource_group_name : string prop;
  start_time : string prop;
  timezone : string prop;
  week_days : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?expiry_time:string prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?month_days:float prop list ->
  ?start_time:string prop ->
  ?timezone:string prop ->
  ?week_days:string prop list ->
  ?monthly_occurrence:monthly_occurrence list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  frequency:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?expiry_time:string prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?month_days:float prop list ->
  ?start_time:string prop ->
  ?timezone:string prop ->
  ?week_days:string prop list ->
  ?monthly_occurrence:monthly_occurrence list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  frequency:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
