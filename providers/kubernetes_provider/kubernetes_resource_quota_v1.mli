(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_resource_quota_v1__metadata

type kubernetes_resource_quota_v1__spec__scope_selector__match_expression

type kubernetes_resource_quota_v1__spec__scope_selector
type kubernetes_resource_quota_v1__spec
type kubernetes_resource_quota_v1__timeouts
type kubernetes_resource_quota_v1

val kubernetes_resource_quota_v1 :
  ?timeouts:kubernetes_resource_quota_v1__timeouts ->
  metadata:kubernetes_resource_quota_v1__metadata list ->
  spec:kubernetes_resource_quota_v1__spec list ->
  string ->
  unit
