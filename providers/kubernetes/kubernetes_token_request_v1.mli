(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type spec__bound_object_ref

val spec__bound_object_ref :
  ?api_version:string prop ->
  ?kind:string prop ->
  ?name:string prop ->
  ?uid:string prop ->
  unit ->
  spec__bound_object_ref

type spec

val spec :
  ?audiences:string prop list ->
  ?expiration_seconds:float prop ->
  ?bound_object_ref:spec__bound_object_ref list ->
  unit ->
  spec

type kubernetes_token_request_v1

val kubernetes_token_request_v1 :
  ?id:string prop ->
  ?spec:spec list ->
  metadata:metadata list ->
  unit ->
  kubernetes_token_request_v1

val yojson_of_kubernetes_token_request_v1 :
  kubernetes_token_request_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; token : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?spec:spec list ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?spec:spec list ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
