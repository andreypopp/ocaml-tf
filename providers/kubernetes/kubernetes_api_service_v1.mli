(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type spec__service

val spec__service :
  ?port:float prop ->
  name:string prop ->
  namespace:string prop ->
  unit ->
  spec__service

type spec

val spec :
  ?ca_bundle:string prop ->
  ?insecure_skip_tls_verify:bool prop ->
  group:string prop ->
  group_priority_minimum:float prop ->
  version:string prop ->
  version_priority:float prop ->
  service:spec__service list ->
  unit ->
  spec

type kubernetes_api_service_v1

val kubernetes_api_service_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_api_service_v1

val yojson_of_kubernetes_api_service_v1 :
  kubernetes_api_service_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t
