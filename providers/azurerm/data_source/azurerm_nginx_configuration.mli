(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config_file = {
  content : string prop;  (** content *)
  virtual_path : string prop;  (** virtual_path *)
}

type protected_file = {
  content : string prop;  (** content *)
  virtual_path : string prop;  (** virtual_path *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_nginx_configuration

val azurerm_nginx_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  nginx_deployment_id:string prop ->
  unit ->
  azurerm_nginx_configuration

val yojson_of_azurerm_nginx_configuration :
  azurerm_nginx_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  config_file : config_file list prop;
  id : string prop;
  nginx_deployment_id : string prop;
  package_data : string prop;
  protected_file : protected_file list prop;
  root_file : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  nginx_deployment_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  nginx_deployment_id:string prop ->
  string ->
  t Tf_core.resource
