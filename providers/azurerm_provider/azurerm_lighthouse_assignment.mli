(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lighthouse_assignment__timeouts
type azurerm_lighthouse_assignment

type t = private {
  id : string prop;
  lighthouse_definition_id : string prop;
  name : string prop;
  scope : string prop;
}

val azurerm_lighthouse_assignment :
  ?id:string prop ->
  ?name:string prop ->
  ?timeouts:azurerm_lighthouse_assignment__timeouts ->
  lighthouse_definition_id:string prop ->
  scope:string prop ->
  string ->
  t
