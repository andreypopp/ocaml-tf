(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_csi_driver_v1__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the csi driver that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the csi driver. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the csi driver, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this csi driver that can be used by clients to determine when csi driver has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this csi driver. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard csi driver's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_csi_driver_v1__spec = {
  attach_required : bool prop;
      (** Indicates if the CSI volume driver requires an attach operation *)
  pod_info_on_mount : bool prop option; [@option]
      (** Indicates that the CSI volume driver requires additional pod information (like podName, podUID, etc.) during mount operations *)
  volume_lifecycle_modes : string prop list option; [@option]
      (** Defines what kind of volumes this CSI volume driver supports *)
}
[@@deriving yojson_of]
(** Spec of the CSIDriver *)

type kubernetes_csi_driver_v1 = {
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_csi_driver_v1__metadata list;
  spec : kubernetes_csi_driver_v1__spec list;
}
[@@deriving yojson_of]
(** kubernetes_csi_driver_v1 *)

let kubernetes_csi_driver_v1 ?id ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_csi_driver_v1" in
  let __resource = { id; metadata; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_csi_driver_v1 __resource);
  ()
