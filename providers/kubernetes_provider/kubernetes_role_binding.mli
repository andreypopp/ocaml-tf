(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_role_binding__metadata
type kubernetes_role_binding__role_ref
type kubernetes_role_binding__subject
type kubernetes_role_binding

val kubernetes_role_binding :
  metadata:kubernetes_role_binding__metadata list ->
  role_ref:kubernetes_role_binding__role_ref list ->
  subject:kubernetes_role_binding__subject list ->
  string ->
  unit
