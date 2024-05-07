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
  ?parameters:(string * string prop) list ->
  ?scopes:string prop ->
  ?tags:(string * string prop) list ->
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
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  scopes : string prop;
  service_provider_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?scopes:string prop ->
  ?tags:(string * string prop) list ->
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
  ?parameters:(string * string prop) list ->
  ?scopes:string prop ->
  ?tags:(string * string prop) list ->
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
