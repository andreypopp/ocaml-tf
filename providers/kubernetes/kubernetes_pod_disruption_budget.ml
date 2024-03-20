(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the pod disruption budget that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the pod disruption budget. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the pod disruption budget, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the pod disruption budget must be unique. *)
}
[@@deriving yojson_of]
(** Standard pod disruption budget's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec__selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type spec__selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions : spec__selector__match_expressions list;
}
[@@deriving yojson_of]
(** spec__selector *)

type spec = {
  max_unavailable : string prop option; [@option]
      (** max_unavailable *)
  min_available : string prop option; [@option]  (** min_available *)
  selector : spec__selector list;
}
[@@deriving yojson_of]
(** Specification of the desired behavior of the PodDisruptionBudget. *)

type kubernetes_pod_disruption_budget = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  spec : spec list;
}
[@@deriving yojson_of]
(** kubernetes_pod_disruption_budget *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__selector__match_expressions ?key ?operator ?values () :
    spec__selector__match_expressions =
  { key; operator; values }

let spec__selector ?match_labels ~match_expressions () :
    spec__selector =
  { match_labels; match_expressions }

let spec ?max_unavailable ?min_available ~selector () : spec =
  { max_unavailable; min_available; selector }

let kubernetes_pod_disruption_budget ?id ~metadata ~spec () :
    kubernetes_pod_disruption_budget =
  { id; metadata; spec }

type t = { id : string prop }

let make ?id ~metadata ~spec __id =
  let __type = "kubernetes_pod_disruption_budget" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_pod_disruption_budget
        (kubernetes_pod_disruption_budget ?id ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~spec __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~spec __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
