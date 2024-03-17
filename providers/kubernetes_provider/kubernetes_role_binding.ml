(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_role_binding__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the roleBinding that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the roleBinding. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the roleBinding, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the roleBinding must be unique. *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this roleBinding that can be used by clients to determine when roleBinding has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this roleBinding. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard roleBinding's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_role_binding__role_ref = {
  api_group : string prop;
      (** The API group of the user. The only value possible at the moment is `rbac.authorization.k8s.io`. *)
  kind : string prop;  (** The kind of resource. *)
  name : string prop;  (** The name of the User to bind to. *)
}
[@@deriving yojson_of]
(** RoleRef references the Role for this binding *)

type kubernetes_role_binding__subject = {
  api_group : string prop option; [@option]
      (** The API group of the subject resource. *)
  kind : string prop;  (** The kind of resource. *)
  name : string prop;  (** The name of the resource to bind to. *)
  namespace : string prop option; [@option]
      (** The Namespace of the subject resource. *)
}
[@@deriving yojson_of]
(** Subjects defines the entities to bind a Role to. *)

type kubernetes_role_binding = {
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_role_binding__metadata list;
  role_ref : kubernetes_role_binding__role_ref list;
  subject : kubernetes_role_binding__subject list;
}
[@@deriving yojson_of]
(** kubernetes_role_binding *)

type t = { id : string prop }

let kubernetes_role_binding ?id ~metadata ~role_ref ~subject
    __resource_id =
  let __resource_type = "kubernetes_role_binding" in
  let __resource =
    ({ id; metadata; role_ref; subject } : kubernetes_role_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_role_binding __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
