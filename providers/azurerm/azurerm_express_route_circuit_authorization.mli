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

type azurerm_express_route_circuit_authorization

val azurerm_express_route_circuit_authorization :
  ?id:string prop ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_express_route_circuit_authorization

val yojson_of_azurerm_express_route_circuit_authorization :
  azurerm_express_route_circuit_authorization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorization_key : string prop;
  authorization_use_status : string prop;
  express_route_circuit_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
