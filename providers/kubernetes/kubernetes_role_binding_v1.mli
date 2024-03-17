(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_role_binding_v1__metadata
type kubernetes_role_binding_v1__role_ref
type kubernetes_role_binding_v1__subject
type kubernetes_role_binding_v1
type t = private { id : string prop }

val kubernetes_role_binding_v1 :
  ?id:string prop ->
  metadata:kubernetes_role_binding_v1__metadata list ->
  role_ref:kubernetes_role_binding_v1__role_ref list ->
  subject:kubernetes_role_binding_v1__subject list ->
  string ->
  t
