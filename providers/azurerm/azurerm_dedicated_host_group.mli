(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dedicated_host_group

val azurerm_dedicated_host_group :
  ?automatic_placement_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain_count:float prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_dedicated_host_group

val yojson_of_azurerm_dedicated_host_group :
  azurerm_dedicated_host_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automatic_placement_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?automatic_placement_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain_count:float prop ->
  resource_group_name:string prop ->
  string ->
  t
