(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_service_certificate

val azurerm_app_service_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service_certificate

val yojson_of_azurerm_app_service_certificate :
  azurerm_app_service_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
