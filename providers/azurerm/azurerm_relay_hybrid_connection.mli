(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_relay_hybrid_connection__timeouts
type azurerm_relay_hybrid_connection

type t = private {
  id : string prop;
  name : string prop;
  relay_namespace_name : string prop;
  requires_client_authorization : bool prop;
  resource_group_name : string prop;
  user_metadata : string prop;
}

val azurerm_relay_hybrid_connection :
  ?id:string prop ->
  ?requires_client_authorization:bool prop ->
  ?user_metadata:string prop ->
  ?timeouts:azurerm_relay_hybrid_connection__timeouts ->
  name:string prop ->
  relay_namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
