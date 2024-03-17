(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_load_balancer__timeouts
type azurerm_application_load_balancer

val azurerm_application_load_balancer :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_application_load_balancer__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
