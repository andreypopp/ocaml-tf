(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?match_labels:(string * string prop) list ->
  match_expressions:
    aggregation_rule__cluster_role_selectors__match_expressions list ->
  unit ->
  aggregation_rule__cluster_role_selectors

type aggregation_rule

val aggregation_rule :
  cluster_role_selectors:
    aggregation_rule__cluster_role_selectors list ->
  unit ->
  aggregation_rule

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
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
  aggregation_rule:aggregation_rule list ->
  metadata:metadata list ->
  rule:rule list ->
  unit ->
  kubernetes_cluster_role

val yojson_of_kubernetes_cluster_role :
  kubernetes_cluster_role -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  aggregation_rule:aggregation_rule list ->
  metadata:metadata list ->
  rule:rule list ->
  string ->
  t
