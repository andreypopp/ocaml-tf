(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_portal_dashboard__timeouts
type azurerm_portal_dashboard

val azurerm_portal_dashboard :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_portal_dashboard__timeouts ->
  dashboard_properties:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
