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

type azurerm_web_app_hybrid_connection

val azurerm_web_app_hybrid_connection :
  ?id:string prop ->
  ?send_key_name:string prop ->
  ?timeouts:timeouts ->
  hostname:string prop ->
  port:float prop ->
  relay_id:string prop ->
  web_app_id:string prop ->
  unit ->
  azurerm_web_app_hybrid_connection

val yojson_of_azurerm_web_app_hybrid_connection :
  azurerm_web_app_hybrid_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  hostname : string prop;
  id : string prop;
  namespace_name : string prop;
  port : float prop;
  relay_id : string prop;
  relay_name : string prop;
  send_key_name : string prop;
  send_key_value : string prop;
  service_bus_namespace : string prop;
  service_bus_suffix : string prop;
  web_app_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?send_key_name:string prop ->
  ?timeouts:timeouts ->
  hostname:string prop ->
  port:float prop ->
  relay_id:string prop ->
  web_app_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?send_key_name:string prop ->
  ?timeouts:timeouts ->
  hostname:string prop ->
  port:float prop ->
  relay_id:string prop ->
  web_app_id:string prop ->
  string ->
  t Tf_core.resource
