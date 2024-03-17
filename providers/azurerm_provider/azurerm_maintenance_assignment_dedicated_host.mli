(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maintenance_assignment_dedicated_host__timeouts
type azurerm_maintenance_assignment_dedicated_host

val azurerm_maintenance_assignment_dedicated_host :
  ?timeouts:azurerm_maintenance_assignment_dedicated_host__timeouts ->
  dedicated_host_id:string ->
  location:string ->
  maintenance_configuration_id:string ->
  string ->
  unit
