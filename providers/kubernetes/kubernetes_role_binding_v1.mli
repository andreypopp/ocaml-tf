(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

type kubernetes_role_binding_v1

val kubernetes_role_binding_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  role_ref:role_ref list ->
  subject:subject list ->
  unit ->
  kubernetes_role_binding_v1

val yojson_of_kubernetes_role_binding_v1 :
  kubernetes_role_binding_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  role_ref:role_ref list ->
  subject:subject list ->
  string ->
  t
