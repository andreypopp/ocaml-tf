(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_watchlist__timeouts
type azurerm_sentinel_watchlist

val azurerm_sentinel_watchlist :
  ?default_duration:string ->
  ?description:string ->
  ?labels:string list ->
  ?timeouts:azurerm_sentinel_watchlist__timeouts ->
  display_name:string ->
  item_search_key:string ->
  log_analytics_workspace_id:string ->
  name:string ->
  string ->
  unit
