(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_subscription_connection__timeouts
type azurerm_network_manager_subscription_connection

type t = private {
  connection_state : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_manager_id : string prop;
  subscription_id : string prop;
}

val azurerm_network_manager_subscription_connection :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_network_manager_subscription_connection__timeouts ->
  name:string prop ->
  network_manager_id:string prop ->
  subscription_id:string prop ->
  string ->
  t
