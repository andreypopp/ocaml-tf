(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity : type_:string prop -> unit -> identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iotcentral_application

val azurerm_iotcentral_application :
  ?display_name:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?template:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sub_domain:string prop ->
  identity:identity list ->
  unit ->
  azurerm_iotcentral_application

val yojson_of_azurerm_iotcentral_application :
  azurerm_iotcentral_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  sub_domain : string prop;
  tags : (string * string) list prop;
  template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?template:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sub_domain:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?template:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sub_domain:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource
