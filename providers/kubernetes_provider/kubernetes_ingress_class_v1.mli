(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_ingress_class_v1__metadata
type kubernetes_ingress_class_v1__spec__parameters
type kubernetes_ingress_class_v1__spec
type kubernetes_ingress_class_v1

val kubernetes_ingress_class_v1 :
  ?id:string ->
  metadata:kubernetes_ingress_class_v1__metadata list ->
  spec:kubernetes_ingress_class_v1__spec list ->
  string ->
  unit
