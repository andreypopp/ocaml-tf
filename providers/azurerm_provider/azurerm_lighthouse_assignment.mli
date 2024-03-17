(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lighthouse_assignment__timeouts
type azurerm_lighthouse_assignment

val azurerm_lighthouse_assignment :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:azurerm_lighthouse_assignment__timeouts ->
  lighthouse_definition_id:string prop ->
  scope:string prop ->
  string ->
  unit
