(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_ingress_class__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the ingress_class_v1 that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the ingress_class_v1. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the ingress_class_v1, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this ingress_class_v1 that can be used by clients to determine when ingress_class_v1 has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this ingress_class_v1. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard ingress_class_v1's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_ingress_class__spec__parameters = {
  api_group : string prop option; [@option]
      (** APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required. *)
  kind : string prop;
      (** Kind is the type of resource being referenced *)
  name : string prop;
      (** Name is the name of resource being referenced *)
  namespace : string prop option; [@option]  (** namespace *)
  scope : string prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** kubernetes_ingress_class__spec__parameters *)

type kubernetes_ingress_class__spec = {
  controller : string prop option; [@option]
      (** controller refers to the name of the controller that should handle this class. This allows for different flavors that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. acme.io/ingress-controller. This field is immutable. *)
  parameters : kubernetes_ingress_class__spec__parameters list;
}
[@@deriving yojson_of]
(** spec is the desired state of the IngressClass. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_ingress_class = {
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_ingress_class__metadata list;
  spec : kubernetes_ingress_class__spec list;
}
[@@deriving yojson_of]
(** kubernetes_ingress_class *)

type t = { id : string prop }

let kubernetes_ingress_class ?id ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_ingress_class" in
  let __resource =
    ({ id; metadata; spec } : kubernetes_ingress_class)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_ingress_class __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
