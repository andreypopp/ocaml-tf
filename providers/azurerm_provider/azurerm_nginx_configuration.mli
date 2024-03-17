(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nginx_configuration__config_file
type azurerm_nginx_configuration__protected_file
type azurerm_nginx_configuration__timeouts
type azurerm_nginx_configuration

val azurerm_nginx_configuration :
  ?id:string ->
  ?package_data:string ->
  ?timeouts:azurerm_nginx_configuration__timeouts ->
  nginx_deployment_id:string ->
  root_file:string ->
  config_file:azurerm_nginx_configuration__config_file list ->
  protected_file:azurerm_nginx_configuration__protected_file list ->
  string ->
  unit
