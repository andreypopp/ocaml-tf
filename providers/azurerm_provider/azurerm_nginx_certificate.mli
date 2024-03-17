(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nginx_certificate__timeouts
type azurerm_nginx_certificate

val azurerm_nginx_certificate :
  ?timeouts:azurerm_nginx_certificate__timeouts ->
  certificate_virtual_path:string ->
  key_vault_secret_id:string ->
  key_virtual_path:string ->
  name:string ->
  nginx_deployment_id:string ->
  string ->
  unit
