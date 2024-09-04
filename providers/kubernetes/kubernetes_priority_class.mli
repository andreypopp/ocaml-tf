(** A PriorityClass is a non-namespaced object that defines a mapping from a priority class name to the integer value of the priority. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  unit ->
  metadata

type kubernetes_priority_class

val kubernetes_priority_class :
  ?description:string prop ->
  ?global_default:bool prop ->
  ?id:string prop ->
  ?preemption_policy:string prop ->
  value:float prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_priority_class

val yojson_of_kubernetes_priority_class :
  kubernetes_priority_class -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  global_default : bool prop;
  id : string prop;
  preemption_policy : string prop;
  value : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?global_default:bool prop ->
  ?id:string prop ->
  ?preemption_policy:string prop ->
  value:float prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?global_default:bool prop ->
  ?id:string prop ->
  ?preemption_policy:string prop ->
  value:float prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
