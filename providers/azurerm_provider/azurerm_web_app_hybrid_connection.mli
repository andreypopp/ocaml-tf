(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_app_hybrid_connection__timeouts
type azurerm_web_app_hybrid_connection

val azurerm_web_app_hybrid_connection :
  ?send_key_name:string ->
  ?timeouts:azurerm_web_app_hybrid_connection__timeouts ->
  hostname:string ->
  port:float ->
  relay_id:string ->
  web_app_id:string ->
  string ->
  unit
