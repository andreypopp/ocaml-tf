(** This resource allows the user to request for and claim to a persistent volume. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type spec__resources

val spec__resources :
  ?limits:string prop Tf_core.assoc ->
  ?requests:string prop Tf_core.assoc ->
  unit ->
  spec__resources

type spec__selector__match_expressions

val spec__selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__selector__match_expressions

type spec__selector

val spec__selector :
  ?match_labels:string prop Tf_core.assoc ->
  ?match_expressions:spec__selector__match_expressions list ->
  unit ->
  spec__selector

type spec

val spec :
  ?storage_class_name:string prop ->
  ?volume_mode:string prop ->
  ?volume_name:string prop ->
  ?selector:spec__selector list ->
  access_modes:string prop list ->
  resources:spec__resources list ->
  unit ->
  spec

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type kubernetes_persistent_volume_claim_v1

val kubernetes_persistent_volume_claim_v1 :
  ?id:string prop ->
  ?wait_until_bound:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_persistent_volume_claim_v1

val yojson_of_kubernetes_persistent_volume_claim_v1 :
  kubernetes_persistent_volume_claim_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  wait_until_bound : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?wait_until_bound:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?wait_until_bound:bool prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
