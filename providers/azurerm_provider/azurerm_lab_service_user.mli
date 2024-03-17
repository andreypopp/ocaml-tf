(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lab_service_user__timeouts
type azurerm_lab_service_user

val azurerm_lab_service_user :
  ?additional_usage_quota:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_lab_service_user__timeouts ->
  email:string prop ->
  lab_id:string prop ->
  name:string prop ->
  string ->
  unit
