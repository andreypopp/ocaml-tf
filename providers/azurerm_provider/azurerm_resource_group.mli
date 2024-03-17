(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_group__timeouts
type azurerm_resource_group

val azurerm_resource_group :
  ?id:string prop ->
  ?managed_by:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_resource_group__timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  unit
