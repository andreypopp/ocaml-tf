(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_cluster_role_v1__aggregation_rule__cluster_role_selectors__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_cluster_role_v1__aggregation_rule__cluster_role_selectors = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_cluster_role_v1__aggregation_rule__cluster_role_selectors__match_expressions
    list;
}
[@@deriving yojson_of]
(** A list of selectors which will be used to find ClusterRoles and create the rules. *)

type kubernetes_cluster_role_v1__aggregation_rule = {
  cluster_role_selectors :
    kubernetes_cluster_role_v1__aggregation_rule__cluster_role_selectors
    list;
}
[@@deriving yojson_of]
(** Describes how to build the Rules for this ClusterRole. *)

type kubernetes_cluster_role_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the clusterRole that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the clusterRole. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the clusterRole, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string;
      (** An opaque value that represents the internal version of this clusterRole that can be used by clients to determine when clusterRole has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this clusterRole. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard clusterRole's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_cluster_role_v1__rule = {
  api_groups : string list option; [@option]
      (** APIGroups is the name of the APIGroup that contains the resources. If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. *)
  non_resource_urls : string list option; [@option]
      (** NonResourceURLs is a set of partial urls that a user should have access to. *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as pods or secrets) or non-resource URL paths (such as /api), but not both. *)
  resource_names : string list option; [@option]
      (** ResourceNames is an optional white list of names that the rule applies to. An empty set means that everything is allowed. *)
  resources : string list option; [@option]
      (** Resources is a list of resources this rule applies to. ResourceAll represents all resources. *)
  verbs : string list;
      (** Verbs is a list of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule. VerbAll represents all kinds. *)
}
[@@deriving yojson_of]
(** List of PolicyRules for this ClusterRole *)

type kubernetes_cluster_role_v1 = {
  aggregation_rule :
    kubernetes_cluster_role_v1__aggregation_rule list;
  metadata : kubernetes_cluster_role_v1__metadata list;
  rule : kubernetes_cluster_role_v1__rule list;
}
[@@deriving yojson_of]
(** kubernetes_cluster_role_v1 *)

let kubernetes_cluster_role_v1 ~aggregation_rule ~metadata ~rule
    __resource_id =
  let __resource_type = "kubernetes_cluster_role_v1" in
  let __resource = { aggregation_rule; metadata; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_cluster_role_v1 __resource);
  ()