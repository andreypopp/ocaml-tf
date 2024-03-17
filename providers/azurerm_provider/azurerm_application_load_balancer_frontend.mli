(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_load_balancer_frontend__timeouts
type azurerm_application_load_balancer_frontend

val azurerm_application_load_balancer_frontend :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_application_load_balancer_frontend__timeouts ->
  application_load_balancer_id:string ->
  name:string ->
  string ->
  unit
