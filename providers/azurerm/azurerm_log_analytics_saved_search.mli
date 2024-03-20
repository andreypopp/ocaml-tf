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

type azurerm_log_analytics_saved_search

val azurerm_log_analytics_saved_search :
  ?function_alias:string prop ->
  ?function_parameters:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  category:string prop ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  unit ->
  azurerm_log_analytics_saved_search

val yojson_of_azurerm_log_analytics_saved_search :
  azurerm_log_analytics_saved_search -> json

(** RESOURCE REGISTRATION *)

type t = private {
  category : string prop;
  display_name : string prop;
  function_alias : string prop;
  function_parameters : string list prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  query : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?function_alias:string prop ->
  ?function_parameters:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  category:string prop ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  string ->
  t

val make :
  ?function_alias:string prop ->
  ?function_parameters:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  category:string prop ->
  display_name:string prop ->
  log_analytics_workspace_id:string prop ->
  name:string prop ->
  query:string prop ->
  string ->
  t Tf_core.resource
