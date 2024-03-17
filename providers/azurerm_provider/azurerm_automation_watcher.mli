(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_watcher__timeouts
type azurerm_automation_watcher

val azurerm_automation_watcher :
  ?description:string ->
  ?etag:string ->
  ?script_parameters:(string * string) list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_automation_watcher__timeouts ->
  automation_account_id:string ->
  execution_frequency_in_seconds:float ->
  location:string ->
  name:string ->
  script_name:string ->
  script_run_on:string ->
  string ->
  unit
