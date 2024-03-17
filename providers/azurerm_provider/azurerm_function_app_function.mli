(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_function__file
type azurerm_function_app_function__timeouts
type azurerm_function_app_function

val azurerm_function_app_function :
  ?enabled:bool ->
  ?id:string ->
  ?language:string ->
  ?test_data:string ->
  ?timeouts:azurerm_function_app_function__timeouts ->
  config_json:string ->
  function_app_id:string ->
  name:string ->
  file:azurerm_function_app_function__file list ->
  string ->
  unit
