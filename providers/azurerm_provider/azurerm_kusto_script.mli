(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_script__timeouts
type azurerm_kusto_script

val azurerm_kusto_script :
  ?continue_on_errors_enabled:bool prop ->
  ?force_an_update_when_value_changed:string prop ->
  ?id:string prop ->
  ?sas_token:string prop ->
  ?script_content:string prop ->
  ?url:string prop ->
  ?timeouts:azurerm_kusto_script__timeouts ->
  database_id:string prop ->
  name:string prop ->
  string ->
  unit
