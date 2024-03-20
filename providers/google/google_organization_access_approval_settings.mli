(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type enrolled_services

val enrolled_services :
  ?enrollment_level:string prop ->
  cloud_product:string prop ->
  unit ->
  enrolled_services

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_organization_access_approval_settings

val google_organization_access_approval_settings :
  ?active_key_version:string prop ->
  ?id:string prop ->
  ?notification_emails:string prop list ->
  ?timeouts:timeouts ->
  organization_id:string prop ->
  enrolled_services:enrolled_services list ->
  unit ->
  google_organization_access_approval_settings

val yojson_of_google_organization_access_approval_settings :
  google_organization_access_approval_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  active_key_version : string prop;
  ancestor_has_active_key_version : bool prop;
  enrolled_ancestor : bool prop;
  id : string prop;
  invalid_key_version : bool prop;
  name : string prop;
  notification_emails : string list prop;
  organization_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?active_key_version:string prop ->
  ?id:string prop ->
  ?notification_emails:string prop list ->
  ?timeouts:timeouts ->
  organization_id:string prop ->
  enrolled_services:enrolled_services list ->
  string ->
  t

val make :
  ?active_key_version:string prop ->
  ?id:string prop ->
  ?notification_emails:string prop list ->
  ?timeouts:timeouts ->
  organization_id:string prop ->
  enrolled_services:enrolled_services list ->
  string ->
  t Tf_core.resource
