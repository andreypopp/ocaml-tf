(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_resource_quota_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the resource quota that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the resource quota. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the resource quota, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the resource quota must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this resource quota that can be used by clients to determine when resource quota has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this resource quota. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard resource quota's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_resource_quota_v1__spec__scope_selector__match_expression = {
  operator : string;
      (** Represents a scope's relationship to a set of values. *)
  scope_name : string;
      (** The name of the scope that the selector applies to. *)
  values : string list option; [@option]
      (** A list of scope selector requirements by scope of the resources. *)
}
[@@deriving yojson_of]
(** A list of scope selector requirements by scope of the resources. *)

type kubernetes_resource_quota_v1__spec__scope_selector = {
  match_expression :
    kubernetes_resource_quota_v1__spec__scope_selector__match_expression
    list;
}
[@@deriving yojson_of]
(** A collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched. *)

type kubernetes_resource_quota_v1__spec = {
  hard : (string * string) list option; [@option]
      (** The set of desired hard limits for each named resource. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota *)
  scopes : string list option; [@option]
      (** A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects. *)
  scope_selector :
    kubernetes_resource_quota_v1__spec__scope_selector list;
}
[@@deriving yojson_of]
(** Spec defines the desired quota. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_resource_quota_v1__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** kubernetes_resource_quota_v1__timeouts *)

type kubernetes_resource_quota_v1 = {
  id : string option; [@option]  (** id *)
  metadata : kubernetes_resource_quota_v1__metadata list;
  spec : kubernetes_resource_quota_v1__spec list;
  timeouts : kubernetes_resource_quota_v1__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_resource_quota_v1 *)

let kubernetes_resource_quota_v1 ?id ?timeouts ~metadata ~spec
    __resource_id =
  let __resource_type = "kubernetes_resource_quota_v1" in
  let __resource = { id; metadata; spec; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_resource_quota_v1 __resource);
  ()
