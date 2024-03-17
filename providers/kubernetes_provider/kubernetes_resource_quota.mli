(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_resource_quota__metadata
type kubernetes_resource_quota__spec__scope_selector__match_expression
type kubernetes_resource_quota__spec__scope_selector
type kubernetes_resource_quota__spec
type kubernetes_resource_quota__timeouts
type kubernetes_resource_quota
type t = private { id : string prop }

val kubernetes_resource_quota :
  ?id:string prop ->
  ?timeouts:kubernetes_resource_quota__timeouts ->
  metadata:kubernetes_resource_quota__metadata list ->
  spec:kubernetes_resource_quota__spec list ->
  string ->
  t
