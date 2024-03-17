(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cost_management_scheduled_action__timeouts
type azurerm_cost_management_scheduled_action

val azurerm_cost_management_scheduled_action :
  ?day_of_month:float prop ->
  ?days_of_week:string prop list ->
  ?hour_of_day:float prop ->
  ?id:string prop ->
  ?message:string prop ->
  ?weeks_of_month:string prop list ->
  ?timeouts:azurerm_cost_management_scheduled_action__timeouts ->
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
  unit
