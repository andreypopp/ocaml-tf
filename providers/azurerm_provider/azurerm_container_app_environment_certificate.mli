(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_environment_certificate__timeouts
type azurerm_container_app_environment_certificate

val azurerm_container_app_environment_certificate :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_container_app_environment_certificate__timeouts ->
  certificate_blob_base64:string ->
  certificate_password:string ->
  container_app_environment_id:string ->
  name:string ->
  string ->
  unit
