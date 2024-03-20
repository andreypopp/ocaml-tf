(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_eventgrid_domain_topic

val azurerm_eventgrid_domain_topic :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventgrid_domain_topic

val yojson_of_azurerm_eventgrid_domain_topic :
  azurerm_eventgrid_domain_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
