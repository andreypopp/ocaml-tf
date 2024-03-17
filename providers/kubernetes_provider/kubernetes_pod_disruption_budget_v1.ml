(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_pod_disruption_budget_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the pod disruption budget that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the pod disruption budget. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the pod disruption budget, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the pod disruption budget must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this pod disruption budget that can be used by clients to determine when pod disruption budget has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this pod disruption budget. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard pod disruption budget's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_pod_disruption_budget_v1__spec__selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_pod_disruption_budget_v1__spec__selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_pod_disruption_budget_v1__spec__selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** kubernetes_pod_disruption_budget_v1__spec__selector *)

type kubernetes_pod_disruption_budget_v1__spec = {
  max_unavailable : string option; [@option]  (** max_unavailable *)
  min_available : string option; [@option]  (** min_available *)
  selector : kubernetes_pod_disruption_budget_v1__spec__selector list;
}
[@@deriving yojson_of]
(** Specification of the desired behavior of the PodDisruptionBudget. *)

type kubernetes_pod_disruption_budget_v1 = {
  id : string option; [@option]  (** id *)
  metadata : kubernetes_pod_disruption_budget_v1__metadata list;
  spec : kubernetes_pod_disruption_budget_v1__spec list;
}
[@@deriving yojson_of]
(** kubernetes_pod_disruption_budget_v1 *)

let kubernetes_pod_disruption_budget_v1 ?id ~metadata ~spec
    __resource_id =
  let __resource_type = "kubernetes_pod_disruption_budget_v1" in
  let __resource = { id; metadata; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_pod_disruption_budget_v1 __resource);
  ()
