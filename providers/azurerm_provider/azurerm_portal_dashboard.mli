(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_portal_dashboard__timeouts
type azurerm_portal_dashboard

val azurerm_portal_dashboard :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_portal_dashboard__timeouts ->
  dashboard_properties:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
