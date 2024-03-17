(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_group__timeouts
type azurerm_resource_group

val azurerm_resource_group :
  ?id:string ->
  ?managed_by:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_resource_group__timeouts ->
  location:string ->
  name:string ->
  string ->
  unit
