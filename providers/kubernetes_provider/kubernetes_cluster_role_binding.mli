(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_cluster_role_binding__metadata
type kubernetes_cluster_role_binding__role_ref
type kubernetes_cluster_role_binding__subject
type kubernetes_cluster_role_binding

val kubernetes_cluster_role_binding :
  ?id:string ->
  metadata:kubernetes_cluster_role_binding__metadata list ->
  role_ref:kubernetes_cluster_role_binding__role_ref list ->
  subject:kubernetes_cluster_role_binding__subject list ->
  string ->
  unit
