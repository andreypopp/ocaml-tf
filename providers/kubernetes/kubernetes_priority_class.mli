(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
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
