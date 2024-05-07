(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_watchlist_item

val azurerm_sentinel_watchlist_item :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  properties:(string * string prop) list ->
  watchlist_id:string prop ->
  unit ->
  azurerm_sentinel_watchlist_item

val yojson_of_azurerm_sentinel_watchlist_item :
  azurerm_sentinel_watchlist_item -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  properties : (string * string) list prop;
  watchlist_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  properties:(string * string prop) list ->
  watchlist_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  properties:(string * string prop) list ->
  watchlist_id:string prop ->
  string ->
  t Tf_core.resource
