(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nginx_configuration__config_file
type azurerm_nginx_configuration__protected_file
type azurerm_nginx_configuration__timeouts
type azurerm_nginx_configuration

type t = private {
  id : string prop;
  nginx_deployment_id : string prop;
  package_data : string prop;
  root_file : string prop;
}

val azurerm_nginx_configuration :
  ?id:string prop ->
  ?package_data:string prop ->
  ?timeouts:azurerm_nginx_configuration__timeouts ->
  nginx_deployment_id:string prop ->
  root_file:string prop ->
  config_file:azurerm_nginx_configuration__config_file list ->
  protected_file:azurerm_nginx_configuration__protected_file list ->
  string ->
  t
