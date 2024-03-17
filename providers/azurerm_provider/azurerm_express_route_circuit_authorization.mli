(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_circuit_authorization__timeouts
type azurerm_express_route_circuit_authorization

type t = private {
  authorization_key : string prop;
  authorization_use_status : string prop;
  express_route_circuit_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_express_route_circuit_authorization :
  ?id:string prop ->
  ?timeouts:azurerm_express_route_circuit_authorization__timeouts ->
  express_route_circuit_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
