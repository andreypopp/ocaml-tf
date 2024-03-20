(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the ingress_class_v1 that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the ingress_class_v1. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the ingress_class_v1, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Standard ingress_class_v1's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec__parameters = {
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
(** spec__parameters *)

type spec = {
  controller : string prop option; [@option]
      (** controller refers to the name of the controller that should handle this class. This allows for different flavors that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. acme.io/ingress-controller. This field is immutable. *)
  parameters : spec__parameters list;
}
[@@deriving yojson_of]
(** spec is the desired state of the IngressClass. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_ingress_class_v1 = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  spec : spec list;
}
[@@deriving yojson_of]
(** kubernetes_ingress_class_v1 *)

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let spec__parameters ?api_group ?namespace ?scope ~kind ~name () :
    spec__parameters =
  { api_group; kind; name; namespace; scope }

let spec ?controller ~parameters () : spec =
  { controller; parameters }

let kubernetes_ingress_class_v1 ?id ~metadata ~spec () :
    kubernetes_ingress_class_v1 =
  { id; metadata; spec }

type t = { id : string prop }

let make ?id ~metadata ~spec __id =
  let __type = "kubernetes_ingress_class_v1" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_ingress_class_v1
        (kubernetes_ingress_class_v1 ?id ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~spec __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~spec __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
