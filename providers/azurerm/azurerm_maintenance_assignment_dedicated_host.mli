(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maintenance_assignment_dedicated_host__timeouts
type azurerm_maintenance_assignment_dedicated_host

type t = private {
  dedicated_host_id : string prop;
  id : string prop;
  location : string prop;
  maintenance_configuration_id : string prop;
}

val azurerm_maintenance_assignment_dedicated_host :
  ?id:string prop ->
  ?timeouts:azurerm_maintenance_assignment_dedicated_host__timeouts ->
  dedicated_host_id:string prop ->
  location:string prop ->
  maintenance_configuration_id:string prop ->
  string ->
  t
