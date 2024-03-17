(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_digital_twins_instance__identity
type azurerm_digital_twins_instance__timeouts
type azurerm_digital_twins_instance

val azurerm_digital_twins_instance :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_digital_twins_instance__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_digital_twins_instance__identity list ->
  string ->
  unit
