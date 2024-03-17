(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dashboard__timeouts
type azurerm_dashboard

val azurerm_dashboard :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_dashboard__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
