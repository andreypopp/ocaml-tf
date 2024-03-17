(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_cluster__addons_config__cloudrun_config = {
  disabled : bool prop;  (** disabled *)
  load_balancer_type : string prop option; [@option]
      (** load_balancer_type *)
}
[@@deriving yojson_of]
(** The status of the CloudRun addon. It is disabled by default. Set disabled = false to enable. *)

type google_container_cluster__addons_config__config_connector_config = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** The of the Config Connector addon. *)

type google_container_cluster__addons_config__dns_cache_config = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** The status of the NodeLocal DNSCache addon. It is disabled by default. Set enabled = true to enable. *)

type google_container_cluster__addons_config__gce_persistent_disk_csi_driver_config = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** Whether this cluster should enable the Google Compute Engine Persistent Disk Container Storage Interface (CSI) Driver. Set enabled = true to enable. The Compute Engine persistent disk CSI Driver is enabled by default on newly created clusters for the following versions: Linux clusters: GKE version 1.18.10-gke.2100 or later, or 1.19.3-gke.2100 or later. *)

type google_container_cluster__addons_config__gcp_filestore_csi_driver_config = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** The status of the Filestore CSI driver addon, which allows the usage of filestore instance as volumes. Defaults to disabled; set enabled = true to enable. *)

type google_container_cluster__addons_config__gcs_fuse_csi_driver_config = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** The status of the GCS Fuse CSI driver addon, which allows the usage of gcs bucket as volumes. Defaults to disabled; set enabled = true to enable. *)

type google_container_cluster__addons_config__gke_backup_agent_config = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** The status of the Backup for GKE Agent addon. It is disabled by default. Set enabled = true to enable. *)

type google_container_cluster__addons_config__horizontal_pod_autoscaling = {
  disabled : bool prop;  (** disabled *)
}
[@@deriving yojson_of]
(** The status of the Horizontal Pod Autoscaling addon, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods. It ensures that a Heapster pod is running in the cluster, which is also used by the Cloud Monitoring service. It is enabled by default; set disabled = true to disable. *)

type google_container_cluster__addons_config__http_load_balancing = {
  disabled : bool prop;  (** disabled *)
}
[@@deriving yojson_of]
(** The status of the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster. It is enabled by default; set disabled = true to disable. *)

type google_container_cluster__addons_config__network_policy_config = {
  disabled : bool prop;  (** disabled *)
}
[@@deriving yojson_of]
(** Whether we should enable the network policy addon for the master. This must be enabled in order to enable network policy for the nodes. To enable this, you must also define a network_policy block, otherwise nothing will happen. It can only be disabled if the nodes already do not have network policies enabled. Defaults to disabled; set disabled = false to enable. *)

type google_container_cluster__addons_config = {
  cloudrun_config :
    google_container_cluster__addons_config__cloudrun_config list;
  config_connector_config :
    google_container_cluster__addons_config__config_connector_config
    list;
  dns_cache_config :
    google_container_cluster__addons_config__dns_cache_config list;
  gce_persistent_disk_csi_driver_config :
    google_container_cluster__addons_config__gce_persistent_disk_csi_driver_config
    list;
  gcp_filestore_csi_driver_config :
    google_container_cluster__addons_config__gcp_filestore_csi_driver_config
    list;
  gcs_fuse_csi_driver_config :
    google_container_cluster__addons_config__gcs_fuse_csi_driver_config
    list;
  gke_backup_agent_config :
    google_container_cluster__addons_config__gke_backup_agent_config
    list;
  horizontal_pod_autoscaling :
    google_container_cluster__addons_config__horizontal_pod_autoscaling
    list;
  http_load_balancing :
    google_container_cluster__addons_config__http_load_balancing list;
  network_policy_config :
    google_container_cluster__addons_config__network_policy_config
    list;
}
[@@deriving yojson_of]
(** The configuration for addons supported by GKE. *)

type google_container_cluster__authenticator_groups_config = {
  security_group : string prop;
      (** The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com. *)
}
[@@deriving yojson_of]
(** Configuration for the Google Groups for GKE feature. *)

type google_container_cluster__binary_authorization = {
  enabled : bool prop option; [@option]
      (** Enable Binary Authorization for this cluster. *)
  evaluation_mode : string prop option; [@option]
      (** Mode of operation for Binary Authorization policy evaluation. *)
}
[@@deriving yojson_of]
(** Configuration options for the Binary Authorization feature. *)

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options = {
  auto_upgrade_start_time : string prop;
      (** auto_upgrade_start_time *)
  description : string prop;  (** description *)
}
[@@deriving yojson_of]

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__management = {
  auto_repair : bool prop option; [@option]
      (** Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered. *)
  auto_upgrade : bool prop option; [@option]
      (** Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes. *)
  upgrade_options :
    google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__management__upgrade_options
    list;
      (** Specifies the Auto Upgrade knobs for the node pool. *)
}
[@@deriving yojson_of]
(** NodeManagement configuration for this NodePool. *)

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
      (** Defines whether the instance has integrity monitoring enabled. *)
  enable_secure_boot : bool prop option; [@option]
      (** Defines whether the instance has Secure Boot enabled. *)
}
[@@deriving yojson_of]
(** Shielded Instance options. *)

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop option; [@option]
      (** Number of blue nodes to drain in a batch. *)
  batch_percentage : float prop option; [@option]
      (** Percentage of the bool pool nodes to drain in a batch. The range of this field should be (0.0, 1.0]. *)
  batch_soak_duration : string prop option; [@option]
      (** Soak time after each batch gets drained.

																			A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Standard policy for the blue-green upgrade. *)

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop option; [@option]
      (** Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.

																A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  standard_rollout_policy :
    google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
}
[@@deriving yojson_of]
(** Settings for blue-green upgrade strategy. *)

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings = {
  max_surge : float prop option; [@option]
      (** The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process. *)
  max_unavailable : float prop option; [@option]
      (** The maximum number of nodes that can be simultaneously unavailable during the upgrade process. *)
  strategy : string prop option; [@option]
      (** Update strategy of the node pool. *)
  blue_green_settings :
    google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings__blue_green_settings
    list;
}
[@@deriving yojson_of]
(** Specifies the upgrade settings for NAP created node pools *)

type google_container_cluster__cluster_autoscaling__auto_provisioning_defaults = {
  boot_disk_kms_key : string prop option; [@option]
      (** The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. *)
  disk_size : float prop option; [@option]
      (** Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. *)
  disk_type : string prop option; [@option]
      (** Type of the disk attached to each node. *)
  image_type : string prop option; [@option]
      (** The default image type used by NAP once a new node pool is being created. *)
  min_cpu_platform : string prop option; [@option]
      (** Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell. *)
  oauth_scopes : string prop list option; [@option]
      (** Scopes that are used by NAP when creating node pools. *)
  service_account : string prop option; [@option]
      (** The Google Cloud Platform Service Account to be used by the node VMs. *)
  management :
    google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__management
    list;
  shielded_instance_config :
    google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__shielded_instance_config
    list;
  upgrade_settings :
    google_container_cluster__cluster_autoscaling__auto_provisioning_defaults__upgrade_settings
    list;
}
[@@deriving yojson_of]
(** Contains defaults for a node pool created by NAP. *)

type google_container_cluster__cluster_autoscaling__resource_limits = {
  maximum : float prop option; [@option]
      (** Maximum amount of the resource in the cluster. *)
  minimum : float prop option; [@option]
      (** Minimum amount of the resource in the cluster. *)
  resource_type : string prop;
      (** The type of the resource. For example, cpu and memory. See the guide to using Node Auto-Provisioning for a list of types. *)
}
[@@deriving yojson_of]
(** Global constraints for machine resources in the cluster. Configuring the cpu and memory types is required if node auto-provisioning is enabled. These limits will apply to node pool autoscaling in addition to node auto-provisioning. *)

type google_container_cluster__cluster_autoscaling = {
  autoscaling_profile : string prop option; [@option]
      (** Configuration options for the Autoscaling profile feature, which lets you choose whether the cluster autoscaler should optimize for resource utilization or resource availability when deciding to remove nodes from a cluster. Can be BALANCED or OPTIMIZE_UTILIZATION. Defaults to BALANCED. *)
  enabled : bool prop option; [@option]
      (** Whether node auto-provisioning is enabled. Resource limits for cpu and memory must be defined to enable node auto-provisioning. *)
  auto_provisioning_defaults :
    google_container_cluster__cluster_autoscaling__auto_provisioning_defaults
    list;
  resource_limits :
    google_container_cluster__cluster_autoscaling__resource_limits
    list;
}
[@@deriving yojson_of]
(** Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs of the cluster's workload. See the guide to using Node Auto-Provisioning for more details. *)

type google_container_cluster__confidential_nodes = {
  enabled : bool prop;
      (** Whether Confidential Nodes feature is enabled for all nodes in this cluster. *)
}
[@@deriving yojson_of]
(** Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can't be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. *)

type google_container_cluster__cost_management_config = {
  enabled : bool prop;
      (** Whether to enable GKE cost allocation. When you enable GKE cost allocation, the cluster name and namespace of your GKE workloads appear in the labels field of the billing export to BigQuery. Defaults to false. *)
}
[@@deriving yojson_of]
(** Cost management configuration for the cluster. *)

type google_container_cluster__database_encryption = {
  key_name : string prop option; [@option]
      (** The key to use to encrypt/decrypt secrets. *)
  state : string prop;  (** ENCRYPTED or DECRYPTED. *)
}
[@@deriving yojson_of]
(** Application-layer Secrets Encryption settings. The object format is {state = string, key_name = string}. Valid values of state are: ENCRYPTED; DECRYPTED. key_name is the name of a CloudKMS key. *)

type google_container_cluster__default_snat_status = {
  disabled : bool prop;
      (** When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic. *)
}
[@@deriving yojson_of]
(** Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled. *)

type google_container_cluster__dns_config = {
  cluster_dns : string prop option; [@option]
      (** Which in-cluster DNS provider should be used. *)
  cluster_dns_domain : string prop option; [@option]
      (** The suffix used for all cluster service records. *)
  cluster_dns_scope : string prop option; [@option]
      (** The scope of access to cluster DNS records. *)
}
[@@deriving yojson_of]
(** Configuration for Cloud DNS for Kubernetes Engine. *)

type google_container_cluster__enable_k8s_beta_apis = {
  enabled_apis : string prop list;
      (** Enabled Kubernetes Beta APIs. *)
}
[@@deriving yojson_of]
(** Configuration for Kubernetes Beta APIs. *)

type google_container_cluster__fleet = {
  membership : string prop;
      (** Full resource name of the registered fleet membership of the cluster. *)
  membership_id : string prop;
      (** Short name of the fleet membership, for example member-1. *)
  membership_location : string prop;
      (** Location of the fleet membership, for example us-central1. *)
  pre_registered : bool prop;
      (** Whether the cluster has been registered via the fleet API. *)
  project : string prop option; [@option]
      (** The Fleet host project of the cluster. *)
}
[@@deriving yojson_of]
(** Fleet configuration of the cluster. *)

type google_container_cluster__gateway_api_config = {
  channel : string prop;
      (** The Gateway API release channel to use for Gateway API. *)
}
[@@deriving yojson_of]
(** Configuration for GKE Gateway API controller. *)

type google_container_cluster__identity_service_config = {
  enabled : bool prop option; [@option]
      (** Whether to enable the Identity Service component. *)
}
[@@deriving yojson_of]
(** Configuration for Identity Service which allows customers to use external identity providers with the K8S API. *)

type google_container_cluster__ip_allocation_policy__additional_pod_ranges_config = {
  pod_range_names : string prop list;
      (** Name for pod secondary ipv4 range which has the actual range defined ahead. *)
}
[@@deriving yojson_of]
(** AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message. *)

type google_container_cluster__ip_allocation_policy__pod_cidr_overprovision_config = {
  disabled : bool prop;  (** disabled *)
}
[@@deriving yojson_of]
(** Configuration for cluster level pod cidr overprovision. Default is disabled=false. *)

type google_container_cluster__ip_allocation_policy = {
  cluster_ipv4_cidr_block : string prop option; [@option]
      (** The IP address range for the cluster pod IPs. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. *)
  cluster_secondary_range_name : string prop option; [@option]
      (** The name of the existing secondary range in the cluster's subnetwork to use for pod IP addresses. Alternatively, cluster_ipv4_cidr_block can be used to automatically create a GKE-managed one. *)
  services_ipv4_cidr_block : string prop option; [@option]
      (** The IP address range of the services IPs in this cluster. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) from the RFC-1918 private networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to pick a specific range to use. *)
  services_secondary_range_name : string prop option; [@option]
      (** The name of the existing secondary range in the cluster's subnetwork to use for service ClusterIPs. Alternatively, services_ipv4_cidr_block can be used to automatically create a GKE-managed one. *)
  stack_type : string prop option; [@option]
      (** The IP Stack type of the cluster. Choose between IPV4 and IPV4_IPV6. Default type is IPV4 Only if not set *)
  additional_pod_ranges_config :
    google_container_cluster__ip_allocation_policy__additional_pod_ranges_config
    list;
  pod_cidr_overprovision_config :
    google_container_cluster__ip_allocation_policy__pod_cidr_overprovision_config
    list;
}
[@@deriving yojson_of]
(** Configuration of cluster IP allocation for VPC-native clusters. Adding this block enables IP aliasing, making the cluster VPC-native instead of routes-based. *)

type google_container_cluster__logging_config = {
  enable_components : string prop list;
      (** GKE components exposing logs. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, SCHEDULER, and WORKLOADS. *)
}
[@@deriving yojson_of]
(** Logging configuration for the cluster. *)

type google_container_cluster__maintenance_policy__daily_maintenance_window = {
  duration : string prop;  (** duration *)
  start_time : string prop;  (** start_time *)
}
[@@deriving yojson_of]
(** Time window specified for daily maintenance operations. Specify start_time in RFC3339 format HH:MM”, where HH : [00-23] and MM : [00-59] GMT. *)

type google_container_cluster__maintenance_policy__maintenance_exclusion__exclusion_options = {
  scope : string prop;
      (** The scope of automatic upgrades to restrict in the exclusion window. *)
}
[@@deriving yojson_of]
(** Maintenance exclusion related options. *)

type google_container_cluster__maintenance_policy__maintenance_exclusion = {
  end_time : string prop;  (** end_time *)
  exclusion_name : string prop;  (** exclusion_name *)
  start_time : string prop;  (** start_time *)
  exclusion_options :
    google_container_cluster__maintenance_policy__maintenance_exclusion__exclusion_options
    list;
}
[@@deriving yojson_of]
(** Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows. *)

type google_container_cluster__maintenance_policy__recurring_window = {
  end_time : string prop;  (** end_time *)
  recurrence : string prop;  (** recurrence *)
  start_time : string prop;  (** start_time *)
}
[@@deriving yojson_of]
(** Time window for recurring maintenance operations. *)

type google_container_cluster__maintenance_policy = {
  daily_maintenance_window :
    google_container_cluster__maintenance_policy__daily_maintenance_window
    list;
  maintenance_exclusion :
    google_container_cluster__maintenance_policy__maintenance_exclusion
    list;
  recurring_window :
    google_container_cluster__maintenance_policy__recurring_window
    list;
}
[@@deriving yojson_of]
(** The maintenance policy to use for the cluster. *)

type google_container_cluster__master_auth__client_certificate_config = {
  issue_client_certificate : bool prop;
      (** Whether client certificate authorization is enabled for this cluster. *)
}
[@@deriving yojson_of]
(** Whether client certificate authorization is enabled for this cluster. *)

type google_container_cluster__master_auth = {
  client_certificate : string prop;
      (** Base64 encoded public certificate used by clients to authenticate to the cluster endpoint. *)
  client_key : string prop;
      (** Base64 encoded private key used by clients to authenticate to the cluster endpoint. *)
  cluster_ca_certificate : string prop;
      (** Base64 encoded public certificate that is the root of trust for the cluster. *)
  client_certificate_config :
    google_container_cluster__master_auth__client_certificate_config
    list;
}
[@@deriving yojson_of]
(** The authentication information for accessing the Kubernetes master. Some values in this block are only returned by the API if your service account has permission to get credentials for your GKE cluster. If you see an unexpected diff unsetting your client cert, ensure you have the container.clusters.getCredentials permission. *)

type google_container_cluster__master_authorized_networks_config__cidr_blocks = {
  cidr_block : string prop;
      (** External network that can access Kubernetes master through HTTPS. Must be specified in CIDR notation. *)
  display_name : string prop option; [@option]
      (** Field for users to identify CIDR blocks. *)
}
[@@deriving yojson_of]
(** External networks that can access the Kubernetes cluster master through HTTPS. *)

type google_container_cluster__master_authorized_networks_config = {
  gcp_public_cidrs_access_enabled : bool prop option; [@option]
      (** Whether master is accessbile via Google Compute Engine Public IP addresses. *)
  cidr_blocks :
    google_container_cluster__master_authorized_networks_config__cidr_blocks
    list;
}
[@@deriving yojson_of]
(** The desired configuration options for master authorized networks. Omit the nested cidr_blocks attribute to disallow external access (except the cluster node IPs, which GKE automatically whitelists). *)

type google_container_cluster__mesh_certificates = {
  enable_certificates : bool prop;
      (** When enabled the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster. *)
}
[@@deriving yojson_of]
(** If set, and enable_certificates=true, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster. *)

type google_container_cluster__monitoring_config__advanced_datapath_observability_config = {
  enable_metrics : bool prop;
      (** Whether or not the advanced datapath metrics are enabled. *)
  enable_relay : bool prop option; [@option]
      (** Whether or not Relay is enabled. *)
  relay_mode : string prop option; [@option]
      (** Mode used to make Relay available. *)
}
[@@deriving yojson_of]
(** Configuration of Advanced Datapath Observability features. *)

type google_container_cluster__monitoring_config__managed_prometheus = {
  enabled : bool prop;
      (** Whether or not the managed collection is enabled. *)
}
[@@deriving yojson_of]
(** Configuration for Google Cloud Managed Services for Prometheus. *)

type google_container_cluster__monitoring_config = {
  enable_components : string prop list option; [@option]
      (** GKE components exposing metrics. Valid values include SYSTEM_COMPONENTS, APISERVER, SCHEDULER, CONTROLLER_MANAGER, STORAGE, HPA, POD, DAEMONSET, DEPLOYMENT and STATEFULSET. *)
  advanced_datapath_observability_config :
    google_container_cluster__monitoring_config__advanced_datapath_observability_config
    list;
  managed_prometheus :
    google_container_cluster__monitoring_config__managed_prometheus
    list;
}
[@@deriving yojson_of]
(** Monitoring configuration for the cluster. *)

type google_container_cluster__network_policy = {
  enabled : bool prop;
      (** Whether network policy is enabled on the cluster. *)
  provider : string prop option; [@option]
      (** The selected network policy provider. *)
}
[@@deriving yojson_of]
(** Configuration options for the NetworkPolicy feature. *)

type google_container_cluster__node_config__advanced_machine_features = {
  threads_per_core : float prop;
      (** The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. *)
}
[@@deriving yojson_of]
(** Specifies options for controlling advanced machine features. *)

type google_container_cluster__node_config__confidential_nodes = {
  enabled : bool prop;
      (** Whether Confidential Nodes feature is enabled for all nodes in this pool. *)
}
[@@deriving yojson_of]
(** Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can't be changed (or added/removed) after pool creation without deleting and recreating the entire pool. *)

type google_container_cluster__node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float prop;
      (** Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size. *)
}
[@@deriving yojson_of]
(** Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. *)

type google_container_cluster__node_config__fast_socket = {
  enabled : bool prop;
      (** Whether or not NCCL Fast Socket is enabled *)
}
[@@deriving yojson_of]
(** Enable or disable NCCL Fast Socket in the node pool. *)

type google_container_cluster__node_config__gcfs_config = {
  enabled : bool prop;  (** Whether or not GCFS is enabled *)
}
[@@deriving yojson_of]
(** GCFS configuration for this node. *)

type google_container_cluster__node_config__gvnic = {
  enabled : bool prop;  (** Whether or not gvnic is enabled *)
}
[@@deriving yojson_of]
(** Enable or disable gvnic in the node pool. *)

type google_container_cluster__node_config__host_maintenance_policy = {
  maintenance_interval : string prop;  (** . *)
}
[@@deriving yojson_of]
(** The maintenance policy for the hosts on which the GKE VMs run on. *)

type google_container_cluster__node_config__kubelet_config = {
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

type google_container_cluster__node_config__linux_node_config = {
  cgroup_mode : string prop option; [@option]
      (** cgroupMode specifies the cgroup mode to be used on the node. *)
  sysctls : (string * string prop) list option; [@option]
      (** The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. *)
}
[@@deriving yojson_of]
(** Parameters that can be configured on Linux nodes. *)

type google_container_cluster__node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float prop;
      (** Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. *)
}
[@@deriving yojson_of]
(** Parameters for raw-block local NVMe SSDs. *)

type google_container_cluster__node_config__reservation_affinity = {
  consume_reservation_type : string prop;
      (** Corresponds to the type of reservation consumption. *)
  key : string prop option; [@option]
      (** The label key of a reservation resource. *)
  values : string prop list option; [@option]
      (** The label values of the reservation resource. *)
}
[@@deriving yojson_of]
(** The reservation affinity configuration for the node pool. *)

type google_container_cluster__node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
      (** Defines whether the instance has integrity monitoring enabled. *)
  enable_secure_boot : bool prop option; [@option]
      (** Defines whether the instance has Secure Boot enabled. *)
}
[@@deriving yojson_of]
(** Shielded Instance options. *)

type google_container_cluster__node_config__sole_tenant_config__node_affinity = {
  key : string prop;  (** . *)
  operator : string prop;  (** . *)
  values : string prop list;  (** . *)
}
[@@deriving yojson_of]
(** . *)

type google_container_cluster__node_config__sole_tenant_config = {
  node_affinity :
    google_container_cluster__node_config__sole_tenant_config__node_affinity
    list;
}
[@@deriving yojson_of]
(** Node affinity options for sole tenant node pools. *)

type google_container_cluster__node_config__taint = {
  effect : string prop;  (** Effect for taint. *)
  key : string prop;  (** Key for taint. *)
  value : string prop;  (** Value for taint. *)
}
[@@deriving yojson_of]
(** List of Kubernetes taints to be applied to each node. *)

type google_container_cluster__node_config__workload_metadata_config = {
  mode : string prop;
      (** Mode is the configuration for how to expose metadata to workloads running on the node. *)
}
[@@deriving yojson_of]
(** The workload metadata configuration for this node. *)

type google_container_cluster__node_config__effective_taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type google_container_cluster__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float prop;
      (** max_shared_clients_per_gpu *)
}
[@@deriving yojson_of]

type google_container_cluster__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;  (** gpu_driver_version *)
}
[@@deriving yojson_of]

type google_container_cluster__node_config__guest_accelerator = {
  count : float prop;  (** count *)
  gpu_driver_installation_config :
    google_container_cluster__node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string prop;  (** gpu_partition_size *)
  gpu_sharing_config :
    google_container_cluster__node_config__guest_accelerator__gpu_sharing_config
    list;
      (** gpu_sharing_config *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_container_cluster__node_config = {
  boot_disk_kms_key : string prop option; [@option]
      (** The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. *)
  disk_size_gb : float prop option; [@option]
      (** Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. *)
  disk_type : string prop option; [@option]
      (** Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd *)
  effective_taints :
    google_container_cluster__node_config__effective_taints list;
      (** List of kubernetes taints applied to each node. *)
  enable_confidential_storage : bool prop option; [@option]
      (** If enabled boot disks are configured with confidential mode. *)
  guest_accelerator :
    google_container_cluster__node_config__guest_accelerator list
    option;
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
    google_container_cluster__node_config__advanced_machine_features
    list;
  confidential_nodes :
    google_container_cluster__node_config__confidential_nodes list;
  ephemeral_storage_local_ssd_config :
    google_container_cluster__node_config__ephemeral_storage_local_ssd_config
    list;
  fast_socket :
    google_container_cluster__node_config__fast_socket list;
  gcfs_config :
    google_container_cluster__node_config__gcfs_config list;
  gvnic : google_container_cluster__node_config__gvnic list;
  host_maintenance_policy :
    google_container_cluster__node_config__host_maintenance_policy
    list;
  kubelet_config :
    google_container_cluster__node_config__kubelet_config list;
  linux_node_config :
    google_container_cluster__node_config__linux_node_config list;
  local_nvme_ssd_block_config :
    google_container_cluster__node_config__local_nvme_ssd_block_config
    list;
  reservation_affinity :
    google_container_cluster__node_config__reservation_affinity list;
  shielded_instance_config :
    google_container_cluster__node_config__shielded_instance_config
    list;
  sole_tenant_config :
    google_container_cluster__node_config__sole_tenant_config list;
  taint : google_container_cluster__node_config__taint list;
  workload_metadata_config :
    google_container_cluster__node_config__workload_metadata_config
    list;
}
[@@deriving yojson_of]
(** The configuration of the nodepool *)

type google_container_cluster__node_pool__autoscaling = {
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

type google_container_cluster__node_pool__management = {
  auto_repair : bool prop option; [@option]
      (** Whether the nodes will be automatically repaired. Enabled by default. *)
  auto_upgrade : bool prop option; [@option]
      (** Whether the nodes will be automatically upgraded. Enabled by default. *)
}
[@@deriving yojson_of]
(** Node management configuration, wherein auto-repair and auto-upgrade is configured. *)

type google_container_cluster__node_pool__network_config__network_performance_config = {
  total_egress_bandwidth_tier : string prop;
      (** Specifies the total network bandwidth tier for the NodePool. *)
}
[@@deriving yojson_of]
(** Network bandwidth tier configuration. *)

type google_container_cluster__node_pool__network_config__pod_cidr_overprovision_config = {
  disabled : bool prop;  (** disabled *)
}
[@@deriving yojson_of]
(** Configuration for node-pool level pod cidr overprovision. If not set, the cluster level setting will be inherited *)

type google_container_cluster__node_pool__network_config = {
  create_pod_range : bool prop option; [@option]
      (** Whether to create a new range for pod IPs in this node pool. Defaults are provided for pod_range and pod_ipv4_cidr_block if they are not specified. *)
  enable_private_nodes : bool prop option; [@option]
      (** Whether nodes have internal IP addresses only. *)
  pod_ipv4_cidr_block : string prop option; [@option]
      (** The IP address range for pod IPs in this node pool. Only applicable if create_pod_range is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. /14) to have a range chosen with a specific netmask. Set to a CIDR notation (e.g. 10.96.0.0/14) to pick a specific range to use. *)
  pod_range : string prop option; [@option]
      (** The ID of the secondary range for pod IPs. If create_pod_range is true, this ID is used for the new range. If create_pod_range is false, uses an existing secondary range with this ID. *)
  network_performance_config :
    google_container_cluster__node_pool__network_config__network_performance_config
    list;
  pod_cidr_overprovision_config :
    google_container_cluster__node_pool__network_config__pod_cidr_overprovision_config
    list;
}
[@@deriving yojson_of]
(** Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. *)

type google_container_cluster__node_pool__node_config__advanced_machine_features = {
  threads_per_core : float prop;
      (** The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. *)
}
[@@deriving yojson_of]
(** Specifies options for controlling advanced machine features. *)

type google_container_cluster__node_pool__node_config__confidential_nodes = {
  enabled : bool prop;
      (** Whether Confidential Nodes feature is enabled for all nodes in this pool. *)
}
[@@deriving yojson_of]
(** Configuration for the confidential nodes feature, which makes nodes run on confidential VMs. Warning: This configuration can't be changed (or added/removed) after pool creation without deleting and recreating the entire pool. *)

type google_container_cluster__node_pool__node_config__ephemeral_storage_local_ssd_config = {
  local_ssd_count : float prop;
      (** Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size. *)
}
[@@deriving yojson_of]
(** Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. *)

type google_container_cluster__node_pool__node_config__fast_socket = {
  enabled : bool prop;
      (** Whether or not NCCL Fast Socket is enabled *)
}
[@@deriving yojson_of]
(** Enable or disable NCCL Fast Socket in the node pool. *)

type google_container_cluster__node_pool__node_config__gcfs_config = {
  enabled : bool prop;  (** Whether or not GCFS is enabled *)
}
[@@deriving yojson_of]
(** GCFS configuration for this node. *)

type google_container_cluster__node_pool__node_config__gvnic = {
  enabled : bool prop;  (** Whether or not gvnic is enabled *)
}
[@@deriving yojson_of]
(** Enable or disable gvnic in the node pool. *)

type google_container_cluster__node_pool__node_config__host_maintenance_policy = {
  maintenance_interval : string prop;  (** . *)
}
[@@deriving yojson_of]
(** The maintenance policy for the hosts on which the GKE VMs run on. *)

type google_container_cluster__node_pool__node_config__kubelet_config = {
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

type google_container_cluster__node_pool__node_config__linux_node_config = {
  cgroup_mode : string prop option; [@option]
      (** cgroupMode specifies the cgroup mode to be used on the node. *)
  sysctls : (string * string prop) list option; [@option]
      (** The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. *)
}
[@@deriving yojson_of]
(** Parameters that can be configured on Linux nodes. *)

type google_container_cluster__node_pool__node_config__local_nvme_ssd_block_config = {
  local_ssd_count : float prop;
      (** Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. *)
}
[@@deriving yojson_of]
(** Parameters for raw-block local NVMe SSDs. *)

type google_container_cluster__node_pool__node_config__reservation_affinity = {
  consume_reservation_type : string prop;
      (** Corresponds to the type of reservation consumption. *)
  key : string prop option; [@option]
      (** The label key of a reservation resource. *)
  values : string prop list option; [@option]
      (** The label values of the reservation resource. *)
}
[@@deriving yojson_of]
(** The reservation affinity configuration for the node pool. *)

type google_container_cluster__node_pool__node_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
      (** Defines whether the instance has integrity monitoring enabled. *)
  enable_secure_boot : bool prop option; [@option]
      (** Defines whether the instance has Secure Boot enabled. *)
}
[@@deriving yojson_of]
(** Shielded Instance options. *)

type google_container_cluster__node_pool__node_config__sole_tenant_config__node_affinity = {
  key : string prop;  (** . *)
  operator : string prop;  (** . *)
  values : string prop list;  (** . *)
}
[@@deriving yojson_of]
(** . *)

type google_container_cluster__node_pool__node_config__sole_tenant_config = {
  node_affinity :
    google_container_cluster__node_pool__node_config__sole_tenant_config__node_affinity
    list;
}
[@@deriving yojson_of]
(** Node affinity options for sole tenant node pools. *)

type google_container_cluster__node_pool__node_config__taint = {
  effect : string prop;  (** Effect for taint. *)
  key : string prop;  (** Key for taint. *)
  value : string prop;  (** Value for taint. *)
}
[@@deriving yojson_of]
(** List of Kubernetes taints to be applied to each node. *)

type google_container_cluster__node_pool__node_config__workload_metadata_config = {
  mode : string prop;
      (** Mode is the configuration for how to expose metadata to workloads running on the node. *)
}
[@@deriving yojson_of]
(** The workload metadata configuration for this node. *)

type google_container_cluster__node_pool__node_config__effective_taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type google_container_cluster__node_pool__node_config__guest_accelerator__gpu_sharing_config = {
  gpu_sharing_strategy : string prop;  (** gpu_sharing_strategy *)
  max_shared_clients_per_gpu : float prop;
      (** max_shared_clients_per_gpu *)
}
[@@deriving yojson_of]

type google_container_cluster__node_pool__node_config__guest_accelerator__gpu_driver_installation_config = {
  gpu_driver_version : string prop;  (** gpu_driver_version *)
}
[@@deriving yojson_of]

type google_container_cluster__node_pool__node_config__guest_accelerator = {
  count : float prop;  (** count *)
  gpu_driver_installation_config :
    google_container_cluster__node_pool__node_config__guest_accelerator__gpu_driver_installation_config
    list;
      (** gpu_driver_installation_config *)
  gpu_partition_size : string prop;  (** gpu_partition_size *)
  gpu_sharing_config :
    google_container_cluster__node_pool__node_config__guest_accelerator__gpu_sharing_config
    list;
      (** gpu_sharing_config *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_container_cluster__node_pool__node_config = {
  boot_disk_kms_key : string prop option; [@option]
      (** The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. *)
  disk_size_gb : float prop option; [@option]
      (** Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. *)
  disk_type : string prop option; [@option]
      (** Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd *)
  effective_taints :
    google_container_cluster__node_pool__node_config__effective_taints
    list;
      (** List of kubernetes taints applied to each node. *)
  enable_confidential_storage : bool prop option; [@option]
      (** If enabled boot disks are configured with confidential mode. *)
  guest_accelerator :
    google_container_cluster__node_pool__node_config__guest_accelerator
    list
    option;
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
    google_container_cluster__node_pool__node_config__advanced_machine_features
    list;
  confidential_nodes :
    google_container_cluster__node_pool__node_config__confidential_nodes
    list;
  ephemeral_storage_local_ssd_config :
    google_container_cluster__node_pool__node_config__ephemeral_storage_local_ssd_config
    list;
  fast_socket :
    google_container_cluster__node_pool__node_config__fast_socket
    list;
  gcfs_config :
    google_container_cluster__node_pool__node_config__gcfs_config
    list;
  gvnic :
    google_container_cluster__node_pool__node_config__gvnic list;
  host_maintenance_policy :
    google_container_cluster__node_pool__node_config__host_maintenance_policy
    list;
  kubelet_config :
    google_container_cluster__node_pool__node_config__kubelet_config
    list;
  linux_node_config :
    google_container_cluster__node_pool__node_config__linux_node_config
    list;
  local_nvme_ssd_block_config :
    google_container_cluster__node_pool__node_config__local_nvme_ssd_block_config
    list;
  reservation_affinity :
    google_container_cluster__node_pool__node_config__reservation_affinity
    list;
  shielded_instance_config :
    google_container_cluster__node_pool__node_config__shielded_instance_config
    list;
  sole_tenant_config :
    google_container_cluster__node_pool__node_config__sole_tenant_config
    list;
  taint :
    google_container_cluster__node_pool__node_config__taint list;
  workload_metadata_config :
    google_container_cluster__node_pool__node_config__workload_metadata_config
    list;
}
[@@deriving yojson_of]
(** The configuration of the nodepool *)

type google_container_cluster__node_pool__placement_policy = {
  policy_name : string prop option; [@option]
      (** If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned. *)
  tpu_topology : string prop option; [@option]
      (** TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies *)
  type_ : string prop; [@key "type"]
      (** Type defines the type of placement policy *)
}
[@@deriving yojson_of]
(** Specifies the node placement policy *)

type google_container_cluster__node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy = {
  batch_node_count : float prop option; [@option]
      (** Number of blue nodes to drain in a batch. *)
  batch_percentage : float prop option; [@option]
      (** Percentage of the blue pool nodes to drain in a batch. *)
  batch_soak_duration : string prop option; [@option]
      (** Soak time after each batch gets drained. *)
}
[@@deriving yojson_of]
(** Standard rollout policy is the default policy for blue-green. *)

type google_container_cluster__node_pool__upgrade_settings__blue_green_settings = {
  node_pool_soak_duration : string prop option; [@option]
      (** Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. *)
  standard_rollout_policy :
    google_container_cluster__node_pool__upgrade_settings__blue_green_settings__standard_rollout_policy
    list;
}
[@@deriving yojson_of]
(** Settings for BlueGreen node pool upgrade. *)

type google_container_cluster__node_pool__upgrade_settings = {
  max_surge : float prop option; [@option]
      (** The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater. *)
  max_unavailable : float prop option; [@option]
      (** The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater. *)
  strategy : string prop option; [@option]
      (** Update strategy for the given nodepool. *)
  blue_green_settings :
    google_container_cluster__node_pool__upgrade_settings__blue_green_settings
    list;
}
[@@deriving yojson_of]
(** Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20. *)

type google_container_cluster__node_pool = {
  initial_node_count : float prop option; [@option]
      (** The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource. *)
  instance_group_urls : string prop list;
      (** The resource URLs of the managed instance groups associated with this node pool. *)
  managed_instance_group_urls : string prop list;
      (** List of instance group URLs which have been assigned to this node pool. *)
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
  version : string prop option; [@option]
      (** The Kubernetes version for the nodes in this pool. Note that if this field and auto_upgrade are both specified, they will fight each other for what the node version should be, so setting both is highly discouraged. While a fuzzy version can be specified, it's recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source's version_prefix field to approximate fuzzy versions in a Terraform-compatible way. *)
  autoscaling :
    google_container_cluster__node_pool__autoscaling list;
  management : google_container_cluster__node_pool__management list;
  network_config :
    google_container_cluster__node_pool__network_config list;
  node_config :
    google_container_cluster__node_pool__node_config list;
  placement_policy :
    google_container_cluster__node_pool__placement_policy list;
  upgrade_settings :
    google_container_cluster__node_pool__upgrade_settings list;
}
[@@deriving yojson_of]
(** List of node pools associated with this cluster. See google_container_node_pool for schema. Warning: node pools defined inside a cluster can't be changed (or added/removed) after cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability to say these are the only node pools associated with this cluster, use the google_container_node_pool resource instead of this property. *)

type google_container_cluster__node_pool_auto_config__network_tags = {
  tags : string prop list option; [@option]
      (** List of network tags applied to auto-provisioned node pools. *)
}
[@@deriving yojson_of]
(** Collection of Compute Engine network tags that can be applied to a node's underlying VM instance. *)

type google_container_cluster__node_pool_auto_config = {
  network_tags :
    google_container_cluster__node_pool_auto_config__network_tags
    list;
}
[@@deriving yojson_of]
(** Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters. *)

type google_container_cluster__node_pool_defaults__node_config_defaults = {
  logging_variant : string prop option; [@option]
      (** Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. *)
}
[@@deriving yojson_of]
(** Subset of NodeConfig message that has defaults. *)

type google_container_cluster__node_pool_defaults = {
  node_config_defaults :
    google_container_cluster__node_pool_defaults__node_config_defaults
    list;
}
[@@deriving yojson_of]
(** The default nodel pool settings for the entire cluster. *)

type google_container_cluster__notification_config__pubsub__filter = {
  event_type : string prop list;
      (** Can be used to filter what notifications are sent. Valid values include include UPGRADE_AVAILABLE_EVENT, UPGRADE_EVENT and SECURITY_BULLETIN_EVENT *)
}
[@@deriving yojson_of]
(** Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent *)

type google_container_cluster__notification_config__pubsub = {
  enabled : bool prop;
      (** Whether or not the notification config is enabled *)
  topic : string prop option; [@option]
      (** The pubsub topic to push upgrade notifications to. Must be in the same project as the cluster. Must be in the format: projects/{project}/topics/{topic}. *)
  filter :
    google_container_cluster__notification_config__pubsub__filter
    list;
}
[@@deriving yojson_of]
(** Notification config for Cloud Pub/Sub *)

type google_container_cluster__notification_config = {
  pubsub : google_container_cluster__notification_config__pubsub list;
}
[@@deriving yojson_of]
(** The notification config for sending cluster upgrade notifications *)

type google_container_cluster__private_cluster_config__master_global_access_config = {
  enabled : bool prop;
      (** Whether the cluster master is accessible globally or not. *)
}
[@@deriving yojson_of]
(** Controls cluster master global access settings. *)

type google_container_cluster__private_cluster_config = {
  enable_private_endpoint : bool prop option; [@option]
      (** When true, the cluster's private endpoint is used as the cluster endpoint and access through the public endpoint is disabled. When false, either endpoint can be used. *)
  enable_private_nodes : bool prop option; [@option]
      (** Enables the private cluster feature, creating a private endpoint on the cluster. In a private cluster, nodes only have RFC 1918 private addresses and communicate with the master's private endpoint via private networking. *)
  master_ipv4_cidr_block : string prop option; [@option]
      (** The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning private IP addresses to the cluster master(s) and the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network, and it must be a /28 subnet. See Private Cluster Limitations for more details. This field only applies to private clusters, when enable_private_nodes is true. *)
  peering_name : string prop;
      (** The name of the peering between this cluster and the Google owned VPC. *)
  private_endpoint : string prop;
      (** The internal IP address of this cluster's master endpoint. *)
  private_endpoint_subnetwork : string prop option; [@option]
      (** Subnetwork in cluster's network where master's endpoint will be provisioned. *)
  public_endpoint : string prop;
      (** The external IP address of this cluster's master endpoint. *)
  master_global_access_config :
    google_container_cluster__private_cluster_config__master_global_access_config
    list;
}
[@@deriving yojson_of]
(** Configuration for private clusters, clusters with private nodes. *)

type google_container_cluster__release_channel = {
  channel : string prop;
      (** The selected release channel. Accepted values are:
* UNSPECIFIED: Not set.
* RAPID: Weekly upgrade cadence; Early testers and developers who requires new features.
* REGULAR: Multiple per month upgrade cadence; Production users who need features not yet offered in the Stable channel.
* STABLE: Every few months upgrade cadence; Production users who need stability above all else, and for whom frequent upgrades are too risky. *)
}
[@@deriving yojson_of]
(** Configuration options for the Release channel feature, which provide more control over automatic upgrades of your GKE clusters. Note that removing this field from your config will not unenroll it. Instead, use the UNSPECIFIED channel. *)

type google_container_cluster__resource_usage_export_config__bigquery_destination = {
  dataset_id : string prop;  (** The ID of a BigQuery Dataset. *)
}
[@@deriving yojson_of]
(** Parameters for using BigQuery as the destination of resource usage export. *)

type google_container_cluster__resource_usage_export_config = {
  enable_network_egress_metering : bool prop option; [@option]
      (** Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic. *)
  enable_resource_consumption_metering : bool prop option; [@option]
      (** Whether to enable resource consumption metering on this cluster. When enabled, a table will be created in the resource export BigQuery dataset to store resource consumption data. The resulting table can be joined with the resource usage table or with BigQuery billing export. Defaults to true. *)
  bigquery_destination :
    google_container_cluster__resource_usage_export_config__bigquery_destination
    list;
}
[@@deriving yojson_of]
(** Configuration for the ResourceUsageExportConfig feature. *)

type google_container_cluster__security_posture_config = {
  mode : string prop option; [@option]
      (** Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include DISABLED and BASIC. *)
  vulnerability_mode : string prop option; [@option]
      (** Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include VULNERABILITY_DISABLED, VULNERABILITY_BASIC and VULNERABILITY_ENTERPRISE. *)
}
[@@deriving yojson_of]
(** Defines the config needed to enable/disable features for the Security Posture API *)

type google_container_cluster__service_external_ips_config = {
  enabled : bool prop;
      (** When enabled, services with exterenal ips specified will be allowed. *)
}
[@@deriving yojson_of]
(** If set, and enabled=true, services with external ips field will not be blocked *)

type google_container_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_container_cluster__timeouts *)

type google_container_cluster__vertical_pod_autoscaling = {
  enabled : bool prop;  (** Enables vertical pod autoscaling. *)
}
[@@deriving yojson_of]
(** Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it. *)

type google_container_cluster__workload_identity_config = {
  workload_pool : string prop option; [@option]
      (** The workload pool to attach all Kubernetes service accounts to. *)
}
[@@deriving yojson_of]
(** Configuration for the use of Kubernetes Service Accounts in GCP IAM policies. *)

type google_container_cluster = {
  allow_net_admin : bool prop option; [@option]
      (** Enable NET_ADMIN for this cluster. *)
  cluster_ipv4_cidr : string prop option; [@option]
      (** The IP address range of the Kubernetes pods in this cluster in CIDR notation (e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /14 block in 10.0.0.0/8. This field will only work for routes-based clusters, where ip_allocation_policy is not defined. *)
  datapath_provider : string prop option; [@option]
      (** The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation. *)
  default_max_pods_per_node : float prop option; [@option]
      (** The default maximum number of pods per node in this cluster. This doesn't work on routes-based clusters, clusters that don't have IP Aliasing enabled. *)
  deletion_protection : bool prop option; [@option]
      (** Whether or not to allow Terraform to destroy the instance. Defaults to true. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the cluster will fail. *)
  description : string prop option; [@option]
      (**  Description of the cluster. *)
  enable_autopilot : bool prop option; [@option]
      (** Enable Autopilot for this cluster. *)
  enable_intranode_visibility : bool prop option; [@option]
      (** Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network. *)
  enable_kubernetes_alpha : bool prop option; [@option]
      (** Whether to enable Kubernetes Alpha features for this cluster. Note that when this option is enabled, the cluster cannot be upgraded and will be automatically deleted after 30 days. *)
  enable_l4_ilb_subsetting : bool prop option; [@option]
      (** Whether L4ILB Subsetting is enabled for this cluster. *)
  enable_legacy_abac : bool prop option; [@option]
      (** Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM. Defaults to false. *)
  enable_shielded_nodes : bool prop option; [@option]
      (** Enable Shielded Nodes features on all nodes in this cluster. Defaults to true. *)
  enable_tpu : bool prop option; [@option]
      (** Whether to enable Cloud TPU resources in this cluster. *)
  id : string prop option; [@option]  (** id *)
  initial_node_count : float prop option; [@option]
      (** The number of nodes to create in this cluster's default node pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Must be set if node_pool is not set. If you're using google_container_node_pool objects with no default node pool, you'll need to set this to a value of at least 1, alongside setting remove_default_node_pool to true. *)
  location : string prop option; [@option]
      (** The location (region or zone) in which the cluster master will be created, as well as the default node location. If you specify a zone (such as us-central1-a), the cluster will be a zonal cluster with a single cluster master. If you specify a region (such as us-west1), the cluster will be a regional cluster with multiple masters spread across zones in the region, and with default node locations in those zones as well. *)
  logging_service : string prop option; [@option]
      (** The logging service that the cluster should write logs to. Available options include logging.googleapis.com(Legacy Stackdriver), logging.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Logging), and none. Defaults to logging.googleapis.com/kubernetes. *)
  min_master_version : string prop option; [@option]
      (** The minimum version of the master. GKE will auto-update the master to new versions, so this does not guarantee the current master version--use the read-only master_version field to obtain that. If unset, the cluster's version will be set by GKE to the version of the most recent official release (which is not necessarily the latest version). *)
  monitoring_service : string prop option; [@option]
      (** The monitoring service that the cluster should write metrics to. Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting Available options include monitoring.googleapis.com(Legacy Stackdriver), monitoring.googleapis.com/kubernetes(Stackdriver Kubernetes Engine Monitoring), and none. Defaults to monitoring.googleapis.com/kubernetes. *)
  name : string prop;
      (** The name of the cluster, unique within the project and location. *)
  network : string prop option; [@option]
      (** The name or self_link of the Google Compute Engine network to which the cluster is connected. For Shared VPC, set this to the self link of the shared network. *)
  networking_mode : string prop option; [@option]
      (** Determines whether alias IPs or routes will be used for pod IPs in the cluster. Defaults to VPC_NATIVE for new clusters. *)
  node_locations : string prop list option; [@option]
      (** The list of zones in which the cluster's nodes are located. Nodes must be in the region of their regional cluster or in the same region as their cluster's zone for zonal clusters. If this is specified for a zonal cluster, omit the cluster's zone. *)
  node_version : string prop option; [@option]
      (** The Kubernetes version on the nodes. Must either be unset or set to the same value as min_master_version on create. Defaults to the default version set by GKE which is not necessarily the latest version. This only affects nodes in the default node pool. While a fuzzy version can be specified, it's recommended that you specify explicit versions as Terraform will see spurious diffs when fuzzy versions are used. See the google_container_engine_versions data source's version_prefix field to approximate fuzzy versions in a Terraform-compatible way. To update nodes in other node pools, use the version attribute on the node pool. *)
  private_ipv6_google_access : string prop option; [@option]
      (** The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4). *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  remove_default_node_pool : bool prop option; [@option]
      (** If true, deletes the default node pool upon cluster creation. If you're using google_container_node_pool resources with no default node pool, this should be set to true, alongside setting initial_node_count to at least 1. *)
  resource_labels : (string * string prop) list option; [@option]
      (** The GCE resource labels (a map of key/value pairs) to be applied to the cluster. *)
  subnetwork : string prop option; [@option]
      (** The name or self_link of the Google Compute Engine subnetwork in which the cluster's instances are launched. *)
  addons_config : google_container_cluster__addons_config list;
  authenticator_groups_config :
    google_container_cluster__authenticator_groups_config list;
  binary_authorization :
    google_container_cluster__binary_authorization list;
  cluster_autoscaling :
    google_container_cluster__cluster_autoscaling list;
  confidential_nodes :
    google_container_cluster__confidential_nodes list;
  cost_management_config :
    google_container_cluster__cost_management_config list;
  database_encryption :
    google_container_cluster__database_encryption list;
  default_snat_status :
    google_container_cluster__default_snat_status list;
  dns_config : google_container_cluster__dns_config list;
  enable_k8s_beta_apis :
    google_container_cluster__enable_k8s_beta_apis list;
  fleet : google_container_cluster__fleet list;
  gateway_api_config :
    google_container_cluster__gateway_api_config list;
  identity_service_config :
    google_container_cluster__identity_service_config list;
  ip_allocation_policy :
    google_container_cluster__ip_allocation_policy list;
  logging_config : google_container_cluster__logging_config list;
  maintenance_policy :
    google_container_cluster__maintenance_policy list;
  master_auth : google_container_cluster__master_auth list;
  master_authorized_networks_config :
    google_container_cluster__master_authorized_networks_config list;
  mesh_certificates :
    google_container_cluster__mesh_certificates list;
  monitoring_config :
    google_container_cluster__monitoring_config list;
  network_policy : google_container_cluster__network_policy list;
  node_config : google_container_cluster__node_config list;
  node_pool : google_container_cluster__node_pool list;
  node_pool_auto_config :
    google_container_cluster__node_pool_auto_config list;
  node_pool_defaults :
    google_container_cluster__node_pool_defaults list;
  notification_config :
    google_container_cluster__notification_config list;
  private_cluster_config :
    google_container_cluster__private_cluster_config list;
  release_channel : google_container_cluster__release_channel list;
  resource_usage_export_config :
    google_container_cluster__resource_usage_export_config list;
  security_posture_config :
    google_container_cluster__security_posture_config list;
  service_external_ips_config :
    google_container_cluster__service_external_ips_config list;
  timeouts : google_container_cluster__timeouts option;
  vertical_pod_autoscaling :
    google_container_cluster__vertical_pod_autoscaling list;
  workload_identity_config :
    google_container_cluster__workload_identity_config list;
}
[@@deriving yojson_of]
(** google_container_cluster *)

type t = {
  allow_net_admin : bool prop;
  cluster_ipv4_cidr : string prop;
  datapath_provider : string prop;
  default_max_pods_per_node : float prop;
  deletion_protection : bool prop;
  description : string prop;
  enable_autopilot : bool prop;
  enable_intranode_visibility : bool prop;
  enable_kubernetes_alpha : bool prop;
  enable_l4_ilb_subsetting : bool prop;
  enable_legacy_abac : bool prop;
  enable_shielded_nodes : bool prop;
  enable_tpu : bool prop;
  endpoint : string prop;
  id : string prop;
  initial_node_count : float prop;
  label_fingerprint : string prop;
  location : string prop;
  logging_service : string prop;
  master_version : string prop;
  min_master_version : string prop;
  monitoring_service : string prop;
  name : string prop;
  network : string prop;
  networking_mode : string prop;
  node_locations : string list prop;
  node_version : string prop;
  operation : string prop;
  private_ipv6_google_access : string prop;
  project : string prop;
  remove_default_node_pool : bool prop;
  resource_labels : (string * string) list prop;
  self_link : string prop;
  services_ipv4_cidr : string prop;
  subnetwork : string prop;
  tpu_ipv4_cidr_block : string prop;
}

let google_container_cluster ?allow_net_admin ?cluster_ipv4_cidr
    ?datapath_provider ?default_max_pods_per_node
    ?deletion_protection ?description ?enable_autopilot
    ?enable_intranode_visibility ?enable_kubernetes_alpha
    ?enable_l4_ilb_subsetting ?enable_legacy_abac
    ?enable_shielded_nodes ?enable_tpu ?id ?initial_node_count
    ?location ?logging_service ?min_master_version
    ?monitoring_service ?network ?networking_mode ?node_locations
    ?node_version ?private_ipv6_google_access ?project
    ?remove_default_node_pool ?resource_labels ?subnetwork ?timeouts
    ~name ~addons_config ~authenticator_groups_config
    ~binary_authorization ~cluster_autoscaling ~confidential_nodes
    ~cost_management_config ~database_encryption ~default_snat_status
    ~dns_config ~enable_k8s_beta_apis ~fleet ~gateway_api_config
    ~identity_service_config ~ip_allocation_policy ~logging_config
    ~maintenance_policy ~master_auth
    ~master_authorized_networks_config ~mesh_certificates
    ~monitoring_config ~network_policy ~node_config ~node_pool
    ~node_pool_auto_config ~node_pool_defaults ~notification_config
    ~private_cluster_config ~release_channel
    ~resource_usage_export_config ~security_posture_config
    ~service_external_ips_config ~vertical_pod_autoscaling
    ~workload_identity_config __resource_id =
  let __resource_type = "google_container_cluster" in
  let __resource =
    ({
       allow_net_admin;
       cluster_ipv4_cidr;
       datapath_provider;
       default_max_pods_per_node;
       deletion_protection;
       description;
       enable_autopilot;
       enable_intranode_visibility;
       enable_kubernetes_alpha;
       enable_l4_ilb_subsetting;
       enable_legacy_abac;
       enable_shielded_nodes;
       enable_tpu;
       id;
       initial_node_count;
       location;
       logging_service;
       min_master_version;
       monitoring_service;
       name;
       network;
       networking_mode;
       node_locations;
       node_version;
       private_ipv6_google_access;
       project;
       remove_default_node_pool;
       resource_labels;
       subnetwork;
       addons_config;
       authenticator_groups_config;
       binary_authorization;
       cluster_autoscaling;
       confidential_nodes;
       cost_management_config;
       database_encryption;
       default_snat_status;
       dns_config;
       enable_k8s_beta_apis;
       fleet;
       gateway_api_config;
       identity_service_config;
       ip_allocation_policy;
       logging_config;
       maintenance_policy;
       master_auth;
       master_authorized_networks_config;
       mesh_certificates;
       monitoring_config;
       network_policy;
       node_config;
       node_pool;
       node_pool_auto_config;
       node_pool_defaults;
       notification_config;
       private_cluster_config;
       release_channel;
       resource_usage_export_config;
       security_posture_config;
       service_external_ips_config;
       timeouts;
       vertical_pod_autoscaling;
       workload_identity_config;
     }
      : google_container_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_cluster __resource);
  let __resource_attributes =
    ({
       allow_net_admin =
         Prop.computed __resource_type __resource_id
           "allow_net_admin";
       cluster_ipv4_cidr =
         Prop.computed __resource_type __resource_id
           "cluster_ipv4_cidr";
       datapath_provider =
         Prop.computed __resource_type __resource_id
           "datapath_provider";
       default_max_pods_per_node =
         Prop.computed __resource_type __resource_id
           "default_max_pods_per_node";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       description =
         Prop.computed __resource_type __resource_id "description";
       enable_autopilot =
         Prop.computed __resource_type __resource_id
           "enable_autopilot";
       enable_intranode_visibility =
         Prop.computed __resource_type __resource_id
           "enable_intranode_visibility";
       enable_kubernetes_alpha =
         Prop.computed __resource_type __resource_id
           "enable_kubernetes_alpha";
       enable_l4_ilb_subsetting =
         Prop.computed __resource_type __resource_id
           "enable_l4_ilb_subsetting";
       enable_legacy_abac =
         Prop.computed __resource_type __resource_id
           "enable_legacy_abac";
       enable_shielded_nodes =
         Prop.computed __resource_type __resource_id
           "enable_shielded_nodes";
       enable_tpu =
         Prop.computed __resource_type __resource_id "enable_tpu";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       initial_node_count =
         Prop.computed __resource_type __resource_id
           "initial_node_count";
       label_fingerprint =
         Prop.computed __resource_type __resource_id
           "label_fingerprint";
       location =
         Prop.computed __resource_type __resource_id "location";
       logging_service =
         Prop.computed __resource_type __resource_id
           "logging_service";
       master_version =
         Prop.computed __resource_type __resource_id "master_version";
       min_master_version =
         Prop.computed __resource_type __resource_id
           "min_master_version";
       monitoring_service =
         Prop.computed __resource_type __resource_id
           "monitoring_service";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       networking_mode =
         Prop.computed __resource_type __resource_id
           "networking_mode";
       node_locations =
         Prop.computed __resource_type __resource_id "node_locations";
       node_version =
         Prop.computed __resource_type __resource_id "node_version";
       operation =
         Prop.computed __resource_type __resource_id "operation";
       private_ipv6_google_access =
         Prop.computed __resource_type __resource_id
           "private_ipv6_google_access";
       project =
         Prop.computed __resource_type __resource_id "project";
       remove_default_node_pool =
         Prop.computed __resource_type __resource_id
           "remove_default_node_pool";
       resource_labels =
         Prop.computed __resource_type __resource_id
           "resource_labels";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       services_ipv4_cidr =
         Prop.computed __resource_type __resource_id
           "services_ipv4_cidr";
       subnetwork =
         Prop.computed __resource_type __resource_id "subnetwork";
       tpu_ipv4_cidr_block =
         Prop.computed __resource_type __resource_id
           "tpu_ipv4_cidr_block";
     }
      : t)
  in
  __resource_attributes
