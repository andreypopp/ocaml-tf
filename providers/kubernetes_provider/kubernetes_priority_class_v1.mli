(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_priority_class_v1__metadata
type kubernetes_priority_class_v1

val kubernetes_priority_class_v1 :
  ?description:string prop ->
  ?global_default:bool prop ->
  ?id:string prop ->
  ?preemption_policy:string prop ->
  value:float prop ->
  metadata:kubernetes_priority_class_v1__metadata list ->
  string ->
  unit
