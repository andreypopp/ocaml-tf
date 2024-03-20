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

type azurerm_arc_resource_bridge_appliance

val azurerm_arc_resource_bridge_appliance :
  ?id:string prop ->
  ?public_key_base64:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  distro:string prop ->
  infrastructure_provider:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_arc_resource_bridge_appliance

val yojson_of_azurerm_arc_resource_bridge_appliance :
  azurerm_arc_resource_bridge_appliance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  distro : string prop;
  id : string prop;
  infrastructure_provider : string prop;
  location : string prop;
  name : string prop;
  public_key_base64 : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?public_key_base64:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  distro:string prop ->
  infrastructure_provider:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?public_key_base64:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  distro:string prop ->
  infrastructure_provider:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource
