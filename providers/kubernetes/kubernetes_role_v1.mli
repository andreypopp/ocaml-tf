(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_role_v1__metadata
type kubernetes_role_v1__rule
type kubernetes_role_v1
type t = private { id : string prop }

val kubernetes_role_v1 :
  ?id:string prop ->
  metadata:kubernetes_role_v1__metadata list ->
  rule:kubernetes_role_v1__rule list ->
  string ->
  t
