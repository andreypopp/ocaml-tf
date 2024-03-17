(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lighthouse_assignment__timeouts
type azurerm_lighthouse_assignment

val azurerm_lighthouse_assignment :
  ?id:string ->
  ?name:string ->
  ?timeouts:azurerm_lighthouse_assignment__timeouts ->
  lighthouse_definition_id:string ->
  scope:string ->
  string ->
  unit
