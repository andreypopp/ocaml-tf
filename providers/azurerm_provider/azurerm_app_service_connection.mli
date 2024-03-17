(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_connection__authentication
type azurerm_app_service_connection__secret_store
type azurerm_app_service_connection__timeouts
type azurerm_app_service_connection

val azurerm_app_service_connection :
  ?client_type:string ->
  ?id:string ->
  ?vnet_solution:string ->
  ?timeouts:azurerm_app_service_connection__timeouts ->
  app_service_id:string ->
  name:string ->
  target_resource_id:string ->
  authentication:azurerm_app_service_connection__authentication list ->
  secret_store:azurerm_app_service_connection__secret_store list ->
  string ->
  unit
