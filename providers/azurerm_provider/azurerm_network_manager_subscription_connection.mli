(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_subscription_connection__timeouts
type azurerm_network_manager_subscription_connection

val azurerm_network_manager_subscription_connection :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_network_manager_subscription_connection__timeouts ->
  name:string ->
  network_manager_id:string ->
  subscription_id:string ->
  string ->
  unit
