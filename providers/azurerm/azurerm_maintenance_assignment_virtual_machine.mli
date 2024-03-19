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

type azurerm_maintenance_assignment_virtual_machine

val azurerm_maintenance_assignment_virtual_machine :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  virtual_machine_id:string prop ->
  unit ->
  azurerm_maintenance_assignment_virtual_machine

val yojson_of_azurerm_maintenance_assignment_virtual_machine :
  azurerm_maintenance_assignment_virtual_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
  virtual_machine_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t
