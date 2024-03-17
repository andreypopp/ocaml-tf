(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nginx_certificate__timeouts
type azurerm_nginx_certificate

val azurerm_nginx_certificate :
  ?id:string prop ->
  ?timeouts:azurerm_nginx_certificate__timeouts ->
  certificate_virtual_path:string prop ->
  key_vault_secret_id:string prop ->
  key_virtual_path:string prop ->
  name:string prop ->
  nginx_deployment_id:string prop ->
  string ->
  unit
