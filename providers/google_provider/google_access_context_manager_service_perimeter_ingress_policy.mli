(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_service_perimeter_ingress_policy__ingress_from__sources

type google_access_context_manager_service_perimeter_ingress_policy__ingress_from

type google_access_context_manager_service_perimeter_ingress_policy__ingress_to__operations__method_selectors

type google_access_context_manager_service_perimeter_ingress_policy__ingress_to__operations

type google_access_context_manager_service_perimeter_ingress_policy__ingress_to

type google_access_context_manager_service_perimeter_ingress_policy__timeouts

type google_access_context_manager_service_perimeter_ingress_policy
type t = private { id : string prop; perimeter : string prop }

val google_access_context_manager_service_perimeter_ingress_policy :
  ?id:string prop ->
  ?timeouts:
    google_access_context_manager_service_perimeter_ingress_policy__timeouts ->
  perimeter:string prop ->
  ingress_from:
    google_access_context_manager_service_perimeter_ingress_policy__ingress_from
    list ->
  ingress_to:
    google_access_context_manager_service_perimeter_ingress_policy__ingress_to
    list ->
  string ->
  t
