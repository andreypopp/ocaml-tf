(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_app_service_managed_certificate

val azurerm_app_service_managed_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  custom_hostname_binding_id:string prop ->
  unit ->
  azurerm_app_service_managed_certificate

val yojson_of_azurerm_app_service_managed_certificate :
  azurerm_app_service_managed_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  canonical_name : string prop;
  custom_hostname_binding_id : string prop;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  custom_hostname_binding_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  custom_hostname_binding_id:string prop ->
  string ->
  t Tf_core.resource
