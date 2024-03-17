(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maintenance_assignment_virtual_machine__timeouts
type azurerm_maintenance_assignment_virtual_machine

val azurerm_maintenance_assignment_virtual_machine :
  ?timeouts:azurerm_maintenance_assignment_virtual_machine__timeouts ->
  location:string ->
  maintenance_configuration_id:string ->
  virtual_machine_id:string ->
  string ->
  unit
