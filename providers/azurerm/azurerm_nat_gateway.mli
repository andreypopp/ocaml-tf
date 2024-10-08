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

type azurerm_nat_gateway

val azurerm_nat_gateway :
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?sku_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_nat_gateway

val yojson_of_azurerm_nat_gateway : azurerm_nat_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?sku_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?sku_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
