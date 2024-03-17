(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_priority_class__metadata
type kubernetes_priority_class

val kubernetes_priority_class :
  ?description:string ->
  ?global_default:bool ->
  ?preemption_policy:string ->
  value:float ->
  metadata:kubernetes_priority_class__metadata list ->
  string ->
  unit
