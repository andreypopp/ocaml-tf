(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maintenance_assignment_virtual_machine__timeouts
type azurerm_maintenance_assignment_virtual_machine

val azurerm_maintenance_assignment_virtual_machine :
  ?id:string prop ->
  ?timeouts:azurerm_maintenance_assignment_virtual_machine__timeouts ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  unit
