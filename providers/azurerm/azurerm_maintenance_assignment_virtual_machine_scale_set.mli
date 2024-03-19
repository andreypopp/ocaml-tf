(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_maintenance_assignment_virtual_machine_scale_set

val azurerm_maintenance_assignment_virtual_machine_scale_set :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  virtual_machine_scale_set_id:string prop ->
  unit ->
  azurerm_maintenance_assignment_virtual_machine_scale_set

val yojson_of_azurerm_maintenance_assignment_virtual_machine_scale_set :
  azurerm_maintenance_assignment_virtual_machine_scale_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
  virtual_machine_scale_set_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  virtual_machine_scale_set_id:string prop ->
  string ->
  t
