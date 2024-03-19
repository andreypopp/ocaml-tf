(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the resource quota that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the resource quota. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the resource quota, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the resource quota must be unique. *)
}
[@@deriving yojson_of]
(** Standard resource quota's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec__scope_selector__match_expression = {
  operator : string prop;
      (** Represents a scope's relationship to a set of values. *)
  scope_name : string prop;
      (** The name of the scope that the selector applies to. *)
  values : string prop list option; [@option]
      (** A list of scope selector requirements by scope of the resources. *)
}
[@@deriving yojson_of]
(** A list of scope selector requirements by scope of the resources. *)

type spec__scope_selector = {
  match_expression : spec__scope_selector__match_expression list;
}
[@@deriving yojson_of]
(** A collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched. *)

type spec = {
  hard : (string * string prop) list option; [@option]
      (** The set of desired hard limits for each named resource. More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota *)
  scopes : string prop list option; [@option]
      (** A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects. *)
  scope_selector : spec__scope_selector list;
}
[@@deriving yojson_of]
(** Spec defines the desired quota. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type kubernetes_resource_quota_v1 = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_resource_quota_v1 *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__scope_selector__match_expression ?values ~operator
    ~scope_name () : spec__scope_selector__match_expression =
  { operator; scope_name; values }

let spec__scope_selector ~match_expression () : spec__scope_selector
    =
  { match_expression }

let spec ?hard ?scopes ~scope_selector () : spec =
  { hard; scopes; scope_selector }

let timeouts ?create ?update () : timeouts = { create; update }

let kubernetes_resource_quota_v1 ?id ?timeouts ~metadata ~spec () :
    kubernetes_resource_quota_v1 =
  { id; metadata; spec; timeouts }

type t = { id : string prop }

let register ?tf_module ?id ?timeouts ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_resource_quota_v1" in
  let __resource =
    kubernetes_resource_quota_v1 ?id ?timeouts ~metadata ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_resource_quota_v1 __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
