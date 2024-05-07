(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_sentinel_watchlist

val azurerm_sentinel_watchlist :
  ?default_duration:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  item_search_key:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_sentinel_watchlist

val yojson_of_azurerm_sentinel_watchlist :
  azurerm_sentinel_watchlist -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_duration : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  item_search_key : string prop;
  labels : string list prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_duration:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  item_search_key:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?default_duration:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  item_search_key:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
