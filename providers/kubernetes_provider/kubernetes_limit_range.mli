(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_limit_range__metadata
type kubernetes_limit_range__spec__limit
type kubernetes_limit_range__spec
type kubernetes_limit_range
type t = private { id : string prop }

val kubernetes_limit_range :
  ?id:string prop ->
  metadata:kubernetes_limit_range__metadata list ->
  spec:kubernetes_limit_range__spec list ->
  string ->
  t
