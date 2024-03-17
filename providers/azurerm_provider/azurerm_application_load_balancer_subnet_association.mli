(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_load_balancer_subnet_association__timeouts
type azurerm_application_load_balancer_subnet_association

val azurerm_application_load_balancer_subnet_association :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:
    azurerm_application_load_balancer_subnet_association__timeouts ->
  application_load_balancer_id:string ->
  name:string ->
  subnet_id:string ->
  string ->
  unit
