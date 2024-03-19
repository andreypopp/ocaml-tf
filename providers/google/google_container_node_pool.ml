(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type autoscaling = {
  location_policy : string prop option; [@option]
      (** Location policy specifies the algorithm used when scaling-up the node pool. BALANCED - Is a best effort policy that aims to balance the sizes of available zones. ANY - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs. *)
  max_node_count : float prop option; [@option]
      (** Maximum number of nodes per zone in the node pool. Must be >= min_node_count. Cannot be used with total limits. *)
  min_node_count : float prop option; [@option]
      (** Minimum number of nodes per zone in the node pool. Must be >=0 and <= max_node_count. Cannot be used with total limits. *)
  total_max_node_count : float prop option; [@option]
      (** Maximum number of all nodes in the node pool. Must be >= total_min_node_count. Cannot be used with per zone limits. *)
  total_min_node_count : float prop option; [@option]
      (** Minimum number of all nodes in the node pool. Must be >=0 and <= total_max_node_count. Cannot be used with per zone limits. *)
}
[@@deriving yojson_of]
(** Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage. *)

type management = {
  auto_repair : bool prop option; [@option]
      (** Whether the nodes will be automatically repaired. Enabled by default. *)
  auto_upgrade : bool prop option; [@option]
      (** Whether the nodes will be automatically upgraded. Enabled by default. *)
}
[@@deriving yojson_of]
(** Node management configuration, wherein auto-repair and auto-upgrade is configured. *)

type network_config__network_performance_config = {
  total_egress_bandwidth_tier : string prop;
      (** Specifies the total network bandwidth tier for the NodePool. *)
}
[@@deriving yojson_of]
(** Network bandwidth tier configuration. *)

type network_config__pod_cidr_overprovision_config = {
  disabled : bool prop;  (** disabled *)
}
[@@deriving yojson_of]
(** Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited *)

type network_config = {
  create_pod_range : bool prop option; [@option]
      (** Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified. *)
  enable_private_nodes : bool prop option; [@option]
      (** Whether nodes have internal IP addresses only. *)
  pod_ipv4_cidr_block : string prop option; [@option]
      (** The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use. *)
  pod_range : string prop option; [@option]
      (** The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID. *)
  network_performance_config :
    network_config__network_performance_config list;
  pod_cidr_overprovision_config :
    network_config__pod_cidr_overprovision_config list;
}
[@@deriving yojson_of]
(** Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. *)

type node_config__advanced_machine_features = {
  threads_per_core : float prop;
      (** The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. *)
}
[@@deriving yojson_of]
(** Specifies options for controlling advanced machine features. *)

type node_config__confidential_nodes = {
  enabled : bool prop;
      (** Whether Confidential Nodes feature is enabled for all nodes in this pool. *)
}
[@@deriving yojson_of]
(** Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can't be changed (or added/removed) after pool creation without deleting and recreating the entire pool. *)

type node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float prop;
      (** Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size. *)
}
[@@deriving yojson_of]
(** Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. *)

type node_config__fast_socket = {
  enabled : bool prop;
      (** Whether or not NCCL Fast Socket is enabled *)
}
[@@deriving yojson_of]
(** Enable or disable NCCL Fast Socket in the node pool. *)

type node_config__gcfs_config = {
  enabled : bool prop;  (** Whether or not GCFS is enabled *)
}
[@@deriving yojson_of]
(** GCFS configuration for this node. *)

type node_config__gvnic = {
  enabled : bool prop;  (** Whether or not gvnic is enabled *)
}
[@@deriving yojson_of]
(** Enable or disable gvnic in the node pool. *)

type node_config__host_maintenance_policy = {
  maintenance_interval : string prop;  (** . *)
}
[@@deriving yojson_of]
(** The maintenance policy for the hosts on which the GKE VMs run on. *)

type node_config__kubelet_config = {
  cpu_cfs_quota : bool prop option; [@option]
      (** Enable CPU CFS quota enforcement for containers that specify CPU limits. *)
  cpu_cfs_quota_period : string prop option; [@option]
      (** Set the CPU CFS quota period value 'cpu.cfs_period_us'. *)
  cpu_manager_policy : string prop;
      (** Control the CPU management policy on the node. *)
  pod_pids_limit : float prop option; [@option]
      (** Controls the maximum number of processes allowed to run in a pod. *)
}
[@@deriving yojson_of]
(** Node kubelet configs. *)

type node_config__linux_node_config = {
  cgroup_mode : string prop option; [@option]
      (** cgroupMode specifies the cgroup mode to be used on the node. *)
  sysctls : (string * string prop) list option; [@option]
      (** The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. *)
}
[@@deriving yojson_of]
(** Parameters that can be configured on Linux nodes. *)

type node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float prop;
      (** Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. *)
}
[@@deriving yojson_of]
(** Parameters for raw-block local NVMe SSDs. *)

type node_config__reservation_affinity = {
  consume_reservation_type : string prop;
      (** Corresponds to the type of reservation consumption. *)
  key : string prop option; [@option]
      (** The label key of a reservation resource. *)
  values : string prop list option; [@option]
      (** The label values of the reservation resource. *)
}
[@@deriving yojson_of]
(** The reservation affinity configuration for the node pool. *)

type node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
      (** Defines whether the instance has integrity monitoring enabled. *)
  enable_secure_boot : bool prop option; [@option]
      (** Defines whether the instance has Secure Boot enabled. *)
}
[@@deriving yojson_of]
(** Shielded Instance options. *)

type node_config__sole_tenant_config__node_affinity = {
  key : string prop;  (** . *)
  operator : string prop;  (** . *)
  values : string prop list;  (** . *)
}
[@@deriving yojson_of]
(** . *)

type node_config__sole_tenant_config = {
  node_affinity : node_config__sole_tenant_config__node_affinity list;
}
[@@deriving yojson_of]
(** Node affinity options for sole tenant node pools. *)

type node_config__taint = {
  effect : string prop;  (** Effect for taint. *)
  key : string prop;  (** Key for taint. *)
  value : string prop;  (** Value for taint. *)
}
[@@deriving yojson_of]
(** List of Kubernetes taints to be applied to each node. *)

type node_config__workload_metadata_config = {
  mode : string prop;
      (** Mode is the configuration for how to expose metadata to workloads running on the node. *)
}
[@@deriving yojson_of]
(** The workload metadata configuration for this node. *)

type node_config__effective_taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float prop;
      (** max_shared_clients_per_gpu *)
}
[@@deriving yojson_of]

type node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;  (** gpu_driver_version *)
}
[@@deriving yojson_of]

type node_config__guest_accelerator = {
  count : float prop;  (** count *)
  gpu_driver_installation_config :
    node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string prop;  (** gpu_partition_size *)
  gpu_sharing_config :
    node_config__guest_accelerator__gpu_sharing_config list;
      (** gpu_sharing_config *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type node_config = {
  boot_disk_kms_key : string prop option; [@option]
      (** The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. *)
  disk_size_gb : float prop option; [@option]
      (** Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. *)
  disk_type : string prop option; [@option]
      (** Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd *)
  enable_confidential_storage : bool prop option; [@option]
      (** If enabled boot disks are configured with confidential mode. *)
  guest_accelerator : node_config__guest_accelerator list option;
      [@option]
      (** List of the type and count of accelerator cards attached to the instance. *)
  image_type : string prop option; [@option]
      (** The image type to use for this node. Note that for a given image type, the latest version of it will be used. *)
  labels : (string * string prop) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. *)
  local_ssd_count : float prop option; [@option]
      (** The number of local SSD disks to be attached to the node. *)
  logging_variant : string prop option; [@option]
      (** Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. *)
  machine_type : string prop option; [@option]
      (** The name of a Google Compute Engine machine type. *)
  metadata : (string * string prop) list option; [@option]
      (** The metadata key/value pairs assigned to instances in the cluster. *)
  min_cpu_platform : string prop option; [@option]
      (** Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. *)
  node_group : string prop option; [@option]
      (** Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes. *)
  oauth_scopes : string prop list option; [@option]
      (** The set of Google API scopes to be made available on all of the node VMs. *)
  preemptible : bool prop option; [@option]
      (** Whether the nodes are created as preemptible VM instances. *)
  resource_labels : (string * string prop) list option; [@option]
      (** The GCE resource labels (a map of key/value pairs) to be applied to the node pool. *)
  resource_manager_tags : (string * string prop) list option;
      [@option]
      (** A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. *)
  service_account : string prop option; [@option]
      (** The Google Cloud Platform Service Account to be used by the node VMs. *)
  spot : bool prop option; [@option]
      (** Whether the nodes are created as spot VM instances. *)
  tags : string prop list option; [@option]
      (** The list of instance tags applied to all nodes. *)
  advanced_machine_features :
    node_config__advanced_machine_features list;
  confidential_nodes : node_config__confidential_nodes list;
  ephemeral_storage_local_ssd_config :
    node_config__ephemeral_storage_local_ssd_config list;
  fast_socket : node_config__fast_socket list;
  gcfs_config : node_config__gcfs_config list;
  gvnic : node_config__gvnic list;
  host_maintenance_policy :
    node_config__host_maintenance_policy list;
  kubelet_config : node_config__kubelet_config list;
  linux_node_config : node_config__linux_node_config list;
  local_nvme_ssd_block_config :
    node_config__local_nvme_ssd_block_config list;
  reservation_affinity : node_config__reservation_affinity list;
  shielded_instance_config :
    node_config__shielded_instance_config list;
  sole_tenant_config : node_config__sole_tenant_config list;
  taint : node_config__taint list;
  workload_metadata_config :
    node_config__workload_metadata_config list;
}
[@@deriving yojson_of]
(** The configuration of the nodepool *)

type placement_policy = {
  policy_name : string prop option; [@option]
      (** If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned. *)
  tpu_topology : string prop option; [@option]
      (** TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies *)
  type_ : string prop; [@key "type"]
      (** Type defines the type of placement policy *)
}
[@@deriving yojson_of]
(** Specifies the node placement policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop option; [@option]
      (** Number of blue nodes to drain in a batch. *)
  batch_percentage : float prop option; [@option]
      (** Percentage of the blue pool nodes to drain in a batch. *)
  batch_soak_duration : string prop option; [@option]
      (** Soak time after each batch gets drained. *)
}
[@@deriving yojson_of]
(** Standard rollout policy is the default policy for blue-green. *)

type upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop option; [@option]
      (** Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. *)
  standard_rollout_policy :
    upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
}
[@@deriving yojson_of]
(** Settings for BlueGreen node pool upgrade. *)

type upgrade_settings = {
  max_surge : float prop option; [@option]
      (** The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater. *)
  max_unavailable : float prop option; [@option]
      (** The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater. *)
  strategy : string prop option; [@option]
      (** Update strategy for the given nodepool. *)
  blue_green_settings : upgrade_settings__blue_green_settings list;
}
[@@deriving yojson_of]
(** Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. *)

type google_container_node_pool = {
  cluster : string prop;
      (** The cluster to create the node pool for. Cluster must be present in location provided for zonal clusters. *)
  id : string prop option; [@option]  (** id *)
  initial_node_count : float prop option; [@option]
      (** The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource. *)
  location : string prop option; [@option]
      (** The location (region or zone) of the cluster. *)
  max_pods_per_node : float prop option; [@option]
      (** The maximum number of pods per node in this node pool. Note that this does not work on node pools which are route-based - that is, node pools belonging to clusters that do not have IP Aliasing enabled. *)
  name : string prop option; [@option]
      (** The name of the node pool. If left blank, Terraform will auto-generate a unique name. *)
  name_prefix : string prop option; [@option]
      (** Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name. *)
  node_count : float prop option; [@option]
      (** The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling. *)
  node_locations : string prop list option; [@option]
      (** The list of zones in which the node pool's nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster's zone for zonal clusters. If unspecified, the cluster-level node_locations will be used. *)
  project : string prop option; [@option]
      (** The ID of the project in which to create the node pool. If blank, the provider-configured project will be used. *)
  version : string prop option; [@option]
      (** The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it's recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source's version_prefix field to approximate fuzzy versions in a Terraform-compatible way. *)
  autoscaling : autoscaling list;
  management : management list;
  network_config : network_config list;
  node_config : node_config list;
  placement_policy : placement_policy list;
  timeouts : timeouts option;
  upgrade_settings : upgrade_settings list;
}
[@@deriving yojson_of]
(** google_container_node_pool *)

let autoscaling ?location_policy ?max_node_count ?min_node_count
    ?total_max_node_count ?total_min_node_count () : autoscaling =
  {
    location_policy;
    max_node_count;
    min_node_count;
    total_max_node_count;
    total_min_node_count;
  }

let management ?auto_repair ?auto_upgrade () : management =
  { auto_repair; auto_upgrade }

let network_config__network_performance_config
    ~total_egress_bandwidth_tier () :
    network_config__network_performance_config =
  { total_egress_bandwidth_tier }

let network_config__pod_cidr_overprovision_config ~disabled () :
    network_config__pod_cidr_overprovision_config =
  { disabled }

let network_config ?create_pod_range ?enable_private_nodes
    ?pod_ipv4_cidr_block ?pod_range ~network_performance_config
    ~pod_cidr_overprovision_config () : network_config =
  {
    create_pod_range;
    enable_private_nodes;
    pod_ipv4_cidr_block;
    pod_range;
    network_performance_config;
    pod_cidr_overprovision_config;
  }

let node_config__advanced_machine_features ~threads_per_core () :
    node_config__advanced_machine_features =
  { threads_per_core }

let node_config__confidential_nodes ~enabled () :
    node_config__confidential_nodes =
  { enabled }

let node_config__ephemeral_storage_local_ssd_config ~local_ssd_count
    () : node_config__ephemeral_storage_local_ssd_config =
  { local_ssd_count }

let node_config__fast_socket ~enabled () : node_config__fast_socket =
  { enabled }

let node_config__gcfs_config ~enabled () : node_config__gcfs_config =
  { enabled }

let node_config__gvnic ~enabled () : node_config__gvnic = { enabled }

let node_config__host_maintenance_policy ~maintenance_interval () :
    node_config__host_maintenance_policy =
  { maintenance_interval }

let node_config__kubelet_config ?cpu_cfs_quota ?cpu_cfs_quota_period
    ?pod_pids_limit ~cpu_manager_policy () :
    node_config__kubelet_config =
  {
    cpu_cfs_quota;
    cpu_cfs_quota_period;
    cpu_manager_policy;
    pod_pids_limit;
  }

let node_config__linux_node_config ?cgroup_mode ?sysctls () :
    node_config__linux_node_config =
  { cgroup_mode; sysctls }

let node_config__local_nvme_ssd_block_config ~local_ssd_count () :
    node_config__local_nvme_ssd_block_config =
  { local_ssd_count }

let node_config__reservation_affinity ?key ?values
    ~consume_reservation_type () : node_config__reservation_affinity
    =
  { consume_reservation_type; key; values }

let node_config__shielded_instance_config
    ?enable_integrity_monitoring ?enable_secure_boot () :
    node_config__shielded_instance_config =
  { enable_integrity_monitoring; enable_secure_boot }

let node_config__sole_tenant_config__node_affinity ~key ~operator
    ~values () : node_config__sole_tenant_config__node_affinity =
  { key; operator; values }

let node_config__sole_tenant_config ~node_affinity () :
    node_config__sole_tenant_config =
  { node_affinity }

let node_config__taint ~effect ~key ~value () : node_config__taint =
  { effect; key; value }

let node_config__workload_metadata_config ~mode () :
    node_config__workload_metadata_config =
  { mode }

let node_config ?boot_disk_kms_key ?disk_size_gb ?disk_type
    ?enable_confidential_storage ?guest_accelerator ?image_type
    ?labels ?local_ssd_count ?logging_variant ?machine_type ?metadata
    ?min_cpu_platform ?node_group ?oauth_scopes ?preemptible
    ?resource_labels ?resource_manager_tags ?service_account ?spot
    ?tags ~advanced_machine_features ~confidential_nodes
    ~ephemeral_storage_local_ssd_config ~fast_socket ~gcfs_config
    ~gvnic ~host_maintenance_policy ~kubelet_config
    ~linux_node_config ~local_nvme_ssd_block_config
    ~reservation_affinity ~shielded_instance_config
    ~sole_tenant_config ~taint ~workload_metadata_config () :
    node_config =
  {
    boot_disk_kms_key;
    disk_size_gb;
    disk_type;
    enable_confidential_storage;
    guest_accelerator;
    image_type;
    labels;
    local_ssd_count;
    logging_variant;
    machine_type;
    metadata;
    min_cpu_platform;
    node_group;
    oauth_scopes;
    preemptible;
    resource_labels;
    resource_manager_tags;
    service_account;
    spot;
    tags;
    advanced_machine_features;
    confidential_nodes;
    ephemeral_storage_local_ssd_config;
    fast_socket;
    gcfs_config;
    gvnic;
    host_maintenance_policy;
    kubelet_config;
    linux_node_config;
    local_nvme_ssd_block_config;
    reservation_affinity;
    shielded_instance_config;
    sole_tenant_config;
    taint;
    workload_metadata_config;
  }

let placement_policy ?policy_name ?tpu_topology ~type_ () :
    placement_policy =
  { policy_name; tpu_topology; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let upgrade_settings__blue_green_settings__standard_rollout_policy
    ?batch_node_count ?batch_percentage ?batch_soak_duration () :
    upgrade_settings__blue_green_settings__standard_rollout_policy =
  { batch_node_count; batch_percentage; batch_soak_duration }

let upgrade_settings__blue_green_settings ?node_pool_soak_duration
    ~standard_rollout_policy () :
    upgrade_settings__blue_green_settings =
  { node_pool_soak_duration; standard_rollout_policy }

let upgrade_settings ?max_surge ?max_unavailable ?strategy
    ~blue_green_settings () : upgrade_settings =
  { max_surge; max_unavailable; strategy; blue_green_settings }

let google_container_node_pool ?id ?initial_node_count ?location
    ?max_pods_per_node ?name ?name_prefix ?node_count ?node_locations
    ?project ?version ?timeouts ~cluster ~autoscaling ~management
    ~network_config ~node_config ~placement_policy ~upgrade_settings
    () : google_container_node_pool =
  {
    cluster;
    id;
    initial_node_count;
    location;
    max_pods_per_node;
    name;
    name_prefix;
    node_count;
    node_locations;
    project;
    version;
    autoscaling;
    management;
    network_config;
    node_config;
    placement_policy;
    timeouts;
    upgrade_settings;
  }

type t = {
  cluster : string prop;
  id : string prop;
  initial_node_count : float prop;
  instance_group_urls : string list prop;
  location : string prop;
  managed_instance_group_urls : string list prop;
  max_pods_per_node : float prop;
  name : string prop;
  name_prefix : string prop;
  node_count : float prop;
  node_locations : string list prop;
  operation : string prop;
  project : string prop;
  version : string prop;
}

let register ?tf_module ?id ?initial_node_count ?location
    ?max_pods_per_node ?name ?name_prefix ?node_count ?node_locations
    ?project ?version ?timeouts ~cluster ~autoscaling ~management
    ~network_config ~node_config ~placement_policy ~upgrade_settings
    __resource_id =
  let __resource_type = "google_container_node_pool" in
  let __resource =
    google_container_node_pool ?id ?initial_node_count ?location
      ?max_pods_per_node ?name ?name_prefix ?node_count
      ?node_locations ?project ?version ?timeouts ~cluster
      ~autoscaling ~management ~network_config ~node_config
      ~placement_policy ~upgrade_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_node_pool __resource);
  let __resource_attributes =
    ({
       cluster =
         Prop.computed __resource_type __resource_id "cluster";
       id = Prop.computed __resource_type __resource_id "id";
       initial_node_count =
         Prop.computed __resource_type __resource_id
           "initial_node_count";
       instance_group_urls =
         Prop.computed __resource_type __resource_id
           "instance_group_urls";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_instance_group_urls =
         Prop.computed __resource_type __resource_id
           "managed_instance_group_urls";
       max_pods_per_node =
         Prop.computed __resource_type __resource_id
           "max_pods_per_node";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       node_count =
         Prop.computed __resource_type __resource_id "node_count";
       node_locations =
         Prop.computed __resource_type __resource_id "node_locations";
       operation =
         Prop.computed __resource_type __resource_id "operation";
       project =
         Prop.computed __resource_type __resource_id "project";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
