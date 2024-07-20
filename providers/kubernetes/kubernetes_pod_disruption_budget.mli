(** A Pod Disruption Budget limits the number of pods of a replicated application that are down simultaneously from voluntary disruptions. For example, a quorum-based application would like to ensure that the number of replicas running is never brought below the number needed for a quorum. A web front end might want to ensure that the number of replicas serving load never falls below a certain percentage of the total. *)

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

type spec__selector__match_expressions

val spec__selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__selector__match_expressions

type spec__selector

val spec__selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:spec__selector__match_expressions list ->
  unit ->
  spec__selector

type spec

val spec :
  ?max_unavailable:string prop ->
  ?min_available:string prop ->
  selector:spec__selector list ->
  unit ->
  spec

type kubernetes_pod_disruption_budget

val kubernetes_pod_disruption_budget :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_pod_disruption_budget

val yojson_of_kubernetes_pod_disruption_budget :
  kubernetes_pod_disruption_budget -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
