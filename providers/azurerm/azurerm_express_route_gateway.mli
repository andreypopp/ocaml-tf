(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_gateway__timeouts
type azurerm_express_route_gateway

type t = private {
  allow_non_virtual_wan_traffic : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scale_units : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
}

val azurerm_express_route_gateway :
  ?allow_non_virtual_wan_traffic:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_express_route_gateway__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_units:float prop ->
  virtual_hub_id:string prop ->
  string ->
  t
