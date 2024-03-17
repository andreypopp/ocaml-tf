(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_storage_class_v1__allowed_topologies__match_label_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  values : string prop list option; [@option]
      (** An array of string values. One value must match the label to be selected. *)
}
[@@deriving yojson_of]
(** A list of topology selector requirements by labels. *)

type kubernetes_storage_class_v1__allowed_topologies = {
  match_label_expressions :
    kubernetes_storage_class_v1__allowed_topologies__match_label_expressions
    list;
}
[@@deriving yojson_of]
(** Restrict the node topologies where volumes can be dynamically provisioned. *)

type kubernetes_storage_class_v1__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the storage class that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the storage class. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the storage class, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this storage class that can be used by clients to determine when storage class has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this storage class. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard storage class's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_storage_class_v1 = {
  allow_volume_expansion : bool prop option; [@option]
      (** Indicates whether the storage class allow volume expand *)
  id : string prop option; [@option]  (** id *)
  mount_options : string prop list option; [@option]
      (** Persistent Volumes that are dynamically created by a storage class will have the mount options specified *)
  parameters : (string * string prop) list option; [@option]
      (** The parameters for the provisioner that should create volumes of this storage class *)
  reclaim_policy : string prop option; [@option]
      (** Indicates the type of the reclaim policy *)
  storage_provisioner : string prop;
      (** Indicates the type of the provisioner *)
  volume_binding_mode : string prop option; [@option]
      (** Indicates when volume binding and dynamic provisioning should occur *)
  allowed_topologies :
    kubernetes_storage_class_v1__allowed_topologies list;
  metadata : kubernetes_storage_class_v1__metadata list;
}
[@@deriving yojson_of]
(** kubernetes_storage_class_v1 *)

let kubernetes_storage_class_v1 ?allow_volume_expansion ?id
    ?mount_options ?parameters ?reclaim_policy ?volume_binding_mode
    ~storage_provisioner ~allowed_topologies ~metadata __resource_id
    =
  let __resource_type = "kubernetes_storage_class_v1" in
  let __resource =
    {
      allow_volume_expansion;
      id;
      mount_options;
      parameters;
      reclaim_policy;
      storage_provisioner;
      volume_binding_mode;
      allowed_topologies;
      metadata;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_storage_class_v1 __resource);
  ()
