(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_priority_class__metadata
type kubernetes_priority_class

val kubernetes_priority_class :
  ?description:string prop ->
  ?global_default:bool prop ->
  ?id:string prop ->
  ?preemption_policy:string prop ->
  value:float prop ->
  metadata:kubernetes_priority_class__metadata list ->
  string ->
  unit
