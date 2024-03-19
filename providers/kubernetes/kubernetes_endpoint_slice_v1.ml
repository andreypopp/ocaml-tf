(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type endpoint__condition = {
  ready : bool prop option; [@option]
      (** ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. *)
  serving : bool prop option; [@option]
      (** serving is identical to ready except that it is set regardless of the terminating state of endpoints. *)
  terminating : bool prop option; [@option]
      (** terminating indicates that this endpoint is terminating. *)
}
[@@deriving yojson_of]
(** condition contains information about the current status of the endpoint. *)

type endpoint__target_ref = {
  field_path : string prop option; [@option]
      (** If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. *)
  name : string prop;  (** Name of the referent. *)
  namespace : string prop option; [@option]
      (** Namespace of the referent. *)
  resource_version : string prop option; [@option]
      (** Specific resourceVersion to which this reference is made, if any. *)
  uid : string prop option; [@option]
      (** If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. *)
}
[@@deriving yojson_of]
(** targetRef is a reference to a Kubernetes object that represents this endpoint. *)

type endpoint = {
  addresses : string prop list;
      (** addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. *)
  hostname : string prop option; [@option]
      (** hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other. *)
  node_name : string prop option; [@option]
      (** nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. *)
  zone : string prop option; [@option]
      (** zone is the name of the Zone this endpoint exists in. *)
  condition : endpoint__condition list;
  target_ref : endpoint__target_ref list;
}
[@@deriving yojson_of]
(** endpoint is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints. *)

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the endpoint_slice that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the endpoint_slice. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the endpoint_slice, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the endpoint_slice must be unique. *)
}
[@@deriving yojson_of]
(** Standard endpoint_slice's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type port = {
  app_protocol : string prop;
      (** The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. *)
  name : string prop option; [@option]
      (** name represents the name of this port. All ports in an EndpointSlice must have a unique name. *)
  port : string prop;
      (** port represents the port number of the endpoint. *)
  protocol : string prop option; [@option]
      (** protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP. *)
}
[@@deriving yojson_of]
(** port specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. Each slice may include a maximum of 100 ports. *)

type kubernetes_endpoint_slice_v1 = {
  address_type : string prop;
      (** address_type specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. *)
  id : string prop option; [@option]  (** id *)
  endpoint : endpoint list;
  metadata : metadata list;
  port : port list;
}
[@@deriving yojson_of]
(** kubernetes_endpoint_slice_v1 *)

let endpoint__condition ?ready ?serving ?terminating () :
    endpoint__condition =
  { ready; serving; terminating }

let endpoint__target_ref ?field_path ?namespace ?resource_version
    ?uid ~name () : endpoint__target_ref =
  { field_path; name; namespace; resource_version; uid }

let endpoint ?hostname ?node_name ?zone ~addresses ~condition
    ~target_ref () : endpoint =
  { addresses; hostname; node_name; zone; condition; target_ref }

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let port ?name ?protocol ~app_protocol ~port () : port =
  { app_protocol; name; port; protocol }

let kubernetes_endpoint_slice_v1 ?id ~address_type ~endpoint
    ~metadata ~port () : kubernetes_endpoint_slice_v1 =
  { address_type; id; endpoint; metadata; port }

type t = { address_type : string prop; id : string prop }

let register ?tf_module ?id ~address_type ~endpoint ~metadata ~port
    __resource_id =
  let __resource_type = "kubernetes_endpoint_slice_v1" in
  let __resource =
    kubernetes_endpoint_slice_v1 ?id ~address_type ~endpoint
      ~metadata ~port ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_endpoint_slice_v1 __resource);
  let __resource_attributes =
    ({
       address_type =
         Prop.computed __resource_type __resource_id "address_type";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
