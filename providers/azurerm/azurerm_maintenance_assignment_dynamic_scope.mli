(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter__tags

val filter__tags :
  tag:string prop -> values:string prop list -> unit -> filter__tags

type filter

val filter :
  ?locations:string prop list ->
  ?os_types:string prop list ->
  ?resource_groups:string prop list ->
  ?resource_types:string prop list ->
  ?tag_filter:string prop ->
  ?tags:filter__tags list ->
  unit ->
  filter

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_maintenance_assignment_dynamic_scope

val azurerm_maintenance_assignment_dynamic_scope :
  ?id:string prop ->
  ?timeouts:timeouts ->
  maintenance_configuration_id:string prop ->
  name:string prop ->
  filter:filter list ->
  unit ->
  azurerm_maintenance_assignment_dynamic_scope

val yojson_of_azurerm_maintenance_assignment_dynamic_scope :
  azurerm_maintenance_assignment_dynamic_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  maintenance_configuration_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  maintenance_configuration_id:string prop ->
  name:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  maintenance_configuration_id:string prop ->
  name:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
