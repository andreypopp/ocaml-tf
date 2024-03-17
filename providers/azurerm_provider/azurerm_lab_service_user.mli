(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lab_service_user__timeouts
type azurerm_lab_service_user

val azurerm_lab_service_user :
  ?additional_usage_quota:string ->
  ?id:string ->
  ?timeouts:azurerm_lab_service_user__timeouts ->
  email:string ->
  lab_id:string ->
  name:string ->
  string ->
  unit
