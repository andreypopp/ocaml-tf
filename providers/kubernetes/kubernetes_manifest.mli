(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type wait_for = { fields : string prop Tf_core.assoc  (** fields *) }
type field_manager

val field_manager :
  ?force_conflicts:bool prop ->
  ?name:string prop ->
  unit ->
  field_manager

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type wait__condition

val wait__condition :
  ?status:string prop ->
  ?type_:string prop ->
  unit ->
  wait__condition

type wait

val wait :
  ?fields:string prop Tf_core.assoc ->
  ?rollout:bool prop ->
  ?condition:wait__condition list ->
  unit ->
  wait

type kubernetes_manifest

val kubernetes_manifest :
  ?computed_fields:string prop list ->
  ?object_:json prop ->
  ?wait_for:wait_for ->
  ?field_manager:field_manager list ->
  ?timeouts:timeouts list ->
  ?wait:wait list ->
  manifest:json prop ->
  unit ->
  kubernetes_manifest

val yojson_of_kubernetes_manifest : kubernetes_manifest -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  computed_fields : string list prop;
  manifest : json prop;
  object_ : json prop;
  wait_for : wait_for prop;
}

val register :
  ?tf_module:tf_module ->
  ?computed_fields:string prop list ->
  ?object_:json prop ->
  ?wait_for:wait_for ->
  ?field_manager:field_manager list ->
  ?timeouts:timeouts list ->
  ?wait:wait list ->
  manifest:json prop ->
  string ->
  t

val make :
  ?computed_fields:string prop list ->
  ?object_:json prop ->
  ?wait_for:wait_for ->
  ?field_manager:field_manager list ->
  ?timeouts:timeouts list ->
  ?wait:wait list ->
  manifest:json prop ->
  string ->
  t Tf_core.resource
