(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_pod_disruption_budget_v1__metadata

type kubernetes_pod_disruption_budget_v1__spec__selector__match_expressions

type kubernetes_pod_disruption_budget_v1__spec__selector
type kubernetes_pod_disruption_budget_v1__spec
type kubernetes_pod_disruption_budget_v1

val kubernetes_pod_disruption_budget_v1 :
  ?id:string ->
  metadata:kubernetes_pod_disruption_budget_v1__metadata list ->
  spec:kubernetes_pod_disruption_budget_v1__spec list ->
  string ->
  unit
