(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gkeonprem_bare_metal_admin_cluster__cluster_operations = {
  enable_application_logs : bool prop option; [@option]
      (** Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics). *)
}
[@@deriving yojson_of]
(** Specifies the Admin Cluster's observability infrastructure. *)

type google_gkeonprem_bare_metal_admin_cluster__control_plane__api_server_args = {
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

type google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config__node_configs = {
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

type google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config__taints = {
  effect : string prop option; [@option]
      (** Specifies the nodes operating system (default: LINUX). Possible values: [EFFECT_UNSPECIFIED, PREFER_NO_SCHEDULE, NO_EXECUTE] *)
  key : string prop option; [@option]
      (** Key associated with the effect. *)
  value : string prop option; [@option]
      (** Value associated with the effect. *)
}
[@@deriving yojson_of]
(** The initial taints assigned to nodes of this node pool. *)

type google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config = {
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
    google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config__node_configs
    list;
  taints :
    google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config__taints
    list;
}
[@@deriving yojson_of]
(** The generic configuration for a node pool running the control plane. *)

type google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config = {
  node_pool_config :
    google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config__node_pool_config
    list;
}
[@@deriving yojson_of]
(** Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster. *)

type google_gkeonprem_bare_metal_admin_cluster__control_plane = {
  api_server_args :
    google_gkeonprem_bare_metal_admin_cluster__control_plane__api_server_args
    list;
  control_plane_node_pool_config :
    google_gkeonprem_bare_metal_admin_cluster__control_plane__control_plane_node_pool_config
    list;
}
[@@deriving yojson_of]
(** Specifies the control plane configuration. *)

type google_gkeonprem_bare_metal_admin_cluster__load_balancer__manual_lb_config = {
  enabled : bool prop;
      (** Whether manual load balancing is enabled. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_gkeonprem_bare_metal_admin_cluster__load_balancer__port_config = {
  control_plane_load_balancer_port : float prop;
      (** The port that control plane hosted load balancers will listen on. *)
}
[@@deriving yojson_of]
(** Specifies the load balancer ports. *)

type google_gkeonprem_bare_metal_admin_cluster__load_balancer__vip_config = {
  control_plane_vip : string prop;
      (** The VIP which you previously set aside for the Kubernetes API of this Bare Metal Admin Cluster. *)
}
[@@deriving yojson_of]
(** Specified the Bare Metal Load Balancer Config *)

type google_gkeonprem_bare_metal_admin_cluster__load_balancer = {
  manual_lb_config :
    google_gkeonprem_bare_metal_admin_cluster__load_balancer__manual_lb_config
    list;
  port_config :
    google_gkeonprem_bare_metal_admin_cluster__load_balancer__port_config
    list;
  vip_config :
    google_gkeonprem_bare_metal_admin_cluster__load_balancer__vip_config
    list;
}
[@@deriving yojson_of]
(** Specifies the load balancer configuration. *)

type google_gkeonprem_bare_metal_admin_cluster__maintenance_config = {
  maintenance_address_cidr_blocks : string prop list;
      (** All IPv4 address from these ranges will be placed into maintenance mode.
Nodes in maintenance mode will be cordoned and drained. When both of these
are true, the baremetal.cluster.gke.io/maintenance annotation will be set
on the node resource. *)
}
[@@deriving yojson_of]
(** Specifies the workload node configurations. *)

type google_gkeonprem_bare_metal_admin_cluster__network_config__island_mode_cidr = {
  pod_address_cidr_blocks : string prop list;
      (** All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation. *)
  service_address_cidr_blocks : string prop list;
      (** All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_gkeonprem_bare_metal_admin_cluster__network_config = {
  island_mode_cidr :
    google_gkeonprem_bare_metal_admin_cluster__network_config__island_mode_cidr
    list;
}
[@@deriving yojson_of]
(** Network configuration. *)

type google_gkeonprem_bare_metal_admin_cluster__node_access_config = {
  login_user : string prop option; [@option]
      (** LoginUser is the user name used to access node machines.
It defaults to root if not set. *)
}
[@@deriving yojson_of]
(** Specifies the node access related settings for the bare metal user cluster. *)

type google_gkeonprem_bare_metal_admin_cluster__node_config = {
  max_pods_per_node : float prop option; [@option]
      (** The maximum number of pods a node can run. The size of the CIDR range
assigned to the node will be derived from this parameter. *)
}
[@@deriving yojson_of]
(** Specifies the workload node configurations. *)

type google_gkeonprem_bare_metal_admin_cluster__proxy = {
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

type google_gkeonprem_bare_metal_admin_cluster__security_config__authorization__admin_users = {
  username : string prop;
      (** The name of the user, e.g. 'my-gcp-id@gmail.com'. *)
}
[@@deriving yojson_of]
(** Users that will be granted the cluster-admin role on the cluster, providing full access to the cluster. *)

type google_gkeonprem_bare_metal_admin_cluster__security_config__authorization = {
  admin_users :
    google_gkeonprem_bare_metal_admin_cluster__security_config__authorization__admin_users
    list;
}
[@@deriving yojson_of]
(** Configures user access to the Bare Metal User cluster. *)

type google_gkeonprem_bare_metal_admin_cluster__security_config = {
  authorization :
    google_gkeonprem_bare_metal_admin_cluster__security_config__authorization
    list;
}
[@@deriving yojson_of]
(** Specifies the security related settings for the Bare Metal User Cluster. *)

type google_gkeonprem_bare_metal_admin_cluster__storage__lvp_node_mounts_config = {
  path : string prop;  (** The host machine path. *)
  storage_class : string prop;
      (** The StorageClass name that PVs will be created with. *)
}
[@@deriving yojson_of]
(** Specifies the config for local PersistentVolumes backed
by mounted node disks. These disks need to be formatted and mounted by the
user, which can be done before or after cluster creation. *)

type google_gkeonprem_bare_metal_admin_cluster__storage__lvp_share_config__lvp_config = {
  path : string prop;  (** The host machine path. *)
  storage_class : string prop;
      (** The StorageClass name that PVs will be created with. *)
}
[@@deriving yojson_of]
(** Defines the machine path and storage class for the LVP Share. *)

type google_gkeonprem_bare_metal_admin_cluster__storage__lvp_share_config = {
  shared_path_pv_count : float prop option; [@option]
      (** The number of subdirectories to create under path. *)
  lvp_config :
    google_gkeonprem_bare_metal_admin_cluster__storage__lvp_share_config__lvp_config
    list;
}
[@@deriving yojson_of]
(** Specifies the config for local PersistentVolumes backed by
subdirectories in a shared filesystem. These subdirectores are
automatically created during cluster creation. *)

type google_gkeonprem_bare_metal_admin_cluster__storage = {
  lvp_node_mounts_config :
    google_gkeonprem_bare_metal_admin_cluster__storage__lvp_node_mounts_config
    list;
  lvp_share_config :
    google_gkeonprem_bare_metal_admin_cluster__storage__lvp_share_config
    list;
}
[@@deriving yojson_of]
(** Specifies the cluster storage configuration. *)

type google_gkeonprem_bare_metal_admin_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gkeonprem_bare_metal_admin_cluster__timeouts *)

type google_gkeonprem_bare_metal_admin_cluster__fleet = {
  membership : string prop;  (** membership *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_admin_cluster__status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_admin_cluster__status = {
  conditions :
    google_gkeonprem_bare_metal_admin_cluster__status__conditions
    list;
      (** conditions *)
  error_message : string prop;  (** error_message *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_admin_cluster__validation_check__status__result = {
  category : string prop;  (** category *)
  description : string prop;  (** description *)
  details : string prop;  (** details *)
  options : string prop;  (** options *)
  reason : string prop;  (** reason *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_admin_cluster__validation_check__status = {
  result :
    google_gkeonprem_bare_metal_admin_cluster__validation_check__status__result
    list;
      (** result *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_admin_cluster__validation_check = {
  options : string prop;  (** options *)
  scenario : string prop;  (** scenario *)
  status :
    google_gkeonprem_bare_metal_admin_cluster__validation_check__status
    list;
      (** status *)
}
[@@deriving yojson_of]

type google_gkeonprem_bare_metal_admin_cluster = {
  annotations : (string * string prop) list option; [@option]
      (** Annotations on the Bare Metal Admin Cluster.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  bare_metal_version : string prop option; [@option]
      (** A human readable description of this Bare Metal Admin Cluster. *)
  description : string prop option; [@option]
      (** A human readable description of this Bare Metal Admin Cluster. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the resource. *)
  name : string prop;  (** The bare metal admin cluster name. *)
  project : string prop option; [@option]  (** project *)
  cluster_operations :
    google_gkeonprem_bare_metal_admin_cluster__cluster_operations
    list;
  control_plane :
    google_gkeonprem_bare_metal_admin_cluster__control_plane list;
  load_balancer :
    google_gkeonprem_bare_metal_admin_cluster__load_balancer list;
  maintenance_config :
    google_gkeonprem_bare_metal_admin_cluster__maintenance_config
    list;
  network_config :
    google_gkeonprem_bare_metal_admin_cluster__network_config list;
  node_access_config :
    google_gkeonprem_bare_metal_admin_cluster__node_access_config
    list;
  node_config :
    google_gkeonprem_bare_metal_admin_cluster__node_config list;
  proxy : google_gkeonprem_bare_metal_admin_cluster__proxy list;
  security_config :
    google_gkeonprem_bare_metal_admin_cluster__security_config list;
  storage : google_gkeonprem_bare_metal_admin_cluster__storage list;
  timeouts :
    google_gkeonprem_bare_metal_admin_cluster__timeouts option;
}
[@@deriving yojson_of]
(** google_gkeonprem_bare_metal_admin_cluster *)

let google_gkeonprem_bare_metal_admin_cluster ?annotations
    ?bare_metal_version ?description ?id ?project ?timeouts ~location
    ~name ~cluster_operations ~control_plane ~load_balancer
    ~maintenance_config ~network_config ~node_access_config
    ~node_config ~proxy ~security_config ~storage __resource_id =
  let __resource_type =
    "google_gkeonprem_bare_metal_admin_cluster"
  in
  let __resource =
    {
      annotations;
      bare_metal_version;
      description;
      id;
      location;
      name;
      project;
      cluster_operations;
      control_plane;
      load_balancer;
      maintenance_config;
      network_config;
      node_access_config;
      node_config;
      proxy;
      security_config;
      storage;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gkeonprem_bare_metal_admin_cluster __resource);
  ()
