(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_saved_search__timeouts
type azurerm_log_analytics_saved_search

val azurerm_log_analytics_saved_search :
  ?function_alias:string prop ->
  ?function_parameters:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_log_analytics_saved_search__timeouts ->
  category:string prop ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  string ->
  unit
