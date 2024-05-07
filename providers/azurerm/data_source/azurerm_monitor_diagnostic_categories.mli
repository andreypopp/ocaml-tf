(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_monitor_diagnostic_categories

val azurerm_monitor_diagnostic_categories :
  ?id:string prop ->
  ?timeouts:timeouts ->
  resource_id:string prop ->
  unit ->
  azurerm_monitor_diagnostic_categories

val yojson_of_azurerm_monitor_diagnostic_categories :
  azurerm_monitor_diagnostic_categories -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  log_category_groups : string list prop;
  log_category_types : string list prop;
  logs : string list prop;
  metrics : string list prop;
  resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  resource_id:string prop ->
  string ->
  t Tf_core.resource
