(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_portal_dashboard

val azurerm_portal_dashboard :
  ?dashboard_properties:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  unit ->
  azurerm_portal_dashboard

val yojson_of_azurerm_portal_dashboard :
  azurerm_portal_dashboard -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dashboard_properties : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?dashboard_properties:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?dashboard_properties:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
