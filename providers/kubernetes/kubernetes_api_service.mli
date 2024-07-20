(** An API Service is an abstraction which defines for locating and communicating with servers. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?service:spec__service list ->
  group:string prop ->
  group_priority_minimum:float prop ->
  version:string prop ->
  version_priority:float prop ->
  unit ->
  spec

type kubernetes_api_service

val kubernetes_api_service :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_api_service

val yojson_of_kubernetes_api_service : kubernetes_api_service -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
