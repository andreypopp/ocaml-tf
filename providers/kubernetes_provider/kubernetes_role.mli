(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_role__metadata
type kubernetes_role__rule
type kubernetes_role

val kubernetes_role :
  ?id:string ->
  metadata:kubernetes_role__metadata list ->
  rule:kubernetes_role__rule list ->
  string ->
  unit
