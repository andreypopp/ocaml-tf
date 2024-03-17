(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_resource_quota__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the resource quota that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the resource quota. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the resource quota, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the resource quota must be unique. *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this resource quota that can be used by clients to determine when resource quota has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this resource quota. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard resource quota's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_resource_quota__spec__scope_selector__match_expression = {
  operator : string prop;
      (** Represents a scope's relationship to a set of values. *)
  scope_name : string prop;
      (** The name of the scope that the selector applies to. *)
  values : string prop list option; [@option]
      (** A list of scope selector requirements by scope of the resources. *)
}
[@@deriving yojson_of]
(** A list of scope selector requirements by scope of the resources. *)

type kubernetes_resource_quota__spec__scope_selector = {
  match_expression :
    kubernetes_resource_quota__spec__scope_selector__match_expression
    list;
}
[@@deriving yojson_of]
(** A collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched. *)

type kubernetes_resource_quota__spec = {
  hard : (string * string prop) list option; [@option]
      (** The set of desired hard limits for each named resource. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota *)
  scopes : string prop list option; [@option]
      (** A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects. *)
  scope_selector :
    kubernetes_resource_quota__spec__scope_selector list;
}
[@@deriving yojson_of]
(** Spec defines the desired quota. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_resource_quota__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** kubernetes_resource_quota__timeouts *)

type kubernetes_resource_quota = {
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_resource_quota__metadata list;
  spec : kubernetes_resource_quota__spec list;
  timeouts : kubernetes_resource_quota__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_resource_quota *)

type t = { id : string prop }

let kubernetes_resource_quota ?id ?timeouts ~metadata ~spec
    __resource_id =
  let __resource_type = "kubernetes_resource_quota" in
  let __resource =
    ({ id; metadata; spec; timeouts } : kubernetes_resource_quota)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_resource_quota __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
