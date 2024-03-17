(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_connection__authentication
type azurerm_spring_cloud_connection__secret_store
type azurerm_spring_cloud_connection__timeouts
type azurerm_spring_cloud_connection

val azurerm_spring_cloud_connection :
  ?client_type:string prop ->
  ?id:string prop ->
  ?vnet_solution:string prop ->
  ?timeouts:azurerm_spring_cloud_connection__timeouts ->
  name:string prop ->
  spring_cloud_id:string prop ->
  target_resource_id:string prop ->
  authentication:azurerm_spring_cloud_connection__authentication list ->
  secret_store:azurerm_spring_cloud_connection__secret_store list ->
  string ->
  unit
