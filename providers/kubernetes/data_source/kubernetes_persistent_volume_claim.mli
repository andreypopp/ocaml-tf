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

type spec__resources = {
  limits : (string * string prop) list;  (** limits *)
  requests : (string * string prop) list;  (** requests *)
}

type spec__selector__match_expressions

val spec__selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__selector__match_expressions

type spec__selector

val spec__selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:spec__selector__match_expressions list ->
  unit ->
  spec__selector

type spec

val spec :
  ?storage_class_name:string prop ->
  ?volume_mode:string prop ->
  ?volume_name:string prop ->
  ?selector:spec__selector list ->
  unit ->
  spec

type kubernetes_persistent_volume_claim

val kubernetes_persistent_volume_claim :
  ?id:string prop ->
  ?spec:spec list ->
  metadata:metadata list ->
  unit ->
  kubernetes_persistent_volume_claim

val yojson_of_kubernetes_persistent_volume_claim :
  kubernetes_persistent_volume_claim -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

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
