(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_hybrid_connection__timeouts
type azurerm_relay_hybrid_connection

val azurerm_relay_hybrid_connection :
  ?id:string ->
  ?requires_client_authorization:bool ->
  ?user_metadata:string ->
  ?timeouts:azurerm_relay_hybrid_connection__timeouts ->
  name:string ->
  relay_namespace_name:string ->
  resource_group_name:string ->
  string ->
  unit
