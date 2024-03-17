(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_contact__timeouts
type azurerm_security_center_contact

val azurerm_security_center_contact :
  ?name:string ->
  ?phone:string ->
  ?timeouts:azurerm_security_center_contact__timeouts ->
  alert_notifications:bool ->
  alerts_to_admins:bool ->
  email:string ->
  string ->
  unit
