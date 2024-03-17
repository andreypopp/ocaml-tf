(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_environment_certificate__timeouts
type azurerm_container_app_environment_certificate

val azurerm_container_app_environment_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_container_app_environment_certificate__timeouts ->
  certificate_blob_base64:string prop ->
  certificate_password:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  string ->
  unit
