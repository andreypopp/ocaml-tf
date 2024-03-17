(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_managed_certificate__timeouts
type azurerm_app_service_managed_certificate

val azurerm_app_service_managed_certificate :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_app_service_managed_certificate__timeouts ->
  custom_hostname_binding_id:string ->
  string ->
  unit
