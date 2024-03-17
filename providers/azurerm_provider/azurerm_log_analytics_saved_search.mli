(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_saved_search__timeouts
type azurerm_log_analytics_saved_search

val azurerm_log_analytics_saved_search :
  ?function_alias:string ->
  ?function_parameters:string list ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_log_analytics_saved_search__timeouts ->
  category:string ->
  display_name:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  query:string ->
  string ->
  unit
