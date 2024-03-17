(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_schedule__monthly_occurrence
type azurerm_automation_schedule__timeouts
type azurerm_automation_schedule

type t = private {
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

val azurerm_automation_schedule :
  ?description:string prop ->
  ?expiry_time:string prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?month_days:float prop list ->
  ?start_time:string prop ->
  ?timezone:string prop ->
  ?week_days:string prop list ->
  ?timeouts:azurerm_automation_schedule__timeouts ->
  automation_account_name:string prop ->
  frequency:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  monthly_occurrence:
    azurerm_automation_schedule__monthly_occurrence list ->
  string ->
  t
