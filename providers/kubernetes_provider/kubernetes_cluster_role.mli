(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_cluster_role__aggregation_rule__cluster_role_selectors__match_expressions

type kubernetes_cluster_role__aggregation_rule__cluster_role_selectors
type kubernetes_cluster_role__aggregation_rule
type kubernetes_cluster_role__metadata
type kubernetes_cluster_role__rule
type kubernetes_cluster_role

val kubernetes_cluster_role :
  aggregation_rule:kubernetes_cluster_role__aggregation_rule list ->
  metadata:kubernetes_cluster_role__metadata list ->
  rule:kubernetes_cluster_role__rule list ->
  string ->
  unit
