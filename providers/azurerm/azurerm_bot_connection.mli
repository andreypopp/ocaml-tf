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

type azurerm_bot_connection

val azurerm_bot_connection :
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?scopes:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_provider_name:string prop ->
  unit ->
  azurerm_bot_connection

val yojson_of_azurerm_bot_connection : azurerm_bot_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  resource_group_name : string prop;
  scopes : string prop;
  service_provider_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?scopes:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_provider_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?scopes:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  bot_name:string prop ->
  client_id:string prop ->
  client_secret:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_provider_name:string prop ->
  string ->
  t Tf_core.resource
