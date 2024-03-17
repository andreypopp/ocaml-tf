(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_availability_set__timeouts
type azurerm_availability_set

val azurerm_availability_set :
  ?id:string ->
  ?managed:bool ->
  ?platform_fault_domain_count:float ->
  ?platform_update_domain_count:float ->
  ?proximity_placement_group_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_availability_set__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
