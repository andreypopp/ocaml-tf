(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_function__file
type azurerm_function_app_function__timeouts
type azurerm_function_app_function

val azurerm_function_app_function :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?language:string prop ->
  ?test_data:string prop ->
  ?timeouts:azurerm_function_app_function__timeouts ->
  config_json:string prop ->
  function_app_id:string prop ->
  name:string prop ->
  file:azurerm_function_app_function__file list ->
  string ->
  unit
