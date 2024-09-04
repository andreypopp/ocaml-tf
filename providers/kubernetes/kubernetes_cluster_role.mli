(** A ClusterRole creates a role at the cluster level and in all namespaces. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aggregation_rule__cluster_role_selectors__match_expressions

val aggregation_rule__cluster_role_selectors__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  aggregation_rule__cluster_role_selectors__match_expressions

type aggregation_rule__cluster_role_selectors

val aggregation_rule__cluster_role_selectors :
  ?match_labels:string prop Tf_core.assoc ->
  ?match_expressions:
    aggregation_rule__cluster_role_selectors__match_expressions list ->
  unit ->
  aggregation_rule__cluster_role_selectors

type aggregation_rule

val aggregation_rule :
  ?cluster_role_selectors:
    aggregation_rule__cluster_role_selectors list ->
  unit ->
  aggregation_rule

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  unit ->
  metadata

type rule

val rule :
  ?api_groups:string prop list ->
  ?non_resource_urls:string prop list ->
  ?resource_names:string prop list ->
  ?resources:string prop list ->
  verbs:string prop list ->
  unit ->
  rule

type kubernetes_cluster_role

val kubernetes_cluster_role :
  ?id:string prop ->
  ?aggregation_rule:aggregation_rule list ->
  ?rule:rule list ->
  metadata:metadata list ->
  unit ->
  kubernetes_cluster_role

val yojson_of_kubernetes_cluster_role :
  kubernetes_cluster_role -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?aggregation_rule:aggregation_rule list ->
  ?rule:rule list ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?aggregation_rule:aggregation_rule list ->
  ?rule:rule list ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
