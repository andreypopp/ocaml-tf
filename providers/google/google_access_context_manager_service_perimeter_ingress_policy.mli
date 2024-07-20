(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ingress_from__sources

val ingress_from__sources :
  ?access_level:string prop ->
  ?resource:string prop ->
  unit ->
  ingress_from__sources

type ingress_from

val ingress_from :
  ?identities:string prop list ->
  ?identity_type:string prop ->
  ?sources:ingress_from__sources list ->
  unit ->
  ingress_from

type ingress_to__operations__method_selectors

val ingress_to__operations__method_selectors :
  ?method_:string prop ->
  ?permission:string prop ->
  unit ->
  ingress_to__operations__method_selectors

type ingress_to__operations

val ingress_to__operations :
  ?service_name:string prop ->
  ?method_selectors:ingress_to__operations__method_selectors list ->
  unit ->
  ingress_to__operations

type ingress_to

val ingress_to :
  ?resources:string prop list ->
  ?operations:ingress_to__operations list ->
  unit ->
  ingress_to

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_access_context_manager_service_perimeter_ingress_policy

val google_access_context_manager_service_perimeter_ingress_policy :
  ?id:string prop ->
  ?ingress_from:ingress_from list ->
  ?ingress_to:ingress_to list ->
  ?timeouts:timeouts ->
  perimeter:string prop ->
  unit ->
  google_access_context_manager_service_perimeter_ingress_policy

val yojson_of_google_access_context_manager_service_perimeter_ingress_policy :
  google_access_context_manager_service_perimeter_ingress_policy ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  perimeter : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ingress_from:ingress_from list ->
  ?ingress_to:ingress_to list ->
  ?timeouts:timeouts ->
  perimeter:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ingress_from:ingress_from list ->
  ?ingress_to:ingress_to list ->
  ?timeouts:timeouts ->
  perimeter:string prop ->
  string ->
  t Tf_core.resource
