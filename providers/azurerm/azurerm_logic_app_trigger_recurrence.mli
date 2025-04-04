(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type schedule

val schedule :
  ?at_these_hours:float prop list ->
  ?at_these_minutes:float prop list ->
  ?on_these_days:string prop list ->
  unit ->
  schedule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_trigger_recurrence

val azurerm_logic_app_trigger_recurrence :
  ?id:string prop ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  frequency:string prop ->
  interval:float prop ->
  logic_app_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_logic_app_trigger_recurrence

val yojson_of_azurerm_logic_app_trigger_recurrence :
  azurerm_logic_app_trigger_recurrence -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  logic_app_id : string prop;
  name : string prop;
  start_time : string prop;
  time_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  frequency:string prop ->
  interval:float prop ->
  logic_app_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?start_time:string prop ->
  ?time_zone:string prop ->
  ?schedule:schedule list ->
  ?timeouts:timeouts ->
  frequency:string prop ->
  interval:float prop ->
  logic_app_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
