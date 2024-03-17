(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_load_balancer__timeouts
type azurerm_application_load_balancer

val azurerm_application_load_balancer :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_application_load_balancer__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
