(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_ingress_class__metadata
type kubernetes_ingress_class__spec__parameters
type kubernetes_ingress_class__spec
type kubernetes_ingress_class

val kubernetes_ingress_class :
  metadata:kubernetes_ingress_class__metadata list ->
  spec:kubernetes_ingress_class__spec list ->
  string ->
  unit
