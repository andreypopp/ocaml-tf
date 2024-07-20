(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_virtual_machine_automanage_configuration_assignment

val azurerm_virtual_machine_automanage_configuration_assignment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  configuration_id:string prop ->
  virtual_machine_id:string prop ->
  unit ->
  azurerm_virtual_machine_automanage_configuration_assignment

val yojson_of_azurerm_virtual_machine_automanage_configuration_assignment :
  azurerm_virtual_machine_automanage_configuration_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  configuration_id : string prop;
  id : string prop;
  virtual_machine_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  configuration_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  configuration_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t Tf_core.resource
