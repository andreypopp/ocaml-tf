(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gkeonprem_vmware_cluster__anti_affinity_groups = {
  aag_config_disabled : bool prop;
      (** Spread nodes across at least three physical hosts (requires at least three
hosts).
Enabled by default. *)
}
[@@deriving yojson_of]
(** AAGConfig specifies whether to spread VMware User Cluster nodes across at
least three physical hosts in the datacenter. *)

type google_gkeonprem_vmware_cluster__authorization__admin_users = {
  username : string prop;
      (** The name of the user, e.g. 'my-gcp-id@gmail.com'. *)
}
[@@deriving yojson_of]
(** Users that will be granted the cluster-admin role on the cluster, providing
full access to the cluster. *)

type google_gkeonprem_vmware_cluster__authorization = {
  admin_users :
    google_gkeonprem_vmware_cluster__authorization__admin_users list;
}
[@@deriving yojson_of]
(** RBAC policy that will be applied and managed by GKE On-Prem. *)

type google_gkeonprem_vmware_cluster__auto_repair_config = {
  enabled : bool prop;  (** Whether auto repair is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for auto repairing. *)

type google_gkeonprem_vmware_cluster__control_plane_node__auto_resize_config = {
  enabled : bool prop;
      (** Whether to enable control plane node auto resizing. *)
}
[@@deriving yojson_of]
(** AutoResizeConfig provides auto resizing configurations. *)

type google_gkeonprem_vmware_cluster__control_plane_node__vsphere_config = {
  datastore : string prop;  (** datastore *)
  storage_policy_name : string prop;  (** storage_policy_name *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_cluster__control_plane_node = {
  cpus : float prop option; [@option]
      (** The number of CPUs for each admin cluster node that serve as control planes
for this VMware User Cluster. (default: 4 CPUs) *)
  memory : float prop option; [@option]
      (** The megabytes of memory for each admin cluster node that serves as a
control plane for this VMware User Cluster (default: 8192 MB memory). *)
  replicas : float prop option; [@option]
      (** The number of control plane nodes for this VMware User Cluster.
(default: 1 replica). *)
  vsphere_config :
    google_gkeonprem_vmware_cluster__control_plane_node__vsphere_config
    list;
      (** Vsphere-specific config. *)
  auto_resize_config :
    google_gkeonprem_vmware_cluster__control_plane_node__auto_resize_config
    list;
}
[@@deriving yojson_of]
(** VMware User Cluster control plane nodes must have either 1 or 3 replicas. *)

type google_gkeonprem_vmware_cluster__dataplane_v2 = {
  advanced_networking : bool prop option; [@option]
      (** Enable advanced networking which requires dataplane_v2_enabled to be set true. *)
  dataplane_v2_enabled : bool prop option; [@option]
      (** Enables Dataplane V2. *)
  windows_dataplane_v2_enabled : bool prop option; [@option]
      (** Enable Dataplane V2 for clusters with Windows nodes. *)
}
[@@deriving yojson_of]
(** VmwareDataplaneV2Config specifies configuration for Dataplane V2. *)

type google_gkeonprem_vmware_cluster__load_balancer__f5_config = {
  address : string prop option; [@option]
      (** The load balancer's IP address. *)
  partition : string prop option; [@option]
      (** he preexisting partition to be used by the load balancer. T
his partition is usually created for the admin cluster for example:
'my-f5-admin-partition'. *)
  snat_pool : string prop option; [@option]
      (** The pool name. Only necessary, if using SNAT. *)
}
[@@deriving yojson_of]
(** Configuration for F5 Big IP typed load balancers. *)

type google_gkeonprem_vmware_cluster__load_balancer__manual_lb_config = {
  control_plane_node_port : float prop option; [@option]
      (** NodePort for control plane service. The Kubernetes API server in the admin
cluster is implemented as a Service of type NodePort (ex. 30968). *)
  ingress_http_node_port : float prop option; [@option]
      (** NodePort for ingress service's http. The ingress service in the admin
cluster is implemented as a Service of type NodePort (ex. 32527). *)
  ingress_https_node_port : float prop option; [@option]
      (** NodePort for ingress service's https. The ingress service in the admin
cluster is implemented as a Service of type NodePort (ex. 30139). *)
  konnectivity_server_node_port : float prop option; [@option]
      (** NodePort for konnectivity server service running as a sidecar in each
kube-apiserver pod (ex. 30564). *)
}
[@@deriving yojson_of]
(** Manually configured load balancers. *)

type google_gkeonprem_vmware_cluster__load_balancer__metal_lb_config__address_pools = {
  addresses : string prop list;
      (** The addresses that are part of this pool. Each address
must be either in the CIDR form (1.2.3.0/24) or range
form (1.2.3.1-1.2.3.5). *)
  avoid_buggy_ips : bool prop option; [@option]
      (** If true, avoid using IPs ending in .0 or .255.
This avoids buggy consumer devices mistakenly dropping IPv4 traffic for
those special IP addresses. *)
  manual_assign : bool prop option; [@option]
      (** If true, prevent IP addresses from being automatically assigned. *)
  pool : string prop;  (** The name of the address pool. *)
}
[@@deriving yojson_of]
(** AddressPools is a list of non-overlapping IP pools used by load balancer
typed services. All addresses must be routable to load balancer nodes.
IngressVIP must be included in the pools. *)

type google_gkeonprem_vmware_cluster__load_balancer__metal_lb_config = {
  address_pools :
    google_gkeonprem_vmware_cluster__load_balancer__metal_lb_config__address_pools
    list;
}
[@@deriving yojson_of]
(** Configuration for MetalLB typed load balancers. *)

type google_gkeonprem_vmware_cluster__load_balancer__vip_config = {
  control_plane_vip : string prop option; [@option]
      (** The VIP which you previously set aside for the Kubernetes API of this cluster. *)
  ingress_vip : string prop option; [@option]
      (** The VIP which you previously set aside for ingress traffic into this cluster. *)
}
[@@deriving yojson_of]
(** The VIPs used by the load balancer. *)

type google_gkeonprem_vmware_cluster__load_balancer = {
  f5_config :
    google_gkeonprem_vmware_cluster__load_balancer__f5_config list;
  manual_lb_config :
    google_gkeonprem_vmware_cluster__load_balancer__manual_lb_config
    list;
  metal_lb_config :
    google_gkeonprem_vmware_cluster__load_balancer__metal_lb_config
    list;
  vip_config :
    google_gkeonprem_vmware_cluster__load_balancer__vip_config list;
}
[@@deriving yojson_of]
(** Load Balancer configuration. *)

type google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config__control_plane_ip_block__ips = {
  hostname : string prop option; [@option]
      (** Hostname of the machine. VM's name will be used if this field is empty. *)
  ip : string prop option; [@option]
      (** IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24). *)
}
[@@deriving yojson_of]
(** The node's network configurations used by the VMware User Cluster. *)

type google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config__control_plane_ip_block = {
  gateway : string prop option; [@option]
      (** The network gateway used by the VMware User Cluster. *)
  netmask : string prop option; [@option]
      (** The netmask used by the VMware User Cluster. *)
  ips :
    google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config__control_plane_ip_block__ips
    list;
}
[@@deriving yojson_of]
(** Static IP addresses for the control plane nodes. *)

type google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config = {
  control_plane_ip_block :
    google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config__control_plane_ip_block
    list;
}
[@@deriving yojson_of]
(** Configuration for control plane V2 mode. *)

type google_gkeonprem_vmware_cluster__network_config__dhcp_ip_config = {
  enabled : bool prop;
      (** enabled is a flag to mark if DHCP IP allocation is
used for VMware user clusters. *)
}
[@@deriving yojson_of]
(** Configuration settings for a DHCP IP configuration. *)

type google_gkeonprem_vmware_cluster__network_config__host_config = {
  dns_search_domains : string prop list option; [@option]
      (** DNS search domains. *)
  dns_servers : string prop list option; [@option]
      (** DNS servers. *)
  ntp_servers : string prop list option; [@option]
      (** NTP servers. *)
}
[@@deriving yojson_of]
(** Represents common network settings irrespective of the host's IP address. *)

type google_gkeonprem_vmware_cluster__network_config__static_ip_config__ip_blocks__ips = {
  hostname : string prop option; [@option]
      (** Hostname of the machine. VM's name will be used if this field is empty. *)
  ip : string prop;
      (** IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24). *)
}
[@@deriving yojson_of]
(** The node's network configurations used by the VMware User Cluster. *)

type google_gkeonprem_vmware_cluster__network_config__static_ip_config__ip_blocks = {
  gateway : string prop;
      (** The network gateway used by the VMware User Cluster. *)
  netmask : string prop;
      (** The netmask used by the VMware User Cluster. *)
  ips :
    google_gkeonprem_vmware_cluster__network_config__static_ip_config__ip_blocks__ips
    list;
}
[@@deriving yojson_of]
(** Represents the configuration values for static IP allocation to nodes. *)

type google_gkeonprem_vmware_cluster__network_config__static_ip_config = {
  ip_blocks :
    google_gkeonprem_vmware_cluster__network_config__static_ip_config__ip_blocks
    list;
}
[@@deriving yojson_of]
(** Configuration settings for a static IP configuration. *)

type google_gkeonprem_vmware_cluster__network_config = {
  pod_address_cidr_blocks : string prop list;
      (** All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
Only a single range is supported. This field cannot be changed after creation. *)
  service_address_cidr_blocks : string prop list;
      (** All services in the cluster are assigned an RFC1918 IPv4 address
from these ranges. Only a single range is supported.. This field
cannot be changed after creation. *)
  vcenter_network : string prop;
      (** vcenter_network specifies vCenter network name. Inherited from the admin cluster. *)
  control_plane_v2_config :
    google_gkeonprem_vmware_cluster__network_config__control_plane_v2_config
    list;
  dhcp_ip_config :
    google_gkeonprem_vmware_cluster__network_config__dhcp_ip_config
    list;
  host_config :
    google_gkeonprem_vmware_cluster__network_config__host_config list;
  static_ip_config :
    google_gkeonprem_vmware_cluster__network_config__static_ip_config
    list;
}
[@@deriving yojson_of]
(** The VMware User Cluster network configuration. *)

type google_gkeonprem_vmware_cluster__storage = {
  vsphere_csi_disabled : bool prop;
      (** Whether or not to deploy vSphere CSI components in the VMware User Cluster.
Enabled by default. *)
}
[@@deriving yojson_of]
(** Storage configuration. *)

type google_gkeonprem_vmware_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gkeonprem_vmware_cluster__timeouts *)

type google_gkeonprem_vmware_cluster__upgrade_policy = {
  control_plane_only : bool prop option; [@option]
      (** Controls whether the upgrade applies to the control plane only. *)
}
[@@deriving yojson_of]
(** Specifies upgrade policy for the cluster. *)

type google_gkeonprem_vmware_cluster__vcenter = {
  address : string prop;  (** The vCenter IP address. *)
  ca_cert_data : string prop option; [@option]
      (** Contains the vCenter CA certificate public key for SSL verification. *)
  cluster : string prop option; [@option]
      (** The name of the vCenter cluster for the user cluster. *)
  datacenter : string prop option; [@option]
      (** The name of the vCenter datacenter for the user cluster. *)
  datastore : string prop option; [@option]
      (** The name of the vCenter datastore for the user cluster. *)
  folder : string prop option; [@option]
      (** The name of the vCenter folder for the user cluster. *)
  resource_pool : string prop option; [@option]
      (** The name of the vCenter resource pool for the user cluster. *)
  storage_policy_name : string prop option; [@option]
      (** The name of the vCenter storage policy for the user cluster. *)
}
[@@deriving yojson_of]
(** VmwareVCenterConfig specifies vCenter config for the user cluster.
Inherited from the admin cluster. *)

type google_gkeonprem_vmware_cluster__fleet = {
  membership : string prop;  (** membership *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_cluster__status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_cluster__status = {
  conditions :
    google_gkeonprem_vmware_cluster__status__conditions list;
      (** conditions *)
  error_message : string prop;  (** error_message *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_cluster__validation_check__status__result = {
  category : string prop;  (** category *)
  description : string prop;  (** description *)
  details : string prop;  (** details *)
  options : string prop;  (** options *)
  reason : string prop;  (** reason *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_cluster__validation_check__status = {
  result :
    google_gkeonprem_vmware_cluster__validation_check__status__result
    list;
      (** result *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_cluster__validation_check = {
  options : string prop;  (** options *)
  scenario : string prop;  (** scenario *)
  status :
    google_gkeonprem_vmware_cluster__validation_check__status list;
      (** status *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_cluster = {
  admin_cluster_membership : string prop;
      (** The admin cluster this VMware User Cluster belongs to.
This is the full resource name of the admin cluster's hub membership.
In the future, references to other resource types might be allowed if
admin clusters are modeled as their own resources. *)
  annotations : (string * string prop) list option; [@option]
      (** Annotations on the VMware User Cluster.
This field has the same restrictions as Kubernetes annotations.
The total size of all keys and values combined is limited to 256k.
Key can have 2 segments: prefix (optional) and name (required),
separated by a slash (/).
Prefix must be a DNS subdomain.
Name must be 63 characters or less, begin and end with alphanumerics,
with dashes (-), underscores (_), dots (.), and alphanumerics between.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  description : string prop option; [@option]
      (** A human readable description of this VMware User Cluster. *)
  enable_control_plane_v2 : bool prop option; [@option]
      (** Enable control plane V2. Default to false. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the resource. *)
  name : string prop;  (** The VMware cluster name. *)
  on_prem_version : string prop;
      (** The Anthos clusters on the VMware version for your user cluster. *)
  project : string prop option; [@option]  (** project *)
  vm_tracking_enabled : bool prop option; [@option]
      (** Enable VM tracking. *)
  anti_affinity_groups :
    google_gkeonprem_vmware_cluster__anti_affinity_groups list;
  authorization :
    google_gkeonprem_vmware_cluster__authorization list;
  auto_repair_config :
    google_gkeonprem_vmware_cluster__auto_repair_config list;
  control_plane_node :
    google_gkeonprem_vmware_cluster__control_plane_node list;
  dataplane_v2 : google_gkeonprem_vmware_cluster__dataplane_v2 list;
  load_balancer :
    google_gkeonprem_vmware_cluster__load_balancer list;
  network_config :
    google_gkeonprem_vmware_cluster__network_config list;
  storage : google_gkeonprem_vmware_cluster__storage list;
  timeouts : google_gkeonprem_vmware_cluster__timeouts option;
  upgrade_policy :
    google_gkeonprem_vmware_cluster__upgrade_policy list;
  vcenter : google_gkeonprem_vmware_cluster__vcenter list;
}
[@@deriving yojson_of]
(** google_gkeonprem_vmware_cluster *)

let google_gkeonprem_vmware_cluster ?annotations ?description
    ?enable_control_plane_v2 ?id ?project ?vm_tracking_enabled
    ?timeouts ~admin_cluster_membership ~location ~name
    ~on_prem_version ~anti_affinity_groups ~authorization
    ~auto_repair_config ~control_plane_node ~dataplane_v2
    ~load_balancer ~network_config ~storage ~upgrade_policy ~vcenter
    __resource_id =
  let __resource_type = "google_gkeonprem_vmware_cluster" in
  let __resource =
    {
      admin_cluster_membership;
      annotations;
      description;
      enable_control_plane_v2;
      id;
      location;
      name;
      on_prem_version;
      project;
      vm_tracking_enabled;
      anti_affinity_groups;
      authorization;
      auto_repair_config;
      control_plane_node;
      dataplane_v2;
      load_balancer;
      network_config;
      storage;
      timeouts;
      upgrade_policy;
      vcenter;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gkeonprem_vmware_cluster __resource);
  ()
