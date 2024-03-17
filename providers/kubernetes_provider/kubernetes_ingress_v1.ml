(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_ingress_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the ingress that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the ingress. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the ingress, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the ingress must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this ingress that can be used by clients to determine when ingress has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this ingress. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard ingress's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_ingress_v1__spec__default_backend__resource = {
  api_group : string;
      (** APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required. *)
  kind : string;  (** The kind of resource. *)
  name : string;  (** The name of the User to bind to. *)
}
[@@deriving yojson_of]
(** Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. *)

type kubernetes_ingress_v1__spec__default_backend__service__port = {
  name : string option; [@option]
      (** Specifies the name of the port of the referenced service. *)
  number : float option; [@option]
      (** Specifies the numerical port of the referenced service. *)
}
[@@deriving yojson_of]
(** Specifies the port of the referenced service. *)

type kubernetes_ingress_v1__spec__default_backend__service = {
  name : string;
      (** Specifies the name of the referenced service. *)
  port :
    kubernetes_ingress_v1__spec__default_backend__service__port list;
}
[@@deriving yojson_of]
(** kubernetes_ingress_v1__spec__default_backend__service *)

type kubernetes_ingress_v1__spec__default_backend = {
  resource :
    kubernetes_ingress_v1__spec__default_backend__resource list;
  service :
    kubernetes_ingress_v1__spec__default_backend__service list;
}
[@@deriving yojson_of]
(** A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default. *)

type kubernetes_ingress_v1__spec__rule__http__path__backend__resource = {
  api_group : string;
      (** APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required. *)
  kind : string;  (** The kind of resource. *)
  name : string;  (** The name of the User to bind to. *)
}
[@@deriving yojson_of]
(** Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. *)

type kubernetes_ingress_v1__spec__rule__http__path__backend__service__port = {
  name : string option; [@option]
      (** Specifies the name of the port of the referenced service. *)
  number : float option; [@option]
      (** Specifies the numerical port of the referenced service. *)
}
[@@deriving yojson_of]
(** Specifies the port of the referenced service. *)

type kubernetes_ingress_v1__spec__rule__http__path__backend__service = {
  name : string;
      (** Specifies the name of the referenced service. *)
  port :
    kubernetes_ingress_v1__spec__rule__http__path__backend__service__port
    list;
}
[@@deriving yojson_of]
(** kubernetes_ingress_v1__spec__rule__http__path__backend__service *)

type kubernetes_ingress_v1__spec__rule__http__path__backend = {
  resource :
    kubernetes_ingress_v1__spec__rule__http__path__backend__resource
    list;
  service :
    kubernetes_ingress_v1__spec__rule__http__path__backend__service
    list;
}
[@@deriving yojson_of]
(** Backend defines the referenced service endpoint to which the traffic will be forwarded to. *)

type kubernetes_ingress_v1__spec__rule__http__path = {
  path : string option; [@option]
      (** path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional path part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value Exact or Prefix. *)
  path_type : string option; [@option]
      (** pathType determines the interpretation of the path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  done on a path element by element basis. A path element refers is the
  list of labels in the path split by the '/' separator. A request is a
  match for path p if every p is an element-wise prefix of p of the
  request path. Note that if the last element of the path is a substring
  of the last element in request path, it is not a match (e.g. /foo/bar
  matches /foo/bar/baz, but does not match /foo/barbaz).
* ImplementationSpecific: Interpretation of the Path matching is up to
  the IngressClass. Implementations can treat this as a separate PathType
  or treat it identically to Prefix or Exact path types.
Implementations are required to support all path types. *)
  backend :
    kubernetes_ingress_v1__spec__rule__http__path__backend list;
}
[@@deriving yojson_of]
(** kubernetes_ingress_v1__spec__rule__http__path *)

type kubernetes_ingress_v1__spec__rule__http = {
  path : kubernetes_ingress_v1__spec__rule__http__path list;
}
[@@deriving yojson_of]
(** http is a list of http selectors pointing to backends. In the example: http:///? -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'. *)

type kubernetes_ingress_v1__spec__rule = {
  host : string option; [@option]
      (** host is the fully qualified domain name of a network host, as defined by RFC 3986. Note the following deviations from the host part of the URI as defined in RFC 3986: 1. IPs are not allowed. Currently an IngressRuleValue can only apply to
   the IP in the Spec of the parent Ingress.
2. The `:` delimiter is not respected because ports are not allowed.
	  Currently the port of an Ingress is implicitly :80 for http and
	  :443 for https.
Both these may change in the future. Incoming requests are matched against the host before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic based on the specified IngressRuleValue.

host can be precise which is a domain name without the terminating dot of a network host (e.g. foo.bar.com) or wildcard, which is a domain name prefixed with a single wildcard label (e.g. *.foo.com). The wildcard character '*' must appear by itself as the first DNS label and matches only a single label. You cannot have a wildcard label by itself (e.g. Host == \*\). Requests will be matched against the Host field in the following way: 1. If host is precise, the request matches this rule if the http host header is equal to Host. 2. If host is a wildcard, then the request matches this rule if the http host header is to equal to the suffix (removing the first label) of the wildcard rule. *)
  http : kubernetes_ingress_v1__spec__rule__http list;
}
[@@deriving yojson_of]
(** kubernetes_ingress_v1__spec__rule *)

type kubernetes_ingress_v1__spec__tls = {
  hosts : string list option; [@option]
      (** hosts is a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified. *)
  secret_name : string option; [@option]
      (** secretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the Host header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing. *)
}
[@@deriving yojson_of]
(** tls represents the TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI. *)

type kubernetes_ingress_v1__spec = {
  ingress_class_name : string option; [@option]
      (** ingressClassName is the name of an IngressClass cluster resource. Ingress controller implementations use this field to know whether they should be serving this Ingress resource, by a transitive connection (controller -> IngressClass -> Ingress resource). Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never formally defined, it was widely supported by Ingress controllers to create a direct binding between Ingress controller and Ingress resources. Newly created Ingress resources should prefer using the field. However, even though the annotation is officially deprecated, for backwards compatibility reasons, ingress controllers should still honor that annotation if present. *)
  default_backend :
    kubernetes_ingress_v1__spec__default_backend list;
  rule : kubernetes_ingress_v1__spec__rule list;
  tls : kubernetes_ingress_v1__spec__tls list;
}
[@@deriving yojson_of]
(** spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_ingress_v1__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** kubernetes_ingress_v1__timeouts *)

type kubernetes_ingress_v1__status__load_balancer__ingress = {
  hostname : string;  (** hostname *)
  ip : string;  (** ip *)
}
[@@deriving yojson_of]

type kubernetes_ingress_v1__status__load_balancer = {
  ingress :
    kubernetes_ingress_v1__status__load_balancer__ingress list;
      (** ingress *)
}
[@@deriving yojson_of]

type kubernetes_ingress_v1__status = {
  load_balancer : kubernetes_ingress_v1__status__load_balancer list;
      (** load_balancer *)
}
[@@deriving yojson_of]

type kubernetes_ingress_v1 = {
  id : string option; [@option]  (** id *)
  wait_for_load_balancer : bool option; [@option]
      (** Terraform will wait for the load balancer to have at least 1 endpoint before considering the resource created. *)
  metadata : kubernetes_ingress_v1__metadata list;
  spec : kubernetes_ingress_v1__spec list;
  timeouts : kubernetes_ingress_v1__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_ingress_v1 *)

let kubernetes_ingress_v1 ?id ?wait_for_load_balancer ?timeouts
    ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_ingress_v1" in
  let __resource =
    { id; wait_for_load_balancer; metadata; spec; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_ingress_v1 __resource);
  ()
