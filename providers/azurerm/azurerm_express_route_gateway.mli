(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_express_route_gateway

val azurerm_express_route_gateway :
  ?allow_non_virtual_wan_traffic:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_units:float prop ->
  virtual_hub_id:string prop ->
  unit ->
  azurerm_express_route_gateway

val yojson_of_azurerm_express_route_gateway :
  azurerm_express_route_gateway -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?allow_non_virtual_wan_traffic:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_units:float prop ->
  virtual_hub_id:string prop ->
  string ->
  t

val make :
  ?allow_non_virtual_wan_traffic:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_units:float prop ->
  virtual_hub_id:string prop ->
  string ->
  t Tf_core.resource
