(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_gateway_api__timeouts
type azurerm_api_management_gateway_api

type t = private {
  api_id : string prop;
  gateway_id : string prop;
  id : string prop;
}

val azurerm_api_management_gateway_api :
  ?id:string prop ->
  ?timeouts:azurerm_api_management_gateway_api__timeouts ->
  api_id:string prop ->
  gateway_id:string prop ->
  string ->
  t
