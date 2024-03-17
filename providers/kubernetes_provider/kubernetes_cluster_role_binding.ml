(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_cluster_role_binding__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the clusterRoleBinding that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the clusterRoleBinding. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the clusterRoleBinding, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this clusterRoleBinding that can be used by clients to determine when clusterRoleBinding has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this clusterRoleBinding. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard clusterRoleBinding's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_cluster_role_binding__role_ref = {
  api_group : string prop;
      (** The API group of the user. The only value possible at the moment is `rbac.authorization.k8s.io`. *)
  kind : string prop;  (** The kind of resource. *)
  name : string prop;  (** The name of the User to bind to. *)
}
[@@deriving yojson_of]
(** RoleRef references the Cluster Role for this binding *)

type kubernetes_cluster_role_binding__subject = {
  api_group : string prop option; [@option]
      (** The API group of the subject resource. *)
  kind : string prop;  (** The kind of resource. *)
  name : string prop;  (** The name of the resource to bind to. *)
  namespace : string prop option; [@option]
      (** The Namespace of the subject resource. *)
}
[@@deriving yojson_of]
(** Subjects defines the entities to bind a ClusterRole to. *)

type kubernetes_cluster_role_binding = {
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_cluster_role_binding__metadata list;
  role_ref : kubernetes_cluster_role_binding__role_ref list;
  subject : kubernetes_cluster_role_binding__subject list;
}
[@@deriving yojson_of]
(** kubernetes_cluster_role_binding *)

let kubernetes_cluster_role_binding ?id ~metadata ~role_ref ~subject
    __resource_id =
  let __resource_type = "kubernetes_cluster_role_binding" in
  let __resource = { id; metadata; role_ref; subject } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_cluster_role_binding __resource);
  ()
