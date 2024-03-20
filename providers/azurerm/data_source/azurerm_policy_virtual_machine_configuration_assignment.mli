(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_policy_virtual_machine_configuration_assignment

val azurerm_policy_virtual_machine_configuration_assignment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_machine_name:string prop ->
  unit ->
  azurerm_policy_virtual_machine_configuration_assignment

val yojson_of_azurerm_policy_virtual_machine_configuration_assignment :
  azurerm_policy_virtual_machine_configuration_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  assignment_hash : string prop;
  compliance_status : string prop;
  content_hash : string prop;
  content_uri : string prop;
  id : string prop;
  last_compliance_status_checked : string prop;
  latest_report_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  virtual_machine_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_machine_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_machine_name:string prop ->
  string ->
  t Tf_core.resource
