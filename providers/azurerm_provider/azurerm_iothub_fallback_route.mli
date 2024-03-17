(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_fallback_route__timeouts
type azurerm_iothub_fallback_route

type t = private {
  condition : string prop;
  enabled : bool prop;
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  resource_group_name : string prop;
  source : string prop;
}

val azurerm_iothub_fallback_route :
  ?condition:string prop ->
  ?id:string prop ->
  ?source:string prop ->
  ?timeouts:azurerm_iothub_fallback_route__timeouts ->
  enabled:bool prop ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
