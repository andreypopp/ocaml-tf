(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_container_app_environment_certificate

val azurerm_container_app_environment_certificate :
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_container_app_environment_certificate

val yojson_of_azurerm_container_app_environment_certificate :
  azurerm_container_app_environment_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  container_app_environment_id : string prop;
  expiration_date : string prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  name : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_app_environment_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
