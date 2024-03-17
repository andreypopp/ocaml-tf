(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_priority_class_v1__metadata
type kubernetes_priority_class_v1

val kubernetes_priority_class_v1 :
  ?description:string ->
  ?global_default:bool ->
  ?preemption_policy:string ->
  value:float ->
  metadata:kubernetes_priority_class_v1__metadata list ->
  string ->
  unit
