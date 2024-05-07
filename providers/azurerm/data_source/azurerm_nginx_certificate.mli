(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_nginx_certificate

val azurerm_nginx_certificate :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  nginx_deployment_id:string prop ->
  unit ->
  azurerm_nginx_certificate

val yojson_of_azurerm_nginx_certificate :
  azurerm_nginx_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_virtual_path : string prop;
  id : string prop;
  key_vault_secret_id : string prop;
  key_virtual_path : string prop;
  name : string prop;
  nginx_deployment_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  nginx_deployment_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  nginx_deployment_id:string prop ->
  string ->
  t Tf_core.resource
