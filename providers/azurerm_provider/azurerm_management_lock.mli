(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_lock__timeouts
type azurerm_management_lock

val azurerm_management_lock :
  ?id:string ->
  ?notes:string ->
  ?timeouts:azurerm_management_lock__timeouts ->
  lock_level:string ->
  name:string ->
  scope:string ->
  string ->
  unit
