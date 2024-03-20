(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type telemetry = {
  resource_name : string prop;  (** resource_name *)
}

type google_monitoring_istio_canonical_service

val google_monitoring_istio_canonical_service :
  ?id:string prop ->
  ?project:string prop ->
  canonical_service:string prop ->
  canonical_service_namespace:string prop ->
  mesh_uid:string prop ->
  unit ->
  google_monitoring_istio_canonical_service

val yojson_of_google_monitoring_istio_canonical_service :
  google_monitoring_istio_canonical_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  canonical_service : string prop;
  canonical_service_namespace : string prop;
  display_name : string prop;
  id : string prop;
  mesh_uid : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  telemetry : telemetry list prop;
  user_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  canonical_service:string prop ->
  canonical_service_namespace:string prop ->
  mesh_uid:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  canonical_service:string prop ->
  canonical_service_namespace:string prop ->
  mesh_uid:string prop ->
  string ->
  t Tf_core.resource
