(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_horizontal_pod_autoscaler_v1__metadata
type kubernetes_horizontal_pod_autoscaler_v1__spec__scale_target_ref
type kubernetes_horizontal_pod_autoscaler_v1__spec
type kubernetes_horizontal_pod_autoscaler_v1

val kubernetes_horizontal_pod_autoscaler_v1 :
  ?id:string ->
  metadata:kubernetes_horizontal_pod_autoscaler_v1__metadata list ->
  spec:kubernetes_horizontal_pod_autoscaler_v1__spec list ->
  string ->
  unit
