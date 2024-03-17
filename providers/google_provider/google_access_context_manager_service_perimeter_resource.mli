(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_service_perimeter_resource__timeouts

type google_access_context_manager_service_perimeter_resource

type t = private {
  id : string prop;
  perimeter_name : string prop;
  resource : string prop;
}

val google_access_context_manager_service_perimeter_resource :
  ?id:string prop ->
  ?timeouts:
    google_access_context_manager_service_perimeter_resource__timeouts ->
  perimeter_name:string prop ->
  resource:string prop ->
  string ->
  t
