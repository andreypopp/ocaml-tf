(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_trigger_recurrence__schedule
type azurerm_logic_app_trigger_recurrence__timeouts
type azurerm_logic_app_trigger_recurrence

val azurerm_logic_app_trigger_recurrence :
  ?start_time:string ->
  ?timeouts:azurerm_logic_app_trigger_recurrence__timeouts ->
  frequency:string ->
  interval:float ->
  logic_app_id:string ->
  name:string ->
  schedule:azurerm_logic_app_trigger_recurrence__schedule list ->
  string ->
  unit
