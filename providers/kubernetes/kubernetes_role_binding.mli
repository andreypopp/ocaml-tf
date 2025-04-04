(** A RoleBinding may be used to grant permission at the namespace level *)

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

type role_ref

val role_ref :
  api_group:string prop ->
  kind:string prop ->
  name:string prop ->
  unit ->
  role_ref

type subject

val subject :
  ?api_group:string prop ->
  ?namespace:string prop ->
  kind:string prop ->
  name:string prop ->
  unit ->
  subject

type kubernetes_role_binding

val kubernetes_role_binding :
  ?id:string prop ->
  metadata:metadata list ->
  role_ref:role_ref list ->
  subject:subject list ->
  unit ->
  kubernetes_role_binding

val yojson_of_kubernetes_role_binding :
  kubernetes_role_binding -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  role_ref:role_ref list ->
  subject:subject list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  role_ref:role_ref list ->
  subject:subject list ->
  string ->
  t Tf_core.resource
