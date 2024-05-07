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

type rule

val rule :
  ?resource_names:string prop list ->
  api_groups:string prop list ->
  resources:string prop list ->
  verbs:string prop list ->
  unit ->
  rule

type kubernetes_role

val kubernetes_role :
  ?id:string prop ->
  metadata:metadata list ->
  rule:rule list ->
  unit ->
  kubernetes_role

val yojson_of_kubernetes_role : kubernetes_role -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  rule:rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  rule:rule list ->
  string ->
  t Tf_core.resource
