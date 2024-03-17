(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_node_pool__autoscaling = {
  location_policy : string option; [@option]
      (** Location policy specifies the algorithm used when scaling-up the node pool. BALANCED - Is a best effort policy that aims to balance the sizes of available zones. ANY - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs. *)
  max_node_count : float option; [@option]
      (** Maximum number of nodes per zone in the node pool. Must be >= min_node_count. Cannot be used with total limits. *)
  min_node_count : float option; [@option]
      (** Minimum number of nodes per zone in the node pool. Must be >=0 and <= max_node_count. Cannot be used with total limits. *)
  total_max_node_count : float option; [@option]
      (** Maximum number of all nodes in the node pool. Must be >= total_min_node_count. Cannot be used with per zone limits. *)
  total_min_node_count : float option; [@option]
      (** Minimum number of all nodes in the node pool. Must be >=0 and <= total_max_node_count. Cannot be used with per zone limits. *)
}
[@@deriving yojson_of]
(** Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage. *)

type google_container_node_pool__management = {
  auto_repair : bool option; [@option]
      (** Whether the nodes will be automatically repaired. Enabled by default. *)
  auto_upgrade : bool option; [@option]
      (** Whether the nodes will be automatically upgraded. Enabled by default. *)
}
[@@deriving yojson_of]
(** Node management configuration, wherein auto-repair and auto-upgrade is configured. *)

type google_container_node_pool__network_config__network_performance_config = {
  total_egress_bandwidth_tier : string;
      (** Specifies the total network bandwidth tier for the NodePool. *)
}
[@@deriving yojson_of]
(** Network bandwidth tier configuration. *)

type google_container_node_pool__network_config__pod_cidr_overprovision_config = {
  disabled : bool;  (** disabled *)
}
[@@deriving yojson_of]
(** Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited *)

type google_container_node_pool__network_config = {
  create_pod_range : bool option; [@option]
      (** Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified. *)
  enable_private_nodes : bool option; [@option]
      (** Whether nodes have internal IP addresses only. *)
  pod_ipv4_cidr_block : string option; [@option]
      (** The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use. *)
  pod_range : string option; [@option]
      (** The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID. *)
  network_performance_config :
    google_container_node_pool__network_config__network_performance_config
    list;
  pod_cidr_overprovision_config :
    google_container_node_pool__network_config__pod_cidr_overprovision_config
    list;
}
[@@deriving yojson_of]
(** Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. *)

type google_container_node_pool__node_config__advanced_machine_features = {
  threads_per_core : float;
      (** The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. *)
}
[@@deriving yojson_of]
(** Specifies options for controlling advanced machine features. *)

type google_container_node_pool__node_config__confidential_nodes = {
  enabled : bool;
      (** Whether Confidential Nodes feature is enabled for all nodes in this pool. *)
}
[@@deriving yojson_of]
(** Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can't be changed (or added/removed) after pool creation without deleting and recreating the entire pool. *)

type google_container_node_pool__node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float;
      (** Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size. *)
}
[@@deriving yojson_of]
(** Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. *)

type google_container_node_pool__node_config__fast_socket = {
  enabled : bool;  (** Whether or not NCCL Fast Socket is enabled *)
}
[@@deriving yojson_of]
(** Enable or disable NCCL Fast Socket in the node pool. *)

type google_container_node_pool__node_config__gcfs_config = {
  enabled : bool;  (** Whether or not GCFS is enabled *)
}
[@@deriving yojson_of]
(** GCFS configuration for this node. *)

type google_container_node_pool__node_config__gvnic = {
  enabled : bool;  (** Whether or not gvnic is enabled *)
}
[@@deriving yojson_of]
(** Enable or disable gvnic in the node pool. *)

type google_container_node_pool__node_config__host_maintenance_policy = {
  maintenance_interval : string;  (** . *)
}
[@@deriving yojson_of]
(** The maintenance policy for the hosts on which the GKE VMs run on. *)

type google_container_node_pool__node_config__kubelet_config = {
  cpu_cfs_quota : bool option; [@option]
      (** Enable CPU CFS quota enforcement for containers that specify CPU limits. *)
  cpu_cfs_quota_period : string option; [@option]
      (** Set the CPU CFS quota period value 'cpu.cfs_period_us'. *)
  cpu_manager_policy : string;
      (** Control the CPU management policy on the node. *)
  pod_pids_limit : float option; [@option]
      (** Controls the maximum number of processes allowed to run in a pod. *)
}
[@@deriving yojson_of]
(** Node kubelet configs. *)

type google_container_node_pool__node_config__linux_node_config = {
  cgroup_mode : string option; [@option]
      (** cgroupMode specifies the cgroup mode to be used on the node. *)
  sysctls : (string * string) list option; [@option]
      (** The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. *)
}
[@@deriving yojson_of]
(** Parameters that can be configured on Linux nodes. *)

type google_container_node_pool__node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float;
      (** Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. *)
}
[@@deriving yojson_of]
(** Parameters for raw-block local NVMe SSDs. *)

type google_container_node_pool__node_config__reservation_affinity = {
  consume_reservation_type : string;
      (** Corresponds to the type of reservation consumption. *)
  key : string option; [@option]
      (** The label key of a reservation resource. *)
  values : string list option; [@option]
      (** The label values of the reservation resource. *)
}
[@@deriving yojson_of]
(** The reservation affinity configuration for the node pool. *)

type google_container_node_pool__node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool option; [@option]
      (** Defines whether the instance has integrity monitoring enabled. *)
  enable_secure_boot : bool option; [@option]
      (** Defines whether the instance has Secure Boot enabled. *)
}
[@@deriving yojson_of]
(** Shielded Instance options. *)

type google_container_node_pool__node_config__sole_tenant_config__node_affinity = {
  key : string;  (** . *)
  operator : string;  (** . *)
  values : string list;  (** . *)
}
[@@deriving yojson_of]
(** . *)

type google_container_node_pool__node_config__sole_tenant_config = {
  node_affinity :
    google_container_node_pool__node_config__sole_tenant_config__node_affinity
    list;
}
[@@deriving yojson_of]
(** Node affinity options for sole tenant node pools. *)

type google_container_node_pool__node_config__taint = {
  effect : string;  (** Effect for taint. *)
  key : string;  (** Key for taint. *)
  value : string;  (** Value for taint. *)
}
[@@deriving yojson_of]
(** List of Kubernetes taints to be applied to each node. *)

type google_container_node_pool__node_config__workload_metadata_config = {
  mode : string;
      (** Mode is the configuration for how to expose metadata to workloads running on the node. *)
}
[@@deriving yojson_of]
(** The workload metadata configuration for this node. *)

type google_container_node_pool__node_config__effective_taints = {
  effect : string;  (** effect *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type google_container_node_pool__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float;
      (** max_shared_clients_per_gpu *)
}
[@@deriving yojson_of]

type google_container_node_pool__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string;  (** gpu_driver_version *)
}
[@@deriving yojson_of]

type google_container_node_pool__node_config__guest_accelerator = {
  count : float;  (** count *)
  gpu_driver_installation_config :
    google_container_node_pool__node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string;  (** gpu_partition_size *)
  gpu_sharing_config :
    google_container_node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
      (** gpu_sharing_config *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_container_node_pool__node_config = {
  boot_disk_kms_key : string option; [@option]
      (** The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. *)
  disk_size_gb : float option; [@option]
      (** Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. *)
  disk_type : string option; [@option]
      (** Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd *)
  effective_taints :
    google_container_node_pool__node_config__effective_taints list;
      (** List of kubernetes taints applied to each node. *)
  enable_confidential_storage : bool option; [@option]
      (** If enabled boot disks are configured with confidential mode. *)
  guest_accelerator :
    google_container_node_pool__node_config__guest_accelerator list
    option;
      [@option]
      (** List of the type and count of accelerator cards attached to the instance. *)
  image_type : string option; [@option]
      (** The image type to use for this node. Note that for a given image type, the latest version of it will be used. *)
  labels : (string * string) list option; [@option]
      (** The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. *)
  local_ssd_count : float option; [@option]
      (** The number of local SSD disks to be attached to the node. *)
  logging_variant : string option; [@option]
      (** Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. *)
  machine_type : string option; [@option]
      (** The name of a Google Compute Engine machine type. *)
  metadata : (string * string) list option; [@option]
      (** The metadata key/value pairs assigned to instances in the cluster. *)
  min_cpu_platform : string option; [@option]
      (** Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. *)
  node_group : string option; [@option]
      (** Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes. *)
  oauth_scopes : string list option; [@option]
      (** The set of Google API scopes to be made available on all of the node VMs. *)
  preemptible : bool option; [@option]
      (** Whether the nodes are created as preemptible VM instances. *)
  resource_labels : (string * string) list option; [@option]
      (** The GCE resource labels (a map of key/value pairs) to be applied to the node pool. *)
  resource_manager_tags : (string * string) list option; [@option]
      (** A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. *)
  service_account : string option; [@option]
      (** The Google Cloud Platform Service Account to be used by the node VMs. *)
  spot : bool option; [@option]
      (** Whether the nodes are created as spot VM instances. *)
  tags : string list option; [@option]
      (** The list of instance tags applied to all nodes. *)
  advanced_machine_features :
    google_container_node_pool__node_config__advanced_machine_features
    list;
  confidential_nodes :
    google_container_node_pool__node_config__confidential_nodes list;
  ephemeral_storage_local_ssd_config :
    google_container_node_pool__node_config__ephemeral_storage_local_ssd_config
    list;
  fast_socket :
    google_container_node_pool__node_config__fast_socket list;
  gcfs_config :
    google_container_node_pool__node_config__gcfs_config list;
  gvnic : google_container_node_pool__node_config__gvnic list;
  host_maintenance_policy :
    google_container_node_pool__node_config__host_maintenance_policy
    list;
  kubelet_config :
    google_container_node_pool__node_config__kubelet_config list;
  linux_node_config :
    google_container_node_pool__node_config__linux_node_config list;
  local_nvme_ssd_block_config :
    google_container_node_pool__node_config__local_nvme_ssd_block_config
    list;
  reservation_affinity :
    google_container_node_pool__node_config__reservation_affinity
    list;
  shielded_instance_config :
    google_container_node_pool__node_config__shielded_instance_config
    list;
  sole_tenant_config :
    google_container_node_pool__node_config__sole_tenant_config list;
  taint : google_container_node_pool__node_config__taint list;
  workload_metadata_config :
    google_container_node_pool__node_config__workload_metadata_config
    list;
}
[@@deriving yojson_of]
(** The configuration of the nodepool *)

type google_container_node_pool__placement_policy = {
  policy_name : string option; [@option]
      (** If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned. *)
  tpu_topology : string option; [@option]
      (** TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies *)
  type_ : string; [@key "type"]
      (** Type defines the type of placement policy *)
}
[@@deriving yojson_of]
(** Specifies the node placement policy *)

type google_container_node_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_container_node_pool__timeouts *)

type google_container_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float option; [@option]
      (** Number of blue nodes to drain in a batch. *)
  batch_percentage : float option; [@option]
      (** Percentage of the blue pool nodes to drain in a batch. *)
  batch_soak_duration : string option; [@option]
      (** Soak time after each batch gets drained. *)
}
[@@deriving yojson_of]
(** Standard rollout policy is the default policy for blue-green. *)

type google_container_node_pool__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string option; [@option]
      (** Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. *)
  standard_rollout_policy :
    google_container_node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
}
[@@deriving yojson_of]
(** Settings for BlueGreen node pool upgrade. *)

type google_container_node_pool__upgrade_settings = {
  max_surge : float option; [@option]
      (** The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater. *)
  max_unavailable : float option; [@option]
      (** The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater. *)
  strategy : string option; [@option]
      (** Update strategy for the given nodepool. *)
  blue_green_settings :
    google_container_node_pool__upgrade_settings__blue_green_settings
    list;
}
[@@deriving yojson_of]
(** Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. *)

type google_container_node_pool = {
  cluster : string;
      (** The cluster to create the node pool for. Cluster must be present in location provided for zonal clusters. *)
  autoscaling : google_container_node_pool__autoscaling list;
  management : google_container_node_pool__management list;
  network_config : google_container_node_pool__network_config list;
  node_config : google_container_node_pool__node_config list;
  placement_policy :
    google_container_node_pool__placement_policy list;
  timeouts : google_container_node_pool__timeouts option;
  upgrade_settings :
    google_container_node_pool__upgrade_settings list;
}
[@@deriving yojson_of]
(** google_container_node_pool *)

let google_container_node_pool ?timeouts ~cluster ~autoscaling
    ~management ~network_config ~node_config ~placement_policy
    ~upgrade_settings __resource_id =
  let __resource_type = "google_container_node_pool" in
  let __resource =
    {
      cluster;
      autoscaling;
      management;
      network_config;
      node_config;
      placement_policy;
      timeouts;
      upgrade_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_node_pool __resource);
  ()
