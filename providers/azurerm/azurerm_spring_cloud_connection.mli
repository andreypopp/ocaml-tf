(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication

val authentication :
  ?certificate:string prop ->
  ?client_id:string prop ->
  ?name:string prop ->
  ?principal_id:string prop ->
  ?secret:string prop ->
  ?subscription_id:string prop ->
  type_:string prop ->
  unit ->
  authentication

type secret_store

val secret_store : key_vault_id:string prop -> unit -> secret_store

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_connection

val azurerm_spring_cloud_connection :
  ?client_type:string prop ->
  ?id:string prop ->
  ?vnet_solution:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_id:string prop ->
  target_resource_id:string prop ->
  authentication:authentication list ->
  secret_store:secret_store list ->
  unit ->
  azurerm_spring_cloud_connection

val yojson_of_azurerm_spring_cloud_connection :
  azurerm_spring_cloud_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  client_type : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_id : string prop;
  target_resource_id : string prop;
  vnet_solution : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_type:string prop ->
  ?id:string prop ->
  ?vnet_solution:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_id:string prop ->
  target_resource_id:string prop ->
  authentication:authentication list ->
  secret_store:secret_store list ->
  string ->
  t

val make :
  ?client_type:string prop ->
  ?id:string prop ->
  ?vnet_solution:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_id:string prop ->
  target_resource_id:string prop ->
  authentication:authentication list ->
  secret_store:secret_store list ->
  string ->
  t Tf_core.resource
