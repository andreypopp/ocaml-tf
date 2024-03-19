(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type config_file

val config_file :
  content:string prop ->
  virtual_path:string prop ->
  unit ->
  config_file

type protected_file

val protected_file :
  content:string prop ->
  virtual_path:string prop ->
  unit ->
  protected_file

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_nginx_configuration

val azurerm_nginx_configuration :
  ?id:string prop ->
  ?package_data:string prop ->
  ?timeouts:timeouts ->
  nginx_deployment_id:string prop ->
  root_file:string prop ->
  config_file:config_file list ->
  protected_file:protected_file list ->
  unit ->
  azurerm_nginx_configuration

val yojson_of_azurerm_nginx_configuration :
  azurerm_nginx_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  nginx_deployment_id : string prop;
  package_data : string prop;
  root_file : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?package_data:string prop ->
  ?timeouts:timeouts ->
  nginx_deployment_id:string prop ->
  root_file:string prop ->
  config_file:config_file list ->
  protected_file:protected_file list ->
  string ->
  t
