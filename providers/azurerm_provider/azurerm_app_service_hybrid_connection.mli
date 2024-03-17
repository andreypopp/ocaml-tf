(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_hybrid_connection__timeouts
type azurerm_app_service_hybrid_connection

type t = private {
  app_service_name : string prop;
  hostname : string prop;
  id : string prop;
  namespace_name : string prop;
  port : float prop;
  relay_id : string prop;
  relay_name : string prop;
  resource_group_name : string prop;
  send_key_name : string prop;
  send_key_value : string prop;
  service_bus_namespace : string prop;
  service_bus_suffix : string prop;
}

val azurerm_app_service_hybrid_connection :
  ?id:string prop ->
  ?send_key_name:string prop ->
  ?timeouts:azurerm_app_service_hybrid_connection__timeouts ->
  app_service_name:string prop ->
  hostname:string prop ->
  port:float prop ->
  relay_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t
