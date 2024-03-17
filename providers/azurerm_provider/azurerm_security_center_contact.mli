(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_contact__timeouts
type azurerm_security_center_contact

val azurerm_security_center_contact :
  ?id:string prop ->
  ?name:string prop ->
  ?phone:string prop ->
  ?timeouts:azurerm_security_center_contact__timeouts ->
  alert_notifications:bool prop ->
  alerts_to_admins:bool prop ->
  email:string prop ->
  string ->
  unit
