(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_hybrid_connection__timeouts
type azurerm_function_app_hybrid_connection

val azurerm_function_app_hybrid_connection :
  ?id:string prop ->
  ?send_key_name:string prop ->
  ?timeouts:azurerm_function_app_hybrid_connection__timeouts ->
  function_app_id:string prop ->
  hostname:string prop ->
  port:float prop ->
  relay_id:string prop ->
  string ->
  unit
