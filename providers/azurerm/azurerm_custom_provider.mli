(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action

val action :
  endpoint:string prop -> name:string prop -> unit -> action

type resource_type

val resource_type :
  ?routing_type:string prop ->
  endpoint:string prop ->
  name:string prop ->
  unit ->
  resource_type

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type validation

val validation : specification:string prop -> unit -> validation

type azurerm_custom_provider

val azurerm_custom_provider :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  action:action list ->
  resource_type:resource_type list ->
  validation:validation list ->
  unit ->
  azurerm_custom_provider

val yojson_of_azurerm_custom_provider :
  azurerm_custom_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  action:action list ->
  resource_type:resource_type list ->
  validation:validation list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  action:action list ->
  resource_type:resource_type list ->
  validation:validation list ->
  string ->
  t Tf_core.resource
