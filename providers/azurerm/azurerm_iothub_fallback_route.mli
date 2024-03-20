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

type azurerm_iothub_fallback_route

val azurerm_iothub_fallback_route :
  ?condition:string prop ->
  ?id:string prop ->
  ?source:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_fallback_route

val yojson_of_azurerm_iothub_fallback_route :
  azurerm_iothub_fallback_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  condition : string prop;
  enabled : bool prop;
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  resource_group_name : string prop;
  source : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?condition:string prop ->
  ?id:string prop ->
  ?source:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?condition:string prop ->
  ?id:string prop ->
  ?source:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
