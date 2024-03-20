(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__parameter

val configuration__parameter :
  name:string prop ->
  value:string prop ->
  unit ->
  configuration__parameter

type configuration

val configuration :
  ?assignment_type:string prop ->
  ?content_hash:string prop ->
  ?content_uri:string prop ->
  ?version:string prop ->
  parameter:configuration__parameter list ->
  unit ->
  configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_policy_virtual_machine_configuration_assignment

val azurerm_policy_virtual_machine_configuration_assignment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  virtual_machine_id:string prop ->
  configuration:configuration list ->
  unit ->
  azurerm_policy_virtual_machine_configuration_assignment

val yojson_of_azurerm_policy_virtual_machine_configuration_assignment :
  azurerm_policy_virtual_machine_configuration_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  virtual_machine_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  virtual_machine_id:string prop ->
  configuration:configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  virtual_machine_id:string prop ->
  configuration:configuration list ->
  string ->
  t Tf_core.resource
