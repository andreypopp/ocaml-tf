(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_endpoint_slice_v1__endpoint__condition = {
  ready : bool option; [@option]
      (** ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. *)
  serving : bool option; [@option]
      (** serving is identical to ready except that it is set regardless of the terminating state of endpoints. *)
  terminating : bool option; [@option]
      (** terminating indicates that this endpoint is terminating. *)
}
[@@deriving yojson_of]
(** condition contains information about the current status of the endpoint. *)

type kubernetes_endpoint_slice_v1__endpoint__target_ref = {
  field_path : string option; [@option]
      (** If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. *)
  name : string;  (** Name of the referent. *)
  namespace : string option; [@option]
      (** Namespace of the referent. *)
  resource_version : string option; [@option]
      (** Specific resourceVersion to which this reference is made, if any. *)
  uid : string option; [@option]
      (** If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. *)
}
[@@deriving yojson_of]
(** targetRef is a reference to a Kubernetes object that represents this endpoint. *)

type kubernetes_endpoint_slice_v1__endpoint = {
  addresses : string list;
      (** addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. *)
  hostname : string option; [@option]
      (** hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other. *)
  node_name : string option; [@option]
      (** nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. *)
  zone : string option; [@option]
      (** zone is the name of the Zone this endpoint exists in. *)
  condition : kubernetes_endpoint_slice_v1__endpoint__condition list;
  target_ref :
    kubernetes_endpoint_slice_v1__endpoint__target_ref list;
}
[@@deriving yojson_of]
(** endpoint is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints. *)

type kubernetes_endpoint_slice_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the endpoint_slice that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the endpoint_slice. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the endpoint_slice, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the endpoint_slice must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this endpoint_slice that can be used by clients to determine when endpoint_slice has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this endpoint_slice. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard endpoint_slice's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_endpoint_slice_v1__port = {
  app_protocol : string;
      (** The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. *)
  name : string option; [@option]
      (** name represents the name of this port. All ports in an EndpointSlice must have a unique name. *)
  port : string;
      (** port represents the port number of the endpoint. *)
  protocol : string option; [@option]
      (** protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP. *)
}
[@@deriving yojson_of]
(** port specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. Each slice may include a maximum of 100 ports. *)

type kubernetes_endpoint_slice_v1 = {
  address_type : string;
      (** address_type specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. *)
  endpoint : kubernetes_endpoint_slice_v1__endpoint list;
  metadata : kubernetes_endpoint_slice_v1__metadata list;
  port : kubernetes_endpoint_slice_v1__port list;
}
[@@deriving yojson_of]
(** kubernetes_endpoint_slice_v1 *)

let kubernetes_endpoint_slice_v1 ~address_type ~endpoint ~metadata
    ~port __resource_id =
  let __resource_type = "kubernetes_endpoint_slice_v1" in
  let __resource = { address_type; endpoint; metadata; port } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_endpoint_slice_v1 __resource);
  ()
