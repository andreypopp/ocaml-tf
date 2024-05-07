(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cost_management_scheduled_action

val azurerm_cost_management_scheduled_action :
  ?day_of_month:float prop ->
  ?days_of_week:string prop list ->
  ?hour_of_day:float prop ->
  ?id:string prop ->
  ?message:string prop ->
  ?weeks_of_month:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  email_address_sender:string prop ->
  email_addresses:string prop list ->
  email_subject:string prop ->
  end_date:string prop ->
  frequency:string prop ->
  name:string prop ->
  start_date:string prop ->
  view_id:string prop ->
  unit ->
  azurerm_cost_management_scheduled_action

val yojson_of_azurerm_cost_management_scheduled_action :
  azurerm_cost_management_scheduled_action -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  day_of_month : float prop;
  days_of_week : string list prop;
  display_name : string prop;
  email_address_sender : string prop;
  email_addresses : string list prop;
  email_subject : string prop;
  end_date : string prop;
  frequency : string prop;
  hour_of_day : float prop;
  id : string prop;
  message : string prop;
  name : string prop;
  start_date : string prop;
  view_id : string prop;
  weeks_of_month : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?day_of_month:float prop ->
  ?days_of_week:string prop list ->
  ?hour_of_day:float prop ->
  ?id:string prop ->
  ?message:string prop ->
  ?weeks_of_month:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  email_address_sender:string prop ->
  email_addresses:string prop list ->
  email_subject:string prop ->
  end_date:string prop ->
  frequency:string prop ->
  name:string prop ->
  start_date:string prop ->
  view_id:string prop ->
  string ->
  t

val make :
  ?day_of_month:float prop ->
  ?days_of_week:string prop list ->
  ?hour_of_day:float prop ->
  ?id:string prop ->
  ?message:string prop ->
  ?weeks_of_month:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  email_address_sender:string prop ->
  email_addresses:string prop list ->
  email_subject:string prop ->
  end_date:string prop ->
  frequency:string prop ->
  name:string prop ->
  start_date:string prop ->
  view_id:string prop ->
  string ->
  t Tf_core.resource
