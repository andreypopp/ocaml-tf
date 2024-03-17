(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maintenance_assignment_virtual_machine_scale_set__timeouts

type azurerm_maintenance_assignment_virtual_machine_scale_set

val azurerm_maintenance_assignment_virtual_machine_scale_set :
  ?id:string ->
  ?timeouts:
    azurerm_maintenance_assignment_virtual_machine_scale_set__timeouts ->
  location:string ->
  maintenance_configuration_id:string ->
  virtual_machine_scale_set_id:string ->
  string ->
  unit
