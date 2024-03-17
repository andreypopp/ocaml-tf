(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_ingress_class_v1__metadata
type kubernetes_ingress_class_v1__spec__parameters
type kubernetes_ingress_class_v1__spec
type kubernetes_ingress_class_v1
type t = private { id : string prop }

val kubernetes_ingress_class_v1 :
  ?id:string prop ->
  metadata:kubernetes_ingress_class_v1__metadata list ->
  spec:kubernetes_ingress_class_v1__spec list ->
  string ->
  t
