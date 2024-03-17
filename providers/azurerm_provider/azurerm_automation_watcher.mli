(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_watcher__timeouts
type azurerm_automation_watcher

val azurerm_automation_watcher :
  ?description:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?script_parameters:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_automation_watcher__timeouts ->
  automation_account_id:string prop ->
  execution_frequency_in_seconds:float prop ->
  location:string prop ->
  name:string prop ->
  script_name:string prop ->
  script_run_on:string prop ->
  string ->
  unit
