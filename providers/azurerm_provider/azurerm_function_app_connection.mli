(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_connection__authentication
type azurerm_function_app_connection__secret_store
type azurerm_function_app_connection__timeouts
type azurerm_function_app_connection

val azurerm_function_app_connection :
  ?client_type:string ->
  ?vnet_solution:string ->
  ?timeouts:azurerm_function_app_connection__timeouts ->
  function_app_id:string ->
  name:string ->
  target_resource_id:string ->
  authentication:azurerm_function_app_connection__authentication list ->
  secret_store:azurerm_function_app_connection__secret_store list ->
  string ->
  unit
