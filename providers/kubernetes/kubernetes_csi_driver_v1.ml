(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the csi driver that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the csi driver. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the csi driver, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Standard csi driver's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec = {
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
  metadata : metadata list;
  spec : spec list;
}
[@@deriving yojson_of]
(** kubernetes_csi_driver_v1 *)

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let spec ?pod_info_on_mount ?volume_lifecycle_modes ~attach_required
    () : spec =
  { attach_required; pod_info_on_mount; volume_lifecycle_modes }

let kubernetes_csi_driver_v1 ?id ~metadata ~spec () :
    kubernetes_csi_driver_v1 =
  { id; metadata; spec }

type t = { id : string prop }

let register ?tf_module ?id ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_csi_driver_v1" in
  let __resource = kubernetes_csi_driver_v1 ?id ~metadata ~spec () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_csi_driver_v1 __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
