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

type azurerm_virtual_desktop_scaling_plan_host_pool_association

val azurerm_virtual_desktop_scaling_plan_host_pool_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  host_pool_id:string prop ->
  scaling_plan_id:string prop ->
  unit ->
  azurerm_virtual_desktop_scaling_plan_host_pool_association

val yojson_of_azurerm_virtual_desktop_scaling_plan_host_pool_association :
  azurerm_virtual_desktop_scaling_plan_host_pool_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  host_pool_id : string prop;
  id : string prop;
  scaling_plan_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  host_pool_id:string prop ->
  scaling_plan_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  enabled:bool prop ->
  host_pool_id:string prop ->
  scaling_plan_id:string prop ->
  string ->
  t Tf_core.resource
