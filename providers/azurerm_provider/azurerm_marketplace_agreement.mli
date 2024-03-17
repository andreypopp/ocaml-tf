(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_marketplace_agreement__timeouts
type azurerm_marketplace_agreement

val azurerm_marketplace_agreement :
  ?id:string prop ->
  ?timeouts:azurerm_marketplace_agreement__timeouts ->
  offer:string prop ->
  plan:string prop ->
  publisher:string prop ->
  string ->
  unit
