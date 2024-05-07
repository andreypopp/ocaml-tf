(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_client_config

val azurerm_client_config :
  ?id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  azurerm_client_config

val yojson_of_azurerm_client_config : azurerm_client_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  id : string prop;
  object_id : string prop;
  subscription_id : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
