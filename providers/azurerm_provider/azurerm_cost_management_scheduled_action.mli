(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cost_management_scheduled_action__timeouts
type azurerm_cost_management_scheduled_action

val azurerm_cost_management_scheduled_action :
  ?day_of_month:float ->
  ?days_of_week:string list ->
  ?hour_of_day:float ->
  ?message:string ->
  ?weeks_of_month:string list ->
  ?timeouts:azurerm_cost_management_scheduled_action__timeouts ->
  display_name:string ->
  email_address_sender:string ->
  email_addresses:string list ->
  email_subject:string ->
  end_date:string ->
  frequency:string ->
  name:string ->
  start_date:string ->
  view_id:string ->
  string ->
  unit
