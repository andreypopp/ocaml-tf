(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_web_app_hybrid_connection__timeouts
type azurerm_web_app_hybrid_connection

val azurerm_web_app_hybrid_connection :
  ?id:string prop ->
  ?send_key_name:string prop ->
  ?timeouts:azurerm_web_app_hybrid_connection__timeouts ->
  hostname:string prop ->
  port:float prop ->
  relay_id:string prop ->
  web_app_id:string prop ->
  string ->
  unit
