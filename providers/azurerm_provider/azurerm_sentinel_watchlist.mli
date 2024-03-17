(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_watchlist__timeouts
type azurerm_sentinel_watchlist

type t = private {
  default_duration : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  item_search_key : string prop;
  labels : string list prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

val azurerm_sentinel_watchlist :
  ?default_duration:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop list ->
  ?timeouts:azurerm_sentinel_watchlist__timeouts ->
  display_name:string prop ->
  item_search_key:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t
