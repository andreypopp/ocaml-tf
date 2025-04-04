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

type azurerm_availability_set

val azurerm_availability_set :
  ?id:string prop ->
  ?managed:bool prop ->
  ?platform_fault_domain_count:float prop ->
  ?platform_update_domain_count:float prop ->
  ?proximity_placement_group_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_availability_set

val yojson_of_azurerm_availability_set :
  azurerm_availability_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  managed : bool prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  platform_update_domain_count : float prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?managed:bool prop ->
  ?platform_fault_domain_count:float prop ->
  ?platform_update_domain_count:float prop ->
  ?proximity_placement_group_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?managed:bool prop ->
  ?platform_fault_domain_count:float prop ->
  ?platform_update_domain_count:float prop ->
  ?proximity_placement_group_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
