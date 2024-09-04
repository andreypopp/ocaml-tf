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

type azurerm_container_registry_webhook

val azurerm_container_registry_webhook :
  ?custom_headers:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?scope:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  actions:string prop list ->
  location:string prop ->
  name:string prop ->
  registry_name:string prop ->
  resource_group_name:string prop ->
  service_uri:string prop ->
  unit ->
  azurerm_container_registry_webhook

val yojson_of_azurerm_container_registry_webhook :
  azurerm_container_registry_webhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  actions : string list prop;
  custom_headers : string Tf_core.assoc prop;
  id : string prop;
  location : string prop;
  name : string prop;
  registry_name : string prop;
  resource_group_name : string prop;
  scope : string prop;
  service_uri : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_headers:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?scope:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  actions:string prop list ->
  location:string prop ->
  name:string prop ->
  registry_name:string prop ->
  resource_group_name:string prop ->
  service_uri:string prop ->
  string ->
  t

val make :
  ?custom_headers:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?scope:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  actions:string prop list ->
  location:string prop ->
  name:string prop ->
  registry_name:string prop ->
  resource_group_name:string prop ->
  service_uri:string prop ->
  string ->
  t Tf_core.resource
