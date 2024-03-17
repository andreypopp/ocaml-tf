(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_route__timeouts
type azurerm_iothub_route

type t = private {
  condition : string prop;
  enabled : bool prop;
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  source : string prop;
}

val azurerm_iothub_route :
  ?condition:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_iothub_route__timeouts ->
  enabled:bool prop ->
  endpoint_names:string prop list ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  source:string prop ->
  string ->
  t
