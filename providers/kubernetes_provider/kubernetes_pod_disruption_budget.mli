(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_pod_disruption_budget__metadata

type kubernetes_pod_disruption_budget__spec__selector__match_expressions

type kubernetes_pod_disruption_budget__spec__selector
type kubernetes_pod_disruption_budget__spec
type kubernetes_pod_disruption_budget

val kubernetes_pod_disruption_budget :
  ?id:string ->
  metadata:kubernetes_pod_disruption_budget__metadata list ->
  spec:kubernetes_pod_disruption_budget__spec list ->
  string ->
  unit
