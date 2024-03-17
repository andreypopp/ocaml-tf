(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_trigger_recurrence__schedule
type azurerm_logic_app_trigger_recurrence__timeouts
type azurerm_logic_app_trigger_recurrence

val azurerm_logic_app_trigger_recurrence :
  ?id:string prop ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  ?timeouts:azurerm_logic_app_trigger_recurrence__timeouts ->
  frequency:string prop ->
  interval:float prop ->
  logic_app_id:string prop ->
  name:string prop ->
  schedule:azurerm_logic_app_trigger_recurrence__schedule list ->
  string ->
  unit
