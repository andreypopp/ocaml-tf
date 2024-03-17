(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_service__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the service that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the service. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the service, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the service must be unique. *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this service that can be used by clients to determine when service has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this service. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard service's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_service__spec__port = {
  app_protocol : string prop option; [@option]
      (** The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. *)
  name : string prop option; [@option]
      (** The name of this port within the service. All ports within the service must have unique names. Optional if only one ServicePort is defined on this service. *)
  node_port : float prop option; [@option]
      (** The port on each node on which this service is exposed when `type` is `NodePort` or `LoadBalancer`. Usually assigned by the system. If specified, it will be allocated to the service if unused or else creation of the service will fail. Default is to auto-allocate a port if the `type` of this service requires one. More info: https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport *)
  port : float prop;
      (** The port that will be exposed by this service. *)
  protocol : string prop option; [@option]
      (** The IP protocol for this port. Supports `TCP` and `UDP`. Default is `TCP`. *)
  target_port : string prop option; [@option]
      (** Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. This field is ignored for services with `cluster_ip = None`. More info: https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service *)
}
[@@deriving yojson_of]
(** The list of ports that are exposed by this service. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies *)

type kubernetes_service__spec__session_affinity_config__client_ip = {
  timeout_seconds : float prop option; [@option]
      (** Specifies the seconds of `ClientIP` type session sticky time. The value must be > 0 and <= 86400(for 1 day) if `ServiceAffinity` == `ClientIP`. *)
}
[@@deriving yojson_of]
(** Contains the configurations of Client IP based session affinity. *)

type kubernetes_service__spec__session_affinity_config = {
  client_ip :
    kubernetes_service__spec__session_affinity_config__client_ip list;
}
[@@deriving yojson_of]
(** Contains the configurations of session affinity. More info: https://kubernetes.io/docs/concepts/services-networking/service/#proxy-mode-ipvs *)

type kubernetes_service__spec = {
  allocate_load_balancer_node_ports : bool prop option; [@option]
      (** Defines if `NodePorts` will be automatically allocated for services with type `LoadBalancer`. It may be set to `false` if the cluster load-balancer does not rely on `NodePorts`.  If the caller requests specific `NodePorts` (by specifying a value), those requests will be respected, regardless of this field. This field may only be set for services with type `LoadBalancer`. Default is `true`. More info: https://kubernetes.io/docs/concepts/services-networking/service/#load-balancer-nodeport-allocation *)
  cluster_ip : string prop option; [@option]
      (** The IP address of the service. It is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. `None` can be specified for headless services when proxying is not required. Ignored if type is `ExternalName`. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies *)
  cluster_ips : string prop list option; [@option]
      (** List of IP addresses assigned to this service, and are usually assigned randomly. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise creation of the service will fail. If this field is not specified, it will be initialized from the `clusterIP` field. If this field is specified, clients must ensure that `clusterIPs[0]` and `clusterIP` have the same value. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies *)
  external_ips : string prop list option; [@option]
      (** A list of IP addresses for which nodes in the cluster will also accept traffic for this service. These IPs are not managed by Kubernetes. The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system. *)
  external_name : string prop option; [@option]
      (** The external reference that kubedns or equivalent will return as a CNAME record for this service. No proxying will be involved. Must be a valid DNS name and requires `type` to be `ExternalName`. *)
  external_traffic_policy : string prop option; [@option]
      (** Denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. `Local` preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. `Cluster` obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading. More info: https://kubernetes.io/docs/tutorials/services/source-ip/ *)
  health_check_node_port : float prop option; [@option]
      (** Specifies the Healthcheck NodePort for the service. Only effects when type is set to `LoadBalancer` and external_traffic_policy is set to `Local`. *)
  internal_traffic_policy : string prop option; [@option]
      (** Specifies if the cluster internal traffic should be routed to all endpoints or node-local endpoints only. `Cluster` routes internal traffic to a Service to all endpoints. `Local` routes traffic to node-local endpoints only, traffic is dropped if no node-local endpoints are ready. The default value is `Cluster`. *)
  ip_families : string prop list option; [@option]
      (** IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service. This field is usually assigned automatically based on cluster configuration and the ipFamilyPolicy field. If this field is specified manually, the requested family is available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise creation of the service will fail. This field is conditionally mutable: it allows for adding or removing a secondary IP family, but it does not allow changing the primary IP family of the Service. *)
  ip_family_policy : string prop option; [@option]
      (** IPFamilyPolicy represents the dual-stack-ness requested or required by this Service. If there is no value provided, then this field will be set to SingleStack. Services can be 'SingleStack' (a single IP family), 'PreferDualStack' (two IP families on dual-stack configured clusters or a single IP family on single-stack clusters), or 'RequireDualStack' (two IP families on dual-stack configured clusters, otherwise fail). The ipFamilies and clusterIPs fields depend on the value of this field. *)
  load_balancer_class : string prop option; [@option]
      (** The class of the load balancer implementation this Service belongs to. If specified, the value of this field must be a label-style identifier, with an optional prefix. This field can only be set when the Service type is `LoadBalancer`. If not set, the default load balancer implementation is used. This field can only be set when creating or updating a Service to type `LoadBalancer`. More info: https://kubernetes.io/docs/concepts/services-networking/service/#load-balancer-class *)
  load_balancer_ip : string prop option; [@option]
      (** Only applies to `type = LoadBalancer`. LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying this field when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature. *)
  load_balancer_source_ranges : string prop list option; [@option]
      (** If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature. More info: http://kubernetes.io/docs/user-guide/services-firewalls *)
  publish_not_ready_addresses : bool prop option; [@option]
      (** When set to true, indicates that DNS implementations must publish the `notReadyAddresses` of subsets for the Endpoints associated with the Service. The default value is `false`. The primary use case for setting this field is to use a StatefulSet's Headless Service to propagate `SRV` records for its Pods without respect to their readiness for purpose of peer discovery. *)
  selector : (string * string prop) list option; [@option]
      (** Route service traffic to pods with label keys and values matching this selector. Only applies to types `ClusterIP`, `NodePort`, and `LoadBalancer`. More info: https://kubernetes.io/docs/concepts/services-networking/service/ *)
  session_affinity : string prop option; [@option]
      (** Used to maintain session affinity. Supports `ClientIP` and `None`. Defaults to `None`. More info: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies *)
  type_ : string prop option; [@option] [@key "type"]
      (** Determines how the service is exposed. Defaults to `ClusterIP`. Valid options are `ExternalName`, `ClusterIP`, `NodePort`, and `LoadBalancer`. `ExternalName` maps to the specified `external_name`. More info: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types *)
  port : kubernetes_service__spec__port list;
  session_affinity_config :
    kubernetes_service__spec__session_affinity_config list;
}
[@@deriving yojson_of]
(** Spec defines the behavior of a service. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_service__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** kubernetes_service__timeouts *)

type kubernetes_service__status__load_balancer__ingress = {
  hostname : string prop;  (** hostname *)
  ip : string prop;  (** ip *)
}
[@@deriving yojson_of]

type kubernetes_service__status__load_balancer = {
  ingress : kubernetes_service__status__load_balancer__ingress list;
      (** ingress *)
}
[@@deriving yojson_of]

type kubernetes_service__status = {
  load_balancer : kubernetes_service__status__load_balancer list;
      (** load_balancer *)
}
[@@deriving yojson_of]

type kubernetes_service = {
  id : string prop option; [@option]  (** id *)
  wait_for_load_balancer : bool prop option; [@option]
      (** Terraform will wait for the load balancer to have at least 1 endpoint before considering the resource created. *)
  metadata : kubernetes_service__metadata list;
  spec : kubernetes_service__spec list;
  timeouts : kubernetes_service__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_service *)

let kubernetes_service ?id ?wait_for_load_balancer ?timeouts
    ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_service" in
  let __resource =
    { id; wait_for_load_balancer; metadata; spec; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_service __resource);
  ()
