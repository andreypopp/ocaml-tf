(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_hybrid_connection__timeouts
type azurerm_app_service_hybrid_connection

val azurerm_app_service_hybrid_connection :
  ?id:string ->
  ?send_key_name:string ->
  ?timeouts:azurerm_app_service_hybrid_connection__timeouts ->
  app_service_name:string ->
  hostname:string ->
  port:float ->
  relay_id:string ->
  resource_group_name:string ->
  string ->
  unit
