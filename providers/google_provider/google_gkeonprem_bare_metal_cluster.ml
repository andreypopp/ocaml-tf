(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gkeonprem_bare_metal_cluster__binary_authorization = {
  evaluation_mode : string option; [@option]
      (** Mode of operation for binauthz policy evaluation. If unspecified,
defaults to DISABLED. Possible values: [DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE] *)
}
[@@deriving yojson_of]
(** Binary Authorization related configurations. *)

type google_gkeonprem_bare_metal_cluster__cluster_operations = {
  enable_application_logs : bool option; [@option]
      (** Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics). *)
}
[@@deriving yojson_of]
(** Specifies the User Cluster's observability infrastructure. *)

type google_gkeonprem_bare_metal_cluster__control_plane__api_server_args = {
  argument : string;
      (** The argument name as it appears on the API Server command line please make sure to remove the leading dashes. *)
  value : string;
      (** The value of the arg as it will be passed to the API Server command line. *)
}
[@@deriving yojson_of]
(** Customizes the default API server args. Only a subset of
customized flags are supported. Please refer to the API server
documentation below to know the exact format:
https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/ *)

type google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it's best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  node_ip : string option; [@option]
      (** The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 *)
}
[@@deriving yojson_of]
(** The list of machine addresses in the Bare Metal Node Pool. *)

type google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config__taints = {
  effect : string option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string option; [@option]
      (** Key associated with the effect. *)
  value : string option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config = {
  labels : (string * string) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it's best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  operating_system : string option; [@option]
      (** Specifies the nodes operating system (default: LINUX). *)
  node_configs :
    google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    list;
  taints :
    google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config__taints
    list;
}
[@@deriving yojson_of]
(** The generic configuration for a node pool running the control plane. *)

type google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config = {
  node_pool_config :
    google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config__node_pool_config
    list;
}
[@@deriving yojson_of]
(** Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster. *)

type google_gkeonprem_bare_metal_cluster__control_plane = {
  api_server_args :
    google_gkeonprem_bare_metal_cluster__control_plane__api_server_args
    list;
  control_plane_node_pool_config :
    google_gkeonprem_bare_metal_cluster__control_plane__control_plane_node_pool_config
    list;
}
[@@deriving yojson_of]
(** Specifies the control plane configuration. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__address_pools = {
  addresses : string list;
      (** The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5). *)
  avoid_buggy_ips : bool option; [@option]
      (** If true, avoid using IPs ending in .0 or .255.
This avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses. *)
  manual_assign : string option; [@option]
      (** If true, prevent IP addresses from being automatically assigned. *)
  pool : string;  (** The name of the address pool. *)
}
[@@deriving yojson_of]
(** AddressPools is a list of non-overlapping IP pools used by load balancer
typed services. All addresses must be routable to load balancer nodes.
IngressVIP must be included in the pools. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__bgp_peer_configs = {
  asn : float;
      (** BGP autonomous system number (ASN) for the network that contains the
external peer device. *)
  control_plane_nodes : string list option; [@option]
      (** The IP address of the control plane node that connects to the external
peer.
If you don't specify any control plane nodes, all control plane nodes
can connect to the external peer. If you specify one or more IP addresses,
only the nodes specified participate in peering sessions. *)
  ip_address : string;
      (** The IP address of the external peer device. *)
}
[@@deriving yojson_of]
(** The list of BGP peers that the cluster will connect to.
At least one peer must be configured for each control plane node.
Control plane nodes will connect to these peers to advertise the control
plane VIP. The Services load balancer also uses these peers by default.
This field can be updated after cluster creation. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config = {
  registry_burst : float option; [@option]
      (** The maximum size of bursty pulls, temporarily allows pulls to burst to this
number, while still not exceeding registry_pull_qps.
The value must not be a negative number.
Updating this field may impact scalability by changing the amount of
traffic produced by image pulls.
Defaults to 10. *)
  registry_pull_qps : float option; [@option]
      (** The limit of registry pulls per second.
Setting this value to 0 means no limit.
Updating this field may impact scalability by changing the amount of
traffic produced by image pulls.
Defaults to 5. *)
  serialize_image_pulls_disabled : bool option; [@option]
      (** Prevents the Kubelet from pulling multiple images at a time.
We recommend *not* changing the default value on nodes that run docker
daemon with version  < 1.9 or an Another Union File System (Aufs) storage
backend. Issue https://github.com/kubernetes/kubernetes/issues/10959 has
more details. *)
}
[@@deriving yojson_of]
(** The modifiable kubelet configurations for the baremetal machines. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it's best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  node_ip : string option; [@option]
      (** The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 *)
}
[@@deriving yojson_of]
(** The list of machine addresses in the Bare Metal Node Pool. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints = {
  effect : string option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string option; [@option]
      (** Key associated with the effect. *)
  value : string option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config = {
  labels : (string * string) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it's best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  operating_system : string option; [@option]
      (** Specifies the nodes operating system (default: LINUX). *)
  kubelet_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config
    list;
  node_configs :
    google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    list;
  taints :
    google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    list;
}
[@@deriving yojson_of]
(** The generic configuration for a node pool running a load balancer. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config = {
  node_pool_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config
    list;
}
[@@deriving yojson_of]
(** Specifies the node pool running data plane load balancing. L2 connectivity
is required among nodes in this pool. If missing, the control plane node
pool is used for data plane load balancing. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config = {
  asn : float;
      (** BGP autonomous system number (ASN) of the cluster.
This field can be updated after cluster creation. *)
  address_pools :
    google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__address_pools
    list;
  bgp_peer_configs :
    google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__bgp_peer_configs
    list;
  load_balancer_node_pool_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config__load_balancer_node_pool_config
    list;
}
[@@deriving yojson_of]
(** Configuration for BGP typed load balancers. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__manual_lb_config = {
  enabled : bool;  (** Whether manual load balancing is enabled. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__address_pools = {
  addresses : string list;
      (** The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5). *)
  avoid_buggy_ips : bool option; [@option]
      (** If true, avoid using IPs ending in .0 or .255.
This avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses. *)
  manual_assign : bool option; [@option]
      (** If true, prevent IP addresses from being automatically assigned. *)
  pool : string;  (** The name of the address pool. *)
}
[@@deriving yojson_of]
(** AddressPools is a list of non-overlapping IP pools used by load balancer
typed services. All addresses must be routable to load balancer nodes.
IngressVIP must be included in the pools. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it's best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  node_ip : string option; [@option]
      (** The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 *)
}
[@@deriving yojson_of]
(** The list of machine addresses in the Bare Metal Node Pool. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints = {
  effect : string option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string option; [@option]
      (** Key associated with the effect. *)
  value : string option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config = {
  labels : (string * string) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to
each node. These will added in addition to any default label(s)
that Kubernetes may apply to the node. In case of conflict in
label keys, the applied set may differ depending on the Kubernetes
version -- it's best to assume the behavior is undefined and
conflicts should be avoided. For more information, including usage
and the valid values, see:
  http://kubernetes.io/v1.1/docs/user-guide/labels.html
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  operating_system : string option; [@option]
      (** Specifies the nodes operating system (default: LINUX). *)
  node_configs :
    google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    list;
  taints :
    google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    list;
}
[@@deriving yojson_of]
(** The generic configuration for a node pool running a load balancer. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config = {
  node_pool_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config
    list;
}
[@@deriving yojson_of]
(** Specifies the load balancer's node pool configuration. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config = {
  address_pools :
    google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__address_pools
    list;
  load_balancer_node_pool_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config__load_balancer_node_pool_config
    list;
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_gkeonprem_bare_metal_cluster__load_balancer__port_config = {
  control_plane_load_balancer_port : float;
      (** The port that control plane hosted load balancers will listen on. *)
}
[@@deriving yojson_of]
(** Specifies the load balancer ports. *)

type google_gkeonprem_bare_metal_cluster__load_balancer__vip_config = {
  control_plane_vip : string;
      (** The VIP which you previously set aside for the Kubernetes API of this Bare Metal User Cluster. *)
  ingress_vip : string;
      (** The VIP which you previously set aside for ingress traffic into this Bare Metal User Cluster. *)
}
[@@deriving yojson_of]
(** Specified the Bare Metal Load Balancer Config *)

type google_gkeonprem_bare_metal_cluster__load_balancer = {
  bgp_lb_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__bgp_lb_config
    list;
  manual_lb_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__manual_lb_config
    list;
  metal_lb_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__metal_lb_config
    list;
  port_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__port_config
    list;
  vip_config :
    google_gkeonprem_bare_metal_cluster__load_balancer__vip_config
    list;
}
[@@deriving yojson_of]
(** Specifies the load balancer configuration. *)

type google_gkeonprem_bare_metal_cluster__maintenance_config = {
  maintenance_address_cidr_blocks : string list;
      (** All IPv4 address from these ranges will be placed into maintenance mode.
Nodes in maintenance mode will be cordoned and drained. When both of these
are true, the baremetal.cluster.gke.io/maintenance annotation will be set
on the node resource. *)
}
[@@deriving yojson_of]
(** Specifies the workload node configurations. *)

type google_gkeonprem_bare_metal_cluster__network_config__island_mode_cidr = {
  pod_address_cidr_blocks : string list;
      (** All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation. *)
  service_address_cidr_blocks : string list;
      (** All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_gkeonprem_bare_metal_cluster__network_config__multiple_network_interfaces_config = {
  enabled : bool option; [@option]
      (** Whether to enable multiple network interfaces for your pods.
When set network_config.advanced_networking is automatically
set to true. *)
}
[@@deriving yojson_of]
(** Configuration for multiple network interfaces. *)

type google_gkeonprem_bare_metal_cluster__network_config__sr_iov_config = {
  enabled : bool option; [@option]
      (** Whether to install the SR-IOV operator. *)
}
[@@deriving yojson_of]
(** Configuration for SR-IOV. *)

type google_gkeonprem_bare_metal_cluster__network_config = {
  advanced_networking : bool option; [@option]
      (** Enables the use of advanced Anthos networking features, such as Bundled
Load Balancing with BGP or the egress NAT gateway.
Setting configuration for advanced networking features will automatically
set this flag. *)
  island_mode_cidr :
    google_gkeonprem_bare_metal_cluster__network_config__island_mode_cidr
    list;
  multiple_network_interfaces_config :
    google_gkeonprem_bare_metal_cluster__network_config__multiple_network_interfaces_config
    list;
  sr_iov_config :
    google_gkeonprem_bare_metal_cluster__network_config__sr_iov_config
    list;
}
[@@deriving yojson_of]
(** Network configuration. *)

type google_gkeonprem_bare_metal_cluster__node_access_config = {
  login_user : string option; [@option]
      (** LoginUser is the user name used to access node machines.
It defaults to root if not set. *)
}
[@@deriving yojson_of]
(** Specifies the node access related settings for the bare metal user cluster. *)

type google_gkeonprem_bare_metal_cluster__node_config = {
  container_runtime : string option; [@option]
      (** The available runtimes that can be used to run containers in a Bare Metal User Cluster. Possible values: [CONTAINER_RUNTIME_UNSPECIFIED, DOCKER, CONTAINERD] *)
  max_pods_per_node : float option; [@option]
      (** The maximum number of pods a node can run. The size of the CIDR range
assigned to the node will be derived from this parameter. *)
}
[@@deriving yojson_of]
(** Specifies the workload node configurations. *)

type google_gkeonprem_bare_metal_cluster__os_environment_config = {
  package_repo_excluded : bool;
      (** Whether the package repo should not be included when initializing
bare metal machines. *)
}
[@@deriving yojson_of]
(** OS environment related configurations. *)

type google_gkeonprem_bare_metal_cluster__proxy = {
  no_proxy : string list option; [@option]
      (** A list of IPs, hostnames, and domains that should skip the proxy.
Examples: [127.0.0.1, example.com, .corp, localhost]. *)
  uri : string;
      (** Specifies the address of your proxy server.
Examples: http://domain
WARNING: Do not provide credentials in the format
http://(username:password@)domain these will be rejected by the server. *)
}
[@@deriving yojson_of]
(** Specifies the cluster proxy configuration. *)

type google_gkeonprem_bare_metal_cluster__security_config__authorization__admin_users = {
  username : string;
      (** The name of the user, e.g. 'my-gcp-id@gmail.com'. *)
}
[@@deriving yojson_of]
(** Users that will be granted the cluster-admin role on the cluster, providing full access to the cluster. *)

type google_gkeonprem_bare_metal_cluster__security_config__authorization = {
  admin_users :
    google_gkeonprem_bare_metal_cluster__security_config__authorization__admin_users
    list;
}
[@@deriving yojson_of]
(** Configures user access to the Bare Metal User cluster. *)

type google_gkeonprem_bare_metal_cluster__security_config = {
  authorization :
    google_gkeonprem_bare_metal_cluster__security_config__authorization
    list;
}
[@@deriving yojson_of]
(** Specifies the security related settings for the Bare Metal User Cluster. *)

type google_gkeonprem_bare_metal_cluster__storage__lvp_node_mounts_config = {
  path : string;  (** The host machine path. *)
  storage_class : string;
      (** The StorageClass name that PVs will be created with. *)
}
[@@deriving yojson_of]
(** Specifies the config for local PersistentVolumes backed
by mounted node disks. These disks need to be formatted and mounted by the
user, which can be done before or after cluster creation. *)

type google_gkeonprem_bare_metal_cluster__storage__lvp_share_config__lvp_config = {
  path : string;  (** The host machine path. *)
  storage_class : string;
      (** The StorageClass name that PVs will be created with. *)
}
[@@deriving yojson_of]
(** Defines the machine path and storage class for the LVP Share. *)

type google_gkeonprem_bare_metal_cluster__storage__lvp_share_config = {
  shared_path_pv_count : float option; [@option]
      (** The number of subdirectories to create under path. *)
  lvp_config :
    google_gkeonprem_bare_metal_cluster__storage__lvp_share_config__lvp_config
    list;
}
[@@deriving yojson_of]
(** Specifies the config for local PersistentVolumes backed by
subdirectories in a shared filesystem. These subdirectores are
automatically created during cluster creation. *)

type google_gkeonprem_bare_metal_cluster__storage = {
  lvp_node_mounts_config :
    google_gkeonprem_bare_metal_cluster__storage__lvp_node_mounts_config
    list;
  lvp_share_config :
    google_gkeonprem_bare_metal_cluster__storage__lvp_share_config
    list;
}
[@@deriving yojson_of]
(** Specifies the cluster storage configuration. *)

type google_gkeonprem_bare_metal_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gkeonprem_bare_metal_cluster__timeouts *)

type google_gkeonprem_bare_metal_cluster__upgrade_policy = {
  policy : string option; [@option]
      (** Specifies which upgrade policy to use. Possible values: [SERIAL, CONCURRENT] *)
}
[@@deriving yojson_of]
(** The cluster upgrade policy. *)

type google_gkeonprem_bare_metal_cluster__fleet = {
  membership : string;  (** membership *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__status__conditions = {
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__status = {
  conditions :
    google_gkeonprem_bare_metal_cluster__status__conditions list;
      (** conditions *)
  error_message : string;  (** error_message *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__validation_check__status__result = {
  category : string;  (** category *)
  description : string;  (** description *)
  details : string;  (** details *)
  options : string;  (** options *)
  reason : string;  (** reason *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__validation_check__status = {
  result :
    google_gkeonprem_bare_metal_cluster__validation_check__status__result
    list;
      (** result *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster__validation_check = {
  options : string;  (** options *)
  scenario : string;  (** scenario *)
  status :
    google_gkeonprem_bare_metal_cluster__validation_check__status
    list;
      (** status *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster = {
  admin_cluster_membership : string;
      (** The Admin Cluster this Bare Metal User Cluster belongs to.
This is the full resource name of the Admin Cluster's hub membership. *)
  annotations : (string * string) list option; [@option]
      (** Annotations on the Bare Metal User Cluster.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  bare_metal_version : string;
      (** A human readable description of this Bare Metal User Cluster. *)
  description : string option; [@option]
      (** A human readable description of this Bare Metal User Cluster. *)
  location : string;  (** The location of the resource. *)
  name : string;  (** The bare metal cluster name. *)
  binary_authorization :
    google_gkeonprem_bare_metal_cluster__binary_authorization list;
  cluster_operations :
    google_gkeonprem_bare_metal_cluster__cluster_operations list;
  control_plane :
    google_gkeonprem_bare_metal_cluster__control_plane list;
  load_balancer :
    google_gkeonprem_bare_metal_cluster__load_balancer list;
  maintenance_config :
    google_gkeonprem_bare_metal_cluster__maintenance_config list;
  network_config :
    google_gkeonprem_bare_metal_cluster__network_config list;
  node_access_config :
    google_gkeonprem_bare_metal_cluster__node_access_config list;
  node_config :
    google_gkeonprem_bare_metal_cluster__node_config list;
  os_environment_config :
    google_gkeonprem_bare_metal_cluster__os_environment_config list;
  proxy : google_gkeonprem_bare_metal_cluster__proxy list;
  security_config :
    google_gkeonprem_bare_metal_cluster__security_config list;
  storage : google_gkeonprem_bare_metal_cluster__storage list;
  timeouts : google_gkeonprem_bare_metal_cluster__timeouts option;
  upgrade_policy :
    google_gkeonprem_bare_metal_cluster__upgrade_policy list;
}
[@@deriving yojson_of]
(** google_gkeonprem_bare_metal_cluster *)

let google_gkeonprem_bare_metal_cluster ?annotations ?description
    ?timeouts ~admin_cluster_membership ~bare_metal_version ~location
    ~name ~binary_authorization ~cluster_operations ~control_plane
    ~load_balancer ~maintenance_config ~network_config
    ~node_access_config ~node_config ~os_environment_config ~proxy
    ~security_config ~storage ~upgrade_policy __resource_id =
  let __resource_type = "google_gkeonprem_bare_metal_cluster" in
  let __resource =
    {
      admin_cluster_membership;
      annotations;
      bare_metal_version;
      description;
      location;
      name;
      binary_authorization;
      cluster_operations;
      control_plane;
      load_balancer;
      maintenance_config;
      network_config;
      node_access_config;
      node_config;
      os_environment_config;
      proxy;
      security_config;
      storage;
      timeouts;
      upgrade_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gkeonprem_bare_metal_cluster __resource);
  ()
