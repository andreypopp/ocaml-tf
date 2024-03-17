(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sentinel_watchlist_item__timeouts
type azurerm_sentinel_watchlist_item

val azurerm_sentinel_watchlist_item :
  ?id:string ->
  ?name:string ->
  ?timeouts:azurerm_sentinel_watchlist_item__timeouts ->
  properties:(string * string) list ->
  watchlist_id:string ->
  string ->
  unit
