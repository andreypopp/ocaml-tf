(** A role contains rules that represent a set of permissions. Permissions are purely additive (there are no “deny” rules). *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
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

type kubernetes_role_v1

val kubernetes_role_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  rule:rule list ->
  unit ->
  kubernetes_role_v1

val yojson_of_kubernetes_role_v1 : kubernetes_role_v1 -> json

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
