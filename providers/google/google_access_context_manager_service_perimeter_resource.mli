(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_access_context_manager_service_perimeter_resource

val google_access_context_manager_service_perimeter_resource :
  ?id:string prop ->
  ?timeouts:timeouts ->
  perimeter_name:string prop ->
  resource:string prop ->
  unit ->
  google_access_context_manager_service_perimeter_resource

val yojson_of_google_access_context_manager_service_perimeter_resource :
  google_access_context_manager_service_perimeter_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  perimeter_name : string prop;
  resource : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  perimeter_name:string prop ->
  resource:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  perimeter_name:string prop ->
  resource:string prop ->
  string ->
  t Tf_core.resource
