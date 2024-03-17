(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_instance__identity
type azurerm_digital_twins_instance__timeouts
type azurerm_digital_twins_instance

val azurerm_digital_twins_instance :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_digital_twins_instance__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_digital_twins_instance__identity list ->
  string ->
  unit
