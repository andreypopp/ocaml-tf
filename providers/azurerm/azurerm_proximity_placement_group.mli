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

type azurerm_proximity_placement_group

val azurerm_proximity_placement_group :
  ?allowed_vm_sizes:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_proximity_placement_group

val yojson_of_azurerm_proximity_placement_group :
  azurerm_proximity_placement_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_vm_sizes : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_vm_sizes:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?allowed_vm_sizes:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
