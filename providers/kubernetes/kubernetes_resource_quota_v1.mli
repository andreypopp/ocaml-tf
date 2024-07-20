(** A resource quota provides constraints that limit aggregate resource consumption per namespace. It can limit the quantity of objects that can be created in a namespace by type, as well as the total amount of compute resources that may be consumed by resources in that project. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type spec__scope_selector__match_expression

val spec__scope_selector__match_expression :
  ?values:string prop list ->
  operator:string prop ->
  scope_name:string prop ->
  unit ->
  spec__scope_selector__match_expression

type spec__scope_selector

val spec__scope_selector :
  ?match_expression:spec__scope_selector__match_expression list ->
  unit ->
  spec__scope_selector

type spec

val spec :
  ?hard:(string * string prop) list ->
  ?scopes:string prop list ->
  ?scope_selector:spec__scope_selector list ->
  unit ->
  spec

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type kubernetes_resource_quota_v1

val kubernetes_resource_quota_v1 :
  ?id:string prop ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  unit ->
  kubernetes_resource_quota_v1

val yojson_of_kubernetes_resource_quota_v1 :
  kubernetes_resource_quota_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?spec:spec list ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
