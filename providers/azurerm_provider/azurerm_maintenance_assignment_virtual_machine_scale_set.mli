(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maintenance_assignment_virtual_machine_scale_set__timeouts

type azurerm_maintenance_assignment_virtual_machine_scale_set

val azurerm_maintenance_assignment_virtual_machine_scale_set :
  ?id:string prop ->
  ?timeouts:
    azurerm_maintenance_assignment_virtual_machine_scale_set__timeouts ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  virtual_machine_scale_set_id:string prop ->
  string ->
  unit
