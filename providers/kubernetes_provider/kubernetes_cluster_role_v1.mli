(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_cluster_role_v1__aggregation_rule__cluster_role_selectors__match_expressions

type kubernetes_cluster_role_v1__aggregation_rule__cluster_role_selectors

type kubernetes_cluster_role_v1__aggregation_rule
type kubernetes_cluster_role_v1__metadata
type kubernetes_cluster_role_v1__rule
type kubernetes_cluster_role_v1

val kubernetes_cluster_role_v1 :
  ?id:string prop ->
  aggregation_rule:kubernetes_cluster_role_v1__aggregation_rule list ->
  metadata:kubernetes_cluster_role_v1__metadata list ->
  rule:kubernetes_cluster_role_v1__rule list ->
  string ->
  unit
