(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_hybrid_connection__timeouts
type azurerm_function_app_hybrid_connection

val azurerm_function_app_hybrid_connection :
  ?id:string ->
  ?send_key_name:string ->
  ?timeouts:azurerm_function_app_hybrid_connection__timeouts ->
  function_app_id:string ->
  hostname:string ->
  port:float ->
  relay_id:string ->
  string ->
  unit
