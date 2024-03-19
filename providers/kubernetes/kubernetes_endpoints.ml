(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the endpoints that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the endpoints. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the endpoints, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the endpoints must be unique. *)
}
[@@deriving yojson_of]
(** Standard endpoints's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type subset__address = {
  hostname : string prop option; [@option]
      (** The Hostname of this endpoint. *)
  ip : string prop;
      (** The IP of this endpoint. May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). *)
  node_name : string prop option; [@option]
      (** Node hosting this endpoint. This can be used to determine endpoints local to a node. *)
}
[@@deriving yojson_of]
(** IP address which offers the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize. *)

type subset__not_ready_address = {
  hostname : string prop option; [@option]
      (** The Hostname of this endpoint. *)
  ip : string prop;
      (** The IP of this endpoint. May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). *)
  node_name : string prop option; [@option]
      (** Node hosting this endpoint. This can be used to determine endpoints local to a node. *)
}
[@@deriving yojson_of]
(** IP address which offers the related ports but is not currently marked as ready because it have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check. *)

type subset__port = {
  name : string prop option; [@option]
      (** The name of this port within the endpoint. Must be a DNS_LABEL. Optional if only one Port is defined on this endpoint. *)
  port : float prop;
      (** The port that will be exposed by this endpoint. *)
  protocol : string prop option; [@option]
      (** The IP protocol for this port. Supports `TCP` and `UDP`. Default is `TCP`. *)
}
[@@deriving yojson_of]
(** Port number available on the related IP addresses. *)

type subset = {
  address : subset__address list;
  not_ready_address : subset__not_ready_address list;
  port : subset__port list;
}
[@@deriving yojson_of]
(** Set of addresses and ports that comprise a service. More info: https://kubernetes.io/docs/concepts/services-networking/service/#services-without-selectors *)

type kubernetes_endpoints = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  subset : subset list;
}
[@@deriving yojson_of]
(** kubernetes_endpoints *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let subset__address ?hostname ?node_name ~ip () : subset__address =
  { hostname; ip; node_name }

let subset__not_ready_address ?hostname ?node_name ~ip () :
    subset__not_ready_address =
  { hostname; ip; node_name }

let subset__port ?name ?protocol ~port () : subset__port =
  { name; port; protocol }

let subset ~address ~not_ready_address ~port () : subset =
  { address; not_ready_address; port }

let kubernetes_endpoints ?id ~metadata ~subset () :
    kubernetes_endpoints =
  { id; metadata; subset }

type t = { id : string prop }

let register ?tf_module ?id ~metadata ~subset __resource_id =
  let __resource_type = "kubernetes_endpoints" in
  let __resource = kubernetes_endpoints ?id ~metadata ~subset () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_endpoints __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
