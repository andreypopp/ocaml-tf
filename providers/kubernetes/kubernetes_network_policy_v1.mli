(** Kubernetes supports network policies to specify how groups of pods are allowed to communicate with each other and with other network endpoints. NetworkPolicy resources use labels to select pods and define rules which specify what traffic is allowed to the selected pods. Read more about network policies at https://kubernetes.io/docs/concepts/services-networking/network-policies/ *)

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

type spec__egress__ports

val spec__egress__ports :
  ?port:string prop ->
  ?protocol:string prop ->
  unit ->
  spec__egress__ports

type spec__egress__to__ip_block

val spec__egress__to__ip_block :
  ?cidr:string prop ->
  ?except:string prop list ->
  unit ->
  spec__egress__to__ip_block

type spec__egress__to__namespace_selector__match_expressions

val spec__egress__to__namespace_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__egress__to__namespace_selector__match_expressions

type spec__egress__to__namespace_selector

val spec__egress__to__namespace_selector :
  ?match_labels:string prop Tf_core.assoc ->
  ?match_expressions:
    spec__egress__to__namespace_selector__match_expressions list ->
  unit ->
  spec__egress__to__namespace_selector

type spec__egress__to__pod_selector__match_expressions

val spec__egress__to__pod_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__egress__to__pod_selector__match_expressions

type spec__egress__to__pod_selector

val spec__egress__to__pod_selector :
  ?match_labels:string prop Tf_core.assoc ->
  ?match_expressions:
    spec__egress__to__pod_selector__match_expressions list ->
  unit ->
  spec__egress__to__pod_selector

type spec__egress__to

val spec__egress__to :
  ?ip_block:spec__egress__to__ip_block list ->
  ?namespace_selector:spec__egress__to__namespace_selector list ->
  ?pod_selector:spec__egress__to__pod_selector list ->
  unit ->
  spec__egress__to

type spec__egress

val spec__egress :
  ?ports:spec__egress__ports list ->
  ?to_:spec__egress__to list ->
  unit ->
  spec__egress

type spec__ingress__from__ip_block

val spec__ingress__from__ip_block :
  ?cidr:string prop ->
  ?except:string prop list ->
  unit ->
  spec__ingress__from__ip_block

type spec__ingress__from__namespace_selector__match_expressions

val spec__ingress__from__namespace_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__ingress__from__namespace_selector__match_expressions

type spec__ingress__from__namespace_selector

val spec__ingress__from__namespace_selector :
  ?match_labels:string prop Tf_core.assoc ->
  ?match_expressions:
    spec__ingress__from__namespace_selector__match_expressions list ->
  unit ->
  spec__ingress__from__namespace_selector

type spec__ingress__from__pod_selector__match_expressions

val spec__ingress__from__pod_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__ingress__from__pod_selector__match_expressions

type spec__ingress__from__pod_selector

val spec__ingress__from__pod_selector :
  ?match_labels:string prop Tf_core.assoc ->
  ?match_expressions:
    spec__ingress__from__pod_selector__match_expressions list ->
  unit ->
  spec__ingress__from__pod_selector

type spec__ingress__from

val spec__ingress__from :
  ?ip_block:spec__ingress__from__ip_block list ->
  ?namespace_selector:spec__ingress__from__namespace_selector list ->
  ?pod_selector:spec__ingress__from__pod_selector list ->
  unit ->
  spec__ingress__from

type spec__ingress__ports

val spec__ingress__ports :
  ?port:string prop ->
  ?protocol:string prop ->
  unit ->
  spec__ingress__ports

type spec__ingress

val spec__ingress :
  ?from:spec__ingress__from list ->
  ?ports:spec__ingress__ports list ->
  unit ->
  spec__ingress

type spec__pod_selector__match_expressions

val spec__pod_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__pod_selector__match_expressions

type spec__pod_selector

val spec__pod_selector :
  ?match_labels:string prop Tf_core.assoc ->
  ?match_expressions:spec__pod_selector__match_expressions list ->
  unit ->
  spec__pod_selector

type spec

val spec :
  ?egress:spec__egress list ->
  ?ingress:spec__ingress list ->
  policy_types:string prop list ->
  pod_selector:spec__pod_selector list ->
  unit ->
  spec

type kubernetes_network_policy_v1

val kubernetes_network_policy_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_network_policy_v1

val yojson_of_kubernetes_network_policy_v1 :
  kubernetes_network_policy_v1 -> json

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
