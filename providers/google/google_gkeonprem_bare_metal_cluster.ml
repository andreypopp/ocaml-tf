(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type binary_authorization = {
  evaluation_mode : string prop option; [@option]
      (** Mode of operation for binauthz policy evaluation. If unspecified,
defaults to DISABLED. Possible values: [DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE] *)
}
[@@deriving yojson_of]
(** Binary Authorization related configurations. *)

type cluster_operations = {
  enable_application_logs : bool prop option; [@option]
      (** Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics). *)
}
[@@deriving yojson_of]
(** Specifies the User Cluster's observability infrastructure. *)

type control_plane__api_server_args = {
  argument : string prop;
      (** The argument name as it appears on the API Server command line please make sure to remove the leading dashes. *)
  value : string prop;
      (** The value of the arg as it will be passed to the API Server command line. *)
}
[@@deriving yojson_of]
(** Customizes the default API server args. Only a subset of
customized flags are supported. Please refer to the API server
documentation below to know the exact format:
https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/ *)

type control_plane__control_plane_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string prop) list option; [@option]
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
  node_ip : string prop option; [@option]
      (** The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 *)
}
[@@deriving yojson_of]
(** The list of machine addresses in the Bare Metal Node Pool. *)

type control_plane__control_plane_node_pool_config__node_pool_config__taints = {
  effect : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string prop option; [@option]
      (** Key associated with the effect. *)
  value : string prop option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type control_plane__control_plane_node_pool_config__node_pool_config = {
  labels : (string * string prop) list option; [@option]
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
  operating_system : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). *)
  node_configs :
    control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    list;
  taints :
    control_plane__control_plane_node_pool_config__node_pool_config__taints
    list;
}
[@@deriving yojson_of]
(** The generic configuration for a node pool running the control plane. *)

type control_plane__control_plane_node_pool_config = {
  node_pool_config :
    control_plane__control_plane_node_pool_config__node_pool_config
    list;
}
[@@deriving yojson_of]
(** Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster. *)

type control_plane = {
  api_server_args : control_plane__api_server_args list;
  control_plane_node_pool_config :
    control_plane__control_plane_node_pool_config list;
}
[@@deriving yojson_of]
(** Specifies the control plane configuration. *)

type load_balancer__bgp_lb_config__address_pools = {
  addresses : string prop list;
      (** The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5). *)
  avoid_buggy_ips : bool prop option; [@option]
      (** If true, avoid using IPs ending in .0 or .255.
This avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses. *)
  manual_assign : string prop option; [@option]
      (** If true, prevent IP addresses from being automatically assigned. *)
  pool : string prop;  (** The name of the address pool. *)
}
[@@deriving yojson_of]
(** AddressPools is a list of non-overlapping IP pools used by load balancer
typed services. All addresses must be routable to load balancer nodes.
IngressVIP must be included in the pools. *)

type load_balancer__bgp_lb_config__bgp_peer_configs = {
  asn : float prop;
      (** BGP autonomous system number (ASN) for the network that contains the
external peer device. *)
  control_plane_nodes : string prop list option; [@option]
      (** The IP address of the control plane node that connects to the external
peer.
If you don't specify any control plane nodes, all control plane nodes
can connect to the external peer. If you specify one or more IP addresses,
only the nodes specified participate in peering sessions. *)
  ip_address : string prop;
      (** The IP address of the external peer device. *)
}
[@@deriving yojson_of]
(** The list of BGP peers that the cluster will connect to.
At least one peer must be configured for each control plane node.
Control plane nodes will connect to these peers to advertise the control
plane VIP. The Services load balancer also uses these peers by default.
This field can be updated after cluster creation. *)

type load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config = {
  registry_burst : float prop option; [@option]
      (** The maximum size of bursty pulls, temporarily allows pulls to burst to this
number, while still not exceeding registry_pull_qps.
The value must not be a negative number.
Updating this field may impact scalability by changing the amount of
traffic produced by image pulls.
Defaults to 10. *)
  registry_pull_qps : float prop option; [@option]
      (** The limit of registry pulls per second.
Setting this value to 0 means no limit.
Updating this field may impact scalability by changing the amount of
traffic produced by image pulls.
Defaults to 5. *)
  serialize_image_pulls_disabled : bool prop option; [@option]
      (** Prevents the Kubelet from pulling multiple images at a time.
We recommend *not* changing the default value on nodes that run docker
daemon with version  < 1.9 or an Another Union File System (Aufs) storage
backend. Issue https://github.com/kubernetes/kubernetes/issues/10959 has
more details. *)
}
[@@deriving yojson_of]
(** The modifiable kubelet configurations for the baremetal machines. *)

type load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string prop) list option; [@option]
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
  node_ip : string prop option; [@option]
      (** The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 *)
}
[@@deriving yojson_of]
(** The list of machine addresses in the Bare Metal Node Pool. *)

type load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints = {
  effect : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string prop option; [@option]
      (** Key associated with the effect. *)
  value : string prop option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config = {
  labels : (string * string prop) list option; [@option]
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
  operating_system : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). *)
  kubelet_config :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config
    list;
  node_configs :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    list;
  taints :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    list;
}
[@@deriving yojson_of]
(** The generic configuration for a node pool running a load balancer. *)

type load_balancer__bgp_lb_config__load_balancer_node_pool_config = {
  node_pool_config :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config
    list;
}
[@@deriving yojson_of]
(** Specifies the node pool running data plane load balancing. L2 connectivity
is required among nodes in this pool. If missing, the control plane node
pool is used for data plane load balancing. *)

type load_balancer__bgp_lb_config = {
  asn : float prop;
      (** BGP autonomous system number (ASN) of the cluster.
This field can be updated after cluster creation. *)
  address_pools : load_balancer__bgp_lb_config__address_pools list;
  bgp_peer_configs :
    load_balancer__bgp_lb_config__bgp_peer_configs list;
  load_balancer_node_pool_config :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config list;
}
[@@deriving yojson_of]
(** Configuration for BGP typed load balancers. *)

type load_balancer__manual_lb_config = {
  enabled : bool prop;
      (** Whether manual load balancing is enabled. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type load_balancer__metal_lb_config__address_pools = {
  addresses : string prop list;
      (** The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5). *)
  avoid_buggy_ips : bool prop option; [@option]
      (** If true, avoid using IPs ending in .0 or .255.
This avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses. *)
  manual_assign : bool prop option; [@option]
      (** If true, prevent IP addresses from being automatically assigned. *)
  pool : string prop;  (** The name of the address pool. *)
}
[@@deriving yojson_of]
(** AddressPools is a list of non-overlapping IP pools used by load balancer
typed services. All addresses must be routable to load balancer nodes.
IngressVIP must be included in the pools. *)

type load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs = {
  labels : (string * string prop) list option; [@option]
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
  node_ip : string prop option; [@option]
      (** The default IPv4 address for SSH access and Kubernetes node.
Example: 192.168.0.1 *)
}
[@@deriving yojson_of]
(** The list of machine addresses in the Bare Metal Node Pool. *)

type load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints = {
  effect : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string prop option; [@option]
      (** Key associated with the effect. *)
  value : string prop option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config = {
  labels : (string * string prop) list option; [@option]
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
  operating_system : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). *)
  node_configs :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    list;
  taints :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    list;
}
[@@deriving yojson_of]
(** The generic configuration for a node pool running a load balancer. *)

type load_balancer__metal_lb_config__load_balancer_node_pool_config = {
  node_pool_config :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config
    list;
}
[@@deriving yojson_of]
(** Specifies the load balancer's node pool configuration. *)

type load_balancer__metal_lb_config = {
  address_pools : load_balancer__metal_lb_config__address_pools list;
  load_balancer_node_pool_config :
    load_balancer__metal_lb_config__load_balancer_node_pool_config
    list;
}
[@@deriving yojson_of]
(** A nested object resource *)

type load_balancer__port_config = {
  control_plane_load_balancer_port : float prop;
      (** The port that control plane hosted load balancers will listen on. *)
}
[@@deriving yojson_of]
(** Specifies the load balancer ports. *)

type load_balancer__vip_config = {
  control_plane_vip : string prop;
      (** The VIP which you previously set aside for the Kubernetes API of this Bare Metal User Cluster. *)
  ingress_vip : string prop;
      (** The VIP which you previously set aside for ingress traffic into this Bare Metal User Cluster. *)
}
[@@deriving yojson_of]
(** Specified the Bare Metal Load Balancer Config *)

type load_balancer = {
  bgp_lb_config : load_balancer__bgp_lb_config list;
  manual_lb_config : load_balancer__manual_lb_config list;
  metal_lb_config : load_balancer__metal_lb_config list;
  port_config : load_balancer__port_config list;
  vip_config : load_balancer__vip_config list;
}
[@@deriving yojson_of]
(** Specifies the load balancer configuration. *)

type maintenance_config = {
  maintenance_address_cidr_blocks : string prop list;
      (** All IPv4 address from these ranges will be placed into maintenance mode.
Nodes in maintenance mode will be cordoned and drained. When both of these
are true, the baremetal.cluster.gke.io/maintenance annotation will be set
on the node resource. *)
}
[@@deriving yojson_of]
(** Specifies the workload node configurations. *)

type network_config__island_mode_cidr = {
  pod_address_cidr_blocks : string prop list;
      (** All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation. *)
  service_address_cidr_blocks : string prop list;
      (** All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type network_config__multiple_network_interfaces_config = {
  enabled : bool prop option; [@option]
      (** Whether to enable multiple network interfaces for your pods.
When set network_config.advanced_networking is automatically
set to true. *)
}
[@@deriving yojson_of]
(** Configuration for multiple network interfaces. *)

type network_config__sr_iov_config = {
  enabled : bool prop option; [@option]
      (** Whether to install the SR-IOV operator. *)
}
[@@deriving yojson_of]
(** Configuration for SR-IOV. *)

type network_config = {
  advanced_networking : bool prop option; [@option]
      (** Enables the use of advanced Anthos networking features, such as Bundled
Load Balancing with BGP or the egress NAT gateway.
Setting configuration for advanced networking features will automatically
set this flag. *)
  island_mode_cidr : network_config__island_mode_cidr list;
  multiple_network_interfaces_config :
    network_config__multiple_network_interfaces_config list;
  sr_iov_config : network_config__sr_iov_config list;
}
[@@deriving yojson_of]
(** Network configuration. *)

type node_access_config = {
  login_user : string prop option; [@option]
      (** LoginUser is the user name used to access node machines.
It defaults to root if not set. *)
}
[@@deriving yojson_of]
(** Specifies the node access related settings for the bare metal user cluster. *)

type node_config = {
  container_runtime : string prop option; [@option]
      (** The available runtimes that can be used to run containers in a Bare Metal User Cluster. Possible values: [CONTAINER_RUNTIME_UNSPECIFIED, DOCKER, CONTAINERD] *)
  max_pods_per_node : float prop option; [@option]
      (** The maximum number of pods a node can run. The size of the CIDR range
assigned to the node will be derived from this parameter. *)
}
[@@deriving yojson_of]
(** Specifies the workload node configurations. *)

type os_environment_config = {
  package_repo_excluded : bool prop;
      (** Whether the package repo should not be included when initializing
bare metal machines. *)
}
[@@deriving yojson_of]
(** OS environment related configurations. *)

type proxy = {
  no_proxy : string prop list option; [@option]
      (** A list of IPs, hostnames, and domains that should skip the proxy.
Examples: [127.0.0.1, example.com, .corp, localhost]. *)
  uri : string prop;
      (** Specifies the address of your proxy server.
Examples: http://domain
WARNING: Do not provide credentials in the format
http://(username:password@)domain these will be rejected by the server. *)
}
[@@deriving yojson_of]
(** Specifies the cluster proxy configuration. *)

type security_config__authorization__admin_users = {
  username : string prop;
      (** The name of the user, e.g. 'my-gcp-id@gmail.com'. *)
}
[@@deriving yojson_of]
(** Users that will be granted the cluster-admin role on the cluster, providing full access to the cluster. *)

type security_config__authorization = {
  admin_users : security_config__authorization__admin_users list;
}
[@@deriving yojson_of]
(** Configures user access to the Bare Metal User cluster. *)

type security_config = {
  authorization : security_config__authorization list;
}
[@@deriving yojson_of]
(** Specifies the security related settings for the Bare Metal User Cluster. *)

type storage__lvp_node_mounts_config = {
  path : string prop;  (** The host machine path. *)
  storage_class : string prop;
      (** The StorageClass name that PVs will be created with. *)
}
[@@deriving yojson_of]
(** Specifies the config for local PersistentVolumes backed
by mounted node disks. These disks need to be formatted and mounted by the
user, which can be done before or after cluster creation. *)

type storage__lvp_share_config__lvp_config = {
  path : string prop;  (** The host machine path. *)
  storage_class : string prop;
      (** The StorageClass name that PVs will be created with. *)
}
[@@deriving yojson_of]
(** Defines the machine path and storage class for the LVP Share. *)

type storage__lvp_share_config = {
  shared_path_pv_count : float prop option; [@option]
      (** The number of subdirectories to create under path. *)
  lvp_config : storage__lvp_share_config__lvp_config list;
}
[@@deriving yojson_of]
(** Specifies the config for local PersistentVolumes backed by
subdirectories in a shared filesystem. These subdirectores are
automatically created during cluster creation. *)

type storage = {
  lvp_node_mounts_config : storage__lvp_node_mounts_config list;
  lvp_share_config : storage__lvp_share_config list;
}
[@@deriving yojson_of]
(** Specifies the cluster storage configuration. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type upgrade_policy = {
  policy : string prop option; [@option]
      (** Specifies which upgrade policy to use. Possible values: [SERIAL, CONCURRENT] *)
}
[@@deriving yojson_of]
(** The cluster upgrade policy. *)

type fleet = { membership : string prop  (** membership *) }
[@@deriving yojson_of]

type status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type status = {
  conditions : status__conditions list;  (** conditions *)
  error_message : string prop;  (** error_message *)
}
[@@deriving yojson_of]

type validation_check__status__result = {
  category : string prop;  (** category *)
  description : string prop;  (** description *)
  details : string prop;  (** details *)
  options : string prop;  (** options *)
  reason : string prop;  (** reason *)
}
[@@deriving yojson_of]

type validation_check__status = {
  result : validation_check__status__result list;  (** result *)
}
[@@deriving yojson_of]

type validation_check = {
  options : string prop;  (** options *)
  scenario : string prop;  (** scenario *)
  status : validation_check__status list;  (** status *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_cluster = {
  admin_cluster_membership : string prop;
      (** The Admin Cluster this Bare Metal User Cluster belongs to.
This is the full resource name of the Admin Cluster's hub membership. *)
  annotations : (string * string prop) list option; [@option]
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
  bare_metal_version : string prop;
      (** A human readable description of this Bare Metal User Cluster. *)
  description : string prop option; [@option]
      (** A human readable description of this Bare Metal User Cluster. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the resource. *)
  name : string prop;  (** The bare metal cluster name. *)
  project : string prop option; [@option]  (** project *)
  binary_authorization : binary_authorization list;
  cluster_operations : cluster_operations list;
  control_plane : control_plane list;
  load_balancer : load_balancer list;
  maintenance_config : maintenance_config list;
  network_config : network_config list;
  node_access_config : node_access_config list;
  node_config : node_config list;
  os_environment_config : os_environment_config list;
  proxy : proxy list;
  security_config : security_config list;
  storage : storage list;
  timeouts : timeouts option;
  upgrade_policy : upgrade_policy list;
}
[@@deriving yojson_of]
(** google_gkeonprem_bare_metal_cluster *)

let binary_authorization ?evaluation_mode () : binary_authorization =
  { evaluation_mode }

let cluster_operations ?enable_application_logs () :
    cluster_operations =
  { enable_application_logs }

let control_plane__api_server_args ~argument ~value () :
    control_plane__api_server_args =
  { argument; value }

let control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    ?labels ?node_ip () :
    control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    =
  { labels; node_ip }

let control_plane__control_plane_node_pool_config__node_pool_config__taints
    ?effect ?key ?value () :
    control_plane__control_plane_node_pool_config__node_pool_config__taints
    =
  { effect; key; value }

let control_plane__control_plane_node_pool_config__node_pool_config
    ?labels ?operating_system ~node_configs ~taints () :
    control_plane__control_plane_node_pool_config__node_pool_config =
  { labels; operating_system; node_configs; taints }

let control_plane__control_plane_node_pool_config ~node_pool_config
    () : control_plane__control_plane_node_pool_config =
  { node_pool_config }

let control_plane ~api_server_args ~control_plane_node_pool_config ()
    : control_plane =
  { api_server_args; control_plane_node_pool_config }

let load_balancer__bgp_lb_config__address_pools ?avoid_buggy_ips
    ?manual_assign ~addresses ~pool () :
    load_balancer__bgp_lb_config__address_pools =
  { addresses; avoid_buggy_ips; manual_assign; pool }

let load_balancer__bgp_lb_config__bgp_peer_configs
    ?control_plane_nodes ~asn ~ip_address () :
    load_balancer__bgp_lb_config__bgp_peer_configs =
  { asn; control_plane_nodes; ip_address }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config
    ?registry_burst ?registry_pull_qps
    ?serialize_image_pulls_disabled () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__kubelet_config
    =
  {
    registry_burst;
    registry_pull_qps;
    serialize_image_pulls_disabled;
  }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    ?labels ?node_ip () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    =
  { labels; node_ip }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    ?effect ?key ?value () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    =
  { effect; key; value }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config
    ?labels ?operating_system ~kubelet_config ~node_configs ~taints
    () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config__node_pool_config
    =
  { labels; operating_system; kubelet_config; node_configs; taints }

let load_balancer__bgp_lb_config__load_balancer_node_pool_config
    ~node_pool_config () :
    load_balancer__bgp_lb_config__load_balancer_node_pool_config =
  { node_pool_config }

let load_balancer__bgp_lb_config ~asn ~address_pools
    ~bgp_peer_configs ~load_balancer_node_pool_config () :
    load_balancer__bgp_lb_config =
  {
    asn;
    address_pools;
    bgp_peer_configs;
    load_balancer_node_pool_config;
  }

let load_balancer__manual_lb_config ~enabled () :
    load_balancer__manual_lb_config =
  { enabled }

let load_balancer__metal_lb_config__address_pools ?avoid_buggy_ips
    ?manual_assign ~addresses ~pool () :
    load_balancer__metal_lb_config__address_pools =
  { addresses; avoid_buggy_ips; manual_assign; pool }

let load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    ?labels ?node_ip () :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__node_configs
    =
  { labels; node_ip }

let load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    ?effect ?key ?value () :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config__taints
    =
  { effect; key; value }

let load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config
    ?labels ?operating_system ~node_configs ~taints () :
    load_balancer__metal_lb_config__load_balancer_node_pool_config__node_pool_config
    =
  { labels; operating_system; node_configs; taints }

let load_balancer__metal_lb_config__load_balancer_node_pool_config
    ~node_pool_config () :
    load_balancer__metal_lb_config__load_balancer_node_pool_config =
  { node_pool_config }

let load_balancer__metal_lb_config ~address_pools
    ~load_balancer_node_pool_config () :
    load_balancer__metal_lb_config =
  { address_pools; load_balancer_node_pool_config }

let load_balancer__port_config ~control_plane_load_balancer_port () :
    load_balancer__port_config =
  { control_plane_load_balancer_port }

let load_balancer__vip_config ~control_plane_vip ~ingress_vip () :
    load_balancer__vip_config =
  { control_plane_vip; ingress_vip }

let load_balancer ~bgp_lb_config ~manual_lb_config ~metal_lb_config
    ~port_config ~vip_config () : load_balancer =
  {
    bgp_lb_config;
    manual_lb_config;
    metal_lb_config;
    port_config;
    vip_config;
  }

let maintenance_config ~maintenance_address_cidr_blocks () :
    maintenance_config =
  { maintenance_address_cidr_blocks }

let network_config__island_mode_cidr ~pod_address_cidr_blocks
    ~service_address_cidr_blocks () :
    network_config__island_mode_cidr =
  { pod_address_cidr_blocks; service_address_cidr_blocks }

let network_config__multiple_network_interfaces_config ?enabled () :
    network_config__multiple_network_interfaces_config =
  { enabled }

let network_config__sr_iov_config ?enabled () :
    network_config__sr_iov_config =
  { enabled }

let network_config ?advanced_networking ~island_mode_cidr
    ~multiple_network_interfaces_config ~sr_iov_config () :
    network_config =
  {
    advanced_networking;
    island_mode_cidr;
    multiple_network_interfaces_config;
    sr_iov_config;
  }

let node_access_config ?login_user () : node_access_config =
  { login_user }

let node_config ?container_runtime ?max_pods_per_node () :
    node_config =
  { container_runtime; max_pods_per_node }

let os_environment_config ~package_repo_excluded () :
    os_environment_config =
  { package_repo_excluded }

let proxy ?no_proxy ~uri () : proxy = { no_proxy; uri }

let security_config__authorization__admin_users ~username () :
    security_config__authorization__admin_users =
  { username }

let security_config__authorization ~admin_users () :
    security_config__authorization =
  { admin_users }

let security_config ~authorization () : security_config =
  { authorization }

let storage__lvp_node_mounts_config ~path ~storage_class () :
    storage__lvp_node_mounts_config =
  { path; storage_class }

let storage__lvp_share_config__lvp_config ~path ~storage_class () :
    storage__lvp_share_config__lvp_config =
  { path; storage_class }

let storage__lvp_share_config ?shared_path_pv_count ~lvp_config () :
    storage__lvp_share_config =
  { shared_path_pv_count; lvp_config }

let storage ~lvp_node_mounts_config ~lvp_share_config () : storage =
  { lvp_node_mounts_config; lvp_share_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let upgrade_policy ?policy () : upgrade_policy = { policy }

let google_gkeonprem_bare_metal_cluster ?annotations ?description ?id
    ?project ?timeouts ~admin_cluster_membership ~bare_metal_version
    ~location ~name ~binary_authorization ~cluster_operations
    ~control_plane ~load_balancer ~maintenance_config ~network_config
    ~node_access_config ~node_config ~os_environment_config ~proxy
    ~security_config ~storage ~upgrade_policy () :
    google_gkeonprem_bare_metal_cluster =
  {
    admin_cluster_membership;
    annotations;
    bare_metal_version;
    description;
    id;
    location;
    name;
    project;
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

type t = {
  admin_cluster_membership : string prop;
  annotations : (string * string) list prop;
  bare_metal_version : string prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  fleet : fleet list prop;
  id : string prop;
  local_name : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
  validation_check : validation_check list prop;
}

let register ?tf_module ?annotations ?description ?id ?project
    ?timeouts ~admin_cluster_membership ~bare_metal_version ~location
    ~name ~binary_authorization ~cluster_operations ~control_plane
    ~load_balancer ~maintenance_config ~network_config
    ~node_access_config ~node_config ~os_environment_config ~proxy
    ~security_config ~storage ~upgrade_policy __resource_id =
  let __resource_type = "google_gkeonprem_bare_metal_cluster" in
  let __resource =
    google_gkeonprem_bare_metal_cluster ?annotations ?description ?id
      ?project ?timeouts ~admin_cluster_membership
      ~bare_metal_version ~location ~name ~binary_authorization
      ~cluster_operations ~control_plane ~load_balancer
      ~maintenance_config ~network_config ~node_access_config
      ~node_config ~os_environment_config ~proxy ~security_config
      ~storage ~upgrade_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gkeonprem_bare_metal_cluster __resource);
  let __resource_attributes =
    ({
       admin_cluster_membership =
         Prop.computed __resource_type __resource_id
           "admin_cluster_membership";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       bare_metal_version =
         Prop.computed __resource_type __resource_id
           "bare_metal_version";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       etag = Prop.computed __resource_type __resource_id "etag";
       fleet = Prop.computed __resource_type __resource_id "fleet";
       id = Prop.computed __resource_type __resource_id "id";
       local_name =
         Prop.computed __resource_type __resource_id "local_name";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       reconciling =
         Prop.computed __resource_type __resource_id "reconciling";
       state = Prop.computed __resource_type __resource_id "state";
       status = Prop.computed __resource_type __resource_id "status";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       validation_check =
         Prop.computed __resource_type __resource_id
           "validation_check";
     }
      : t)
  in
  __resource_attributes
