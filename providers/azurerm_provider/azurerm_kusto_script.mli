(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_script__timeouts
type azurerm_kusto_script

val azurerm_kusto_script :
  ?continue_on_errors_enabled:bool ->
  ?force_an_update_when_value_changed:string ->
  ?id:string ->
  ?sas_token:string ->
  ?script_content:string ->
  ?url:string ->
  ?timeouts:azurerm_kusto_script__timeouts ->
  database_id:string ->
  name:string ->
  string ->
  unit
