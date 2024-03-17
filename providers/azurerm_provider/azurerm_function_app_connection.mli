(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_connection__authentication
type azurerm_function_app_connection__secret_store
type azurerm_function_app_connection__timeouts
type azurerm_function_app_connection

val azurerm_function_app_connection :
  ?client_type:string prop ->
  ?id:string prop ->
  ?vnet_solution:string prop ->
  ?timeouts:azurerm_function_app_connection__timeouts ->
  function_app_id:string prop ->
  name:string prop ->
  target_resource_id:string prop ->
  authentication:azurerm_function_app_connection__authentication list ->
  secret_store:azurerm_function_app_connection__secret_store list ->
  string ->
  unit
