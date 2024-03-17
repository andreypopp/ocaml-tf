(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_cluster__cluster_config__autoscaling_config = {
  policy_uri : string;
      (** The autoscaling policy used by the cluster. *)
}
[@@deriving yojson_of]
(** The autoscaling policy config associated with the cluster. *)

type google_dataproc_cluster__cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators = {
  accelerator_count : float;
      (** The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8. *)
  accelerator_type : string;
      (** The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80. *)
}
[@@deriving yojson_of]
(** The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. *)

type google_dataproc_cluster__cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config = {
  boot_disk_size_gb : float option; [@option]
      (** Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. *)
  boot_disk_type : string option; [@option]
      (** The disk type of the primary disk attached to each node. Such as pd-ssd or pd-standard. Defaults to pd-standard. *)
  num_local_ssds : float option; [@option]
      (** The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. *)
}
[@@deriving yojson_of]
(** Disk Config *)

type google_dataproc_cluster__cluster_config__auxiliary_node_groups__node_group__node_group_config = {
  instance_names : string list;
      (** List of auxiliary node group instance names which have been assigned to the cluster. *)
  machine_type : string option; [@option]
      (** The name of a Google Compute Engine machine type to create for the master *)
  min_cpu_platform : string option; [@option]
      (** The name of a minimum generation of CPU family for the auxiliary node group. If not specified, GCP will default to a predetermined computed value for each zone. *)
  num_instances : float option; [@option]
      (** Specifies the number of auxiliary nodes to create. If not specified, GCP will default to a predetermined computed value. *)
  accelerators :
    google_dataproc_cluster__cluster_config__auxiliary_node_groups__node_group__node_group_config__accelerators
    list;
  disk_config :
    google_dataproc_cluster__cluster_config__auxiliary_node_groups__node_group__node_group_config__disk_config
    list;
}
[@@deriving yojson_of]
(** The node group instance group configuration. *)

type google_dataproc_cluster__cluster_config__auxiliary_node_groups__node_group = {
  name : string;  (** The Node group resource name. *)
  roles : string list;  (** Node group roles. *)
  node_group_config :
    google_dataproc_cluster__cluster_config__auxiliary_node_groups__node_group__node_group_config
    list;
}
[@@deriving yojson_of]
(** Node group configuration. *)

type google_dataproc_cluster__cluster_config__auxiliary_node_groups = {
  node_group_id : string option; [@option]
      (** A node group ID. Generated if not specified. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters. *)
  node_group :
    google_dataproc_cluster__cluster_config__auxiliary_node_groups__node_group
    list;
}
[@@deriving yojson_of]
(** The node group settings. *)

type google_dataproc_cluster__cluster_config__dataproc_metric_config__metrics = {
  metric_overrides : string list option; [@option]
      (** Specify one or more [available OSS metrics] (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics) to collect. *)
  metric_source : string;
      (** A source for the collection of Dataproc OSS metrics (see [available OSS metrics] (https://cloud.google.com//dataproc/docs/guides/monitoring#available_oss_metrics)). *)
}
[@@deriving yojson_of]
(** Metrics sources to enable. *)

type google_dataproc_cluster__cluster_config__dataproc_metric_config = {
  metrics :
    google_dataproc_cluster__cluster_config__dataproc_metric_config__metrics
    list;
}
[@@deriving yojson_of]
(** The config for Dataproc metrics. *)

type google_dataproc_cluster__cluster_config__encryption_config = {
  kms_key_name : string;
      (** The Cloud KMS key name to use for PD disk encryption for all instances in the cluster. *)
}
[@@deriving yojson_of]
(** The Customer managed encryption keys settings for the cluster. *)

type google_dataproc_cluster__cluster_config__endpoint_config = {
  enable_http_port_access : bool;
      (** The flag to enable http access to specific ports on the cluster from external sources (aka Component Gateway). Defaults to false. *)
  http_ports : (string * string) list;
      (** The map of port descriptions to URLs. Will only be populated if enable_http_port_access is true. *)
}
[@@deriving yojson_of]
(** The config settings for port access on the cluster. Structure defined below. *)

type google_dataproc_cluster__cluster_config__gce_cluster_config__node_group_affinity = {
  node_group_uri : string;
      (** The URI of a sole-tenant that the cluster will be created on. *)
}
[@@deriving yojson_of]
(** Node Group Affinity for sole-tenant clusters. *)

type google_dataproc_cluster__cluster_config__gce_cluster_config__reservation_affinity = {
  consume_reservation_type : string option; [@option]
      (** Type of reservation to consume. *)
  key : string option; [@option]
      (** Corresponds to the label key of reservation resource. *)
  values : string list option; [@option]
      (** Corresponds to the label values of reservation resource. *)
}
[@@deriving yojson_of]
(** Reservation Affinity for consuming Zonal reservation. *)

type google_dataproc_cluster__cluster_config__gce_cluster_config__shielded_instance_config = {
  enable_integrity_monitoring : bool option; [@option]
      (** Defines whether instances have integrity monitoring enabled. *)
  enable_secure_boot : bool option; [@option]
      (** Defines whether instances have Secure Boot enabled. *)
  enable_vtpm : bool option; [@option]
      (** Defines whether instances have the vTPM enabled. *)
}
[@@deriving yojson_of]
(** Shielded Instance Config for clusters using Compute Engine Shielded VMs. *)

type google_dataproc_cluster__cluster_config__gce_cluster_config = {
  internal_ip_only : bool option; [@option]
      (** By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. If set to true, all instances in the cluster will only have internal IP addresses. Note: Private Google Access (also known as privateIpGoogleAccess) must be enabled on the subnetwork that the cluster will be launched in. *)
  metadata : (string * string) list option; [@option]
      (** A map of the Compute Engine metadata entries to add to all instances *)
  network : string option; [@option]
      (** The name or self_link of the Google Compute Engine network to the cluster will be part of. Conflicts with subnetwork. If neither is specified, this defaults to the default network. *)
  service_account : string option; [@option]
      (** The service account to be used by the Node VMs. If not specified, the default service account is used. *)
  service_account_scopes : string list option; [@option]
      (** The set of Google API scopes to be made available on all of the node VMs under the service_account specified. These can be either FQDNs, or scope aliases. *)
  subnetwork : string option; [@option]
      (** The name or self_link of the Google Compute Engine subnetwork the cluster will be part of. Conflicts with network. *)
  tags : string list option; [@option]
      (** The list of instance tags applied to instances in the cluster. Tags are used to identify valid sources or targets for network firewalls. *)
  zone : string option; [@option]
      (** The GCP zone where your data is stored and used (i.e. where the master and the worker nodes will be created in). If region is set to 'global' (default) then zone is mandatory, otherwise GCP is able to make use of Auto Zone Placement to determine this automatically for you. Note: This setting additionally determines and restricts which computing resources are available for use with other configs such as cluster_config.master_config.machine_type and cluster_config.worker_config.machine_type. *)
  node_group_affinity :
    google_dataproc_cluster__cluster_config__gce_cluster_config__node_group_affinity
    list;
  reservation_affinity :
    google_dataproc_cluster__cluster_config__gce_cluster_config__reservation_affinity
    list;
  shielded_instance_config :
    google_dataproc_cluster__cluster_config__gce_cluster_config__shielded_instance_config
    list;
}
[@@deriving yojson_of]
(** Common config settings for resources of Google Compute Engine cluster instances, applicable to all instances in the cluster. *)

type google_dataproc_cluster__cluster_config__initialization_action = {
  script : string;
      (** The script to be executed during initialization of the cluster. The script must be a GCS file with a gs:// prefix. *)
  timeout_sec : float option; [@option]
      (** The maximum duration (in seconds) which script is allowed to take to execute its action. GCP will default to a predetermined computed value if not set (currently 300). *)
}
[@@deriving yojson_of]
(** Commands to execute on each node after config is completed. You can specify multiple versions of these. *)

type google_dataproc_cluster__cluster_config__lifecycle_config = {
  auto_delete_time : string option; [@option]
      (** The time when cluster will be auto-deleted. A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. Example: 2014-10-02T15:01:23.045123456Z. *)
  idle_delete_ttl : string option; [@option]
      (** The duration to keep the cluster alive while idling (no jobs running). After this TTL, the cluster will be deleted. Valid range: [10m, 14d]. *)
  idle_start_time : string;
      (** Time when the cluster became idle (most recent job finished) and became eligible for deletion due to idleness. *)
}
[@@deriving yojson_of]
(** The settings for auto deletion cluster schedule. *)

type google_dataproc_cluster__cluster_config__master_config__accelerators = {
  accelerator_count : float;
      (** The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8. *)
  accelerator_type : string;
      (** The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80. *)
}
[@@deriving yojson_of]
(** The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. *)

type google_dataproc_cluster__cluster_config__master_config__disk_config = {
  boot_disk_size_gb : float option; [@option]
      (** Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. *)
  boot_disk_type : string option; [@option]
      (** The disk type of the primary disk attached to each node. Such as pd-ssd or pd-standard. Defaults to pd-standard. *)
  num_local_ssds : float option; [@option]
      (** The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. *)
}
[@@deriving yojson_of]
(** Disk Config *)

type google_dataproc_cluster__cluster_config__master_config = {
  image_uri : string option; [@option]
      (** The URI for the image to use for this master *)
  instance_names : string list;
      (** List of master instance names which have been assigned to the cluster. *)
  machine_type : string option; [@option]
      (** The name of a Google Compute Engine machine type to create for the master *)
  min_cpu_platform : string option; [@option]
      (** The name of a minimum generation of CPU family for the master. If not specified, GCP will default to a predetermined computed value for each zone. *)
  num_instances : float option; [@option]
      (** Specifies the number of master nodes to create. If not specified, GCP will default to a predetermined computed value. *)
  accelerators :
    google_dataproc_cluster__cluster_config__master_config__accelerators
    list;
  disk_config :
    google_dataproc_cluster__cluster_config__master_config__disk_config
    list;
}
[@@deriving yojson_of]
(** The Compute Engine config settings for the cluster's master instance. *)

type google_dataproc_cluster__cluster_config__metastore_config = {
  dataproc_metastore_service : string;
      (** Resource name of an existing Dataproc Metastore service. *)
}
[@@deriving yojson_of]
(** Specifies a Metastore configuration. *)

type google_dataproc_cluster__cluster_config__preemptible_worker_config__disk_config = {
  boot_disk_size_gb : float option; [@option]
      (** Size of the primary disk attached to each preemptible worker node, specified in GB. The smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. *)
  boot_disk_type : string option; [@option]
      (** The disk type of the primary disk attached to each preemptible worker node. Such as pd-ssd or pd-standard. Defaults to pd-standard. *)
  num_local_ssds : float option; [@option]
      (** The amount of local SSD disks that will be attached to each preemptible worker node. Defaults to 0. *)
}
[@@deriving yojson_of]
(** Disk Config *)

type google_dataproc_cluster__cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list = {
  machine_types : string list option; [@option]
      (** Full machine-type names, e.g. n1-standard-16. *)
  rank : float option; [@option]
      (** Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference. *)
}
[@@deriving yojson_of]
(** List of instance selection options that the group will use when creating new VMs. *)

type google_dataproc_cluster__cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_results = {
  machine_type : string;  (** machine_type *)
  vm_count : float;  (** vm_count *)
}
[@@deriving yojson_of]

type google_dataproc_cluster__cluster_config__preemptible_worker_config__instance_flexibility_policy = {
  instance_selection_results :
    google_dataproc_cluster__cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_results
    list;
      (** A list of instance selection results in the group. *)
  instance_selection_list :
    google_dataproc_cluster__cluster_config__preemptible_worker_config__instance_flexibility_policy__instance_selection_list
    list;
}
[@@deriving yojson_of]
(** Instance flexibility Policy allowing a mixture of VM shapes and provisioning models. *)

type google_dataproc_cluster__cluster_config__preemptible_worker_config = {
  instance_names : string list;
      (** List of preemptible instance names which have been assigned to the cluster. *)
  num_instances : float option; [@option]
      (** Specifies the number of preemptible nodes to create. Defaults to 0. *)
  preemptibility : string option; [@option]
      (** Specifies the preemptibility of the secondary nodes. Defaults to PREEMPTIBLE. *)
  disk_config :
    google_dataproc_cluster__cluster_config__preemptible_worker_config__disk_config
    list;
  instance_flexibility_policy :
    google_dataproc_cluster__cluster_config__preemptible_worker_config__instance_flexibility_policy
    list;
}
[@@deriving yojson_of]
(** The Google Compute Engine config settings for the additional (aka preemptible) instances in a cluster. *)

type google_dataproc_cluster__cluster_config__security_config__kerberos_config = {
  cross_realm_trust_admin_server : string option; [@option]
      (** The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship. *)
  cross_realm_trust_kdc : string option; [@option]
      (** The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship. *)
  cross_realm_trust_realm : string option; [@option]
      (** The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust. *)
  cross_realm_trust_shared_password_uri : string option; [@option]
      (** The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster
Kerberos realm and the remote trusted realm, in a cross realm trust relationship. *)
  enable_kerberos : bool option; [@option]
      (** Flag to indicate whether to Kerberize the cluster. *)
  kdc_db_key_uri : string option; [@option]
      (** The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database. *)
  key_password_uri : string option; [@option]
      (** The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc. *)
  keystore_password_uri : string option; [@option]
      (** The Cloud Storage URI of a KMS encrypted file containing
the password to the user provided keystore. For the self-signed certificate, this password is generated
by Dataproc *)
  keystore_uri : string option; [@option]
      (** The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. *)
  kms_key_uri : string;
      (** The uri of the KMS key used to encrypt various sensitive files. *)
  realm : string option; [@option]
      (** The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of hostnames will be the realm. *)
  root_principal_password_uri : string;
      (** The cloud Storage URI of a KMS encrypted file containing the root principal password. *)
  tgt_lifetime_hours : float option; [@option]
      (** The lifetime of the ticket granting ticket, in hours. *)
  truststore_password_uri : string option; [@option]
      (** The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc. *)
  truststore_uri : string option; [@option]
      (** The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. *)
}
[@@deriving yojson_of]
(** Kerberos related configuration *)

type google_dataproc_cluster__cluster_config__security_config = {
  kerberos_config :
    google_dataproc_cluster__cluster_config__security_config__kerberos_config
    list;
}
[@@deriving yojson_of]
(** Security related configuration. *)

type google_dataproc_cluster__cluster_config__software_config = {
  image_version : string option; [@option]
      (** The Cloud Dataproc image version to use for the cluster - this controls the sets of software versions installed onto the nodes when you create clusters. If not specified, defaults to the latest version. *)
  optional_components : string list option; [@option]
      (** The set of optional components to activate on the cluster. *)
  override_properties : (string * string) list option; [@option]
      (** A list of override and additional properties (key/value pairs) used to modify various aspects of the common configuration files used when creating a cluster. *)
  properties : (string * string) list;
      (** A list of the properties used to set the daemon config files. This will include any values supplied by the user via cluster_config.software_config.override_properties *)
}
[@@deriving yojson_of]
(** The config settings for software inside the cluster. *)

type google_dataproc_cluster__cluster_config__worker_config__accelerators = {
  accelerator_count : float;
      (** The number of the accelerator cards of this type exposed to this instance. Often restricted to one of 1, 2, 4, or 8. *)
  accelerator_type : string;
      (** The short name of the accelerator type to expose to this instance. For example, nvidia-tesla-k80. *)
}
[@@deriving yojson_of]
(** The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times. *)

type google_dataproc_cluster__cluster_config__worker_config__disk_config = {
  boot_disk_size_gb : float option; [@option]
      (** Size of the primary disk attached to each node, specified in GB. The primary disk contains the boot volume and system libraries, and the smallest allowed disk size is 10GB. GCP will default to a predetermined computed value if not set (currently 500GB). Note: If SSDs are not attached, it also contains the HDFS data blocks and Hadoop working directories. *)
  boot_disk_type : string option; [@option]
      (** The disk type of the primary disk attached to each node. Such as pd-ssd or pd-standard. Defaults to pd-standard. *)
  num_local_ssds : float option; [@option]
      (** The amount of local SSD disks that will be attached to each master cluster node. Defaults to 0. *)
}
[@@deriving yojson_of]
(** Disk Config *)

type google_dataproc_cluster__cluster_config__worker_config = {
  image_uri : string option; [@option]
      (** The URI for the image to use for this master/worker *)
  instance_names : string list;
      (** List of master/worker instance names which have been assigned to the cluster. *)
  machine_type : string option; [@option]
      (** The name of a Google Compute Engine machine type to create for the master/worker *)
  min_cpu_platform : string option; [@option]
      (** The name of a minimum generation of CPU family for the master/worker. If not specified, GCP will default to a predetermined computed value for each zone. *)
  min_num_instances : float option; [@option]
      (** The minimum number of primary worker instances to create. *)
  num_instances : float option; [@option]
      (** Specifies the number of worker nodes to create. If not specified, GCP will default to a predetermined computed value. *)
  accelerators :
    google_dataproc_cluster__cluster_config__worker_config__accelerators
    list;
  disk_config :
    google_dataproc_cluster__cluster_config__worker_config__disk_config
    list;
}
[@@deriving yojson_of]
(** The Compute Engine config settings for the cluster's worker instances. *)

type google_dataproc_cluster__cluster_config = {
  bucket : string;
      (**  The name of the cloud storage bucket ultimately used to house the staging data for the cluster. If staging_bucket is specified, it will contain this value, otherwise it will be the auto generated name. *)
  staging_bucket : string option; [@option]
      (** The Cloud Storage staging bucket used to stage files, such as Hadoop jars, between client machines and the cluster. Note: If you don't explicitly specify a staging_bucket then GCP will auto create / assign one for you. However, you are not guaranteed an auto generated bucket which is solely dedicated to your cluster; it may be shared with other clusters in the same region/zone also choosing to use the auto generation option. *)
  temp_bucket : string option; [@option]
      (** The Cloud Storage temp bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. Note: If you don't explicitly specify a temp_bucket then GCP will auto create / assign one for you. *)
  autoscaling_config :
    google_dataproc_cluster__cluster_config__autoscaling_config list;
  auxiliary_node_groups :
    google_dataproc_cluster__cluster_config__auxiliary_node_groups
    list;
  dataproc_metric_config :
    google_dataproc_cluster__cluster_config__dataproc_metric_config
    list;
  encryption_config :
    google_dataproc_cluster__cluster_config__encryption_config list;
  endpoint_config :
    google_dataproc_cluster__cluster_config__endpoint_config list;
  gce_cluster_config :
    google_dataproc_cluster__cluster_config__gce_cluster_config list;
  initialization_action :
    google_dataproc_cluster__cluster_config__initialization_action
    list;
  lifecycle_config :
    google_dataproc_cluster__cluster_config__lifecycle_config list;
  master_config :
    google_dataproc_cluster__cluster_config__master_config list;
  metastore_config :
    google_dataproc_cluster__cluster_config__metastore_config list;
  preemptible_worker_config :
    google_dataproc_cluster__cluster_config__preemptible_worker_config
    list;
  security_config :
    google_dataproc_cluster__cluster_config__security_config list;
  software_config :
    google_dataproc_cluster__cluster_config__software_config list;
  worker_config :
    google_dataproc_cluster__cluster_config__worker_config list;
}
[@@deriving yojson_of]
(** Allows you to configure various aspects of the cluster. *)

type google_dataproc_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dataproc_cluster__timeouts *)

type google_dataproc_cluster__virtual_cluster_config__auxiliary_services_config__metastore_config = {
  dataproc_metastore_service : string option; [@option]
      (** The Hive Metastore configuration for this workload. *)
}
[@@deriving yojson_of]
(** The Hive Metastore configuration for this workload. *)

type google_dataproc_cluster__virtual_cluster_config__auxiliary_services_config__spark_history_server_config = {
  dataproc_cluster : string option; [@option]
      (** Resource name of an existing Dataproc Cluster to act as a Spark History Server for the workload. *)
}
[@@deriving yojson_of]
(** The Spark History Server configuration for the workload. *)

type google_dataproc_cluster__virtual_cluster_config__auxiliary_services_config = {
  metastore_config :
    google_dataproc_cluster__virtual_cluster_config__auxiliary_services_config__metastore_config
    list;
  spark_history_server_config :
    google_dataproc_cluster__virtual_cluster_config__auxiliary_services_config__spark_history_server_config
    list;
}
[@@deriving yojson_of]
(** Auxiliary services configuration for a Cluster. *)

type google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling = {
  max_node_count : float option; [@option]
      (** The maximum number of nodes in the node pool. Must be >= minNodeCount, and must be > 0. *)
  min_node_count : float option; [@option]
      (** The minimum number of nodes in the node pool. Must be >= 0 and <= maxNodeCount. *)
}
[@@deriving yojson_of]
(** The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present. *)

type google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config = {
  local_ssd_count : float option; [@option]
      (** The minimum number of nodes in the node pool. Must be >= 0 and <= maxNodeCount. *)
  machine_type : string option; [@option]
      (** The name of a Compute Engine machine type. *)
  min_cpu_platform : string option; [@option]
      (** Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as Intel Haswell or Intel Sandy Bridge. *)
  preemptible : bool option; [@option]
      (** Whether the nodes are created as preemptible VM instances. Preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role). *)
  spot : bool option; [@option]
      (** Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag. *)
}
[@@deriving yojson_of]
(** The node pool configuration. *)

type google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config = {
  locations : string list;
      (** The list of Compute Engine zones where node pool nodes associated with a Dataproc on GKE virtual cluster will be located. *)
  autoscaling :
    google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__autoscaling
    list;
  config :
    google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config__config
    list;
}
[@@deriving yojson_of]
(** Input only. The configuration for the GKE node pool. *)

type google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target = {
  node_pool : string;
      (** The target GKE node pool. Format: 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{nodePool}' *)
  roles : string list;
      (** The roles associated with the GKE node pool. *)
  node_pool_config :
    google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target__node_pool_config
    list;
}
[@@deriving yojson_of]
(** GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. *)

type google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config = {
  gke_cluster_target : string option; [@option]
      (** A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}' *)
  node_pool_target :
    google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config__node_pool_target
    list;
}
[@@deriving yojson_of]
(** The configuration for running the Dataproc cluster on GKE. *)

type google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config = {
  component_version : (string * string) list;
      (** The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed. *)
  properties : (string * string) list option; [@option]
      (** The properties to set on daemon config files. Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. *)
}
[@@deriving yojson_of]
(** The software configuration for this Dataproc cluster running on Kubernetes. *)

type google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config = {
  kubernetes_namespace : string option; [@option]
      (** A namespace within the Kubernetes cluster to deploy into. If this namespace does not exist, it is created. If it exists, Dataproc verifies that another Dataproc VirtualCluster is not installed into it. If not specified, the name of the Dataproc Cluster is used. *)
  gke_cluster_config :
    google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__gke_cluster_config
    list;
  kubernetes_software_config :
    google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config__kubernetes_software_config
    list;
}
[@@deriving yojson_of]
(** The configuration for running the Dataproc cluster on Kubernetes. *)

type google_dataproc_cluster__virtual_cluster_config = {
  staging_bucket : string option; [@option]
      (** A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. *)
  auxiliary_services_config :
    google_dataproc_cluster__virtual_cluster_config__auxiliary_services_config
    list;
  kubernetes_cluster_config :
    google_dataproc_cluster__virtual_cluster_config__kubernetes_cluster_config
    list;
}
[@@deriving yojson_of]
(** The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster. Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtualClusterConfig must be specified. *)

type google_dataproc_cluster = {
  graceful_decommission_timeout : string option; [@option]
      (** The timeout duration which allows graceful decomissioning when you change the number of worker nodes directly through a terraform apply *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** The list of the labels (key/value pairs) configured on the resource and to be applied to instances in the cluster.
				
				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** The name of the cluster, unique within the project and zone. *)
  project : string option; [@option]
      (** The ID of the project in which the cluster will exist. If it is not provided, the provider project is used. *)
  region : string option; [@option]
      (** The region in which the cluster and associated nodes will be created in. Defaults to global. *)
  cluster_config : google_dataproc_cluster__cluster_config list;
  timeouts : google_dataproc_cluster__timeouts option;
  virtual_cluster_config :
    google_dataproc_cluster__virtual_cluster_config list;
}
[@@deriving yojson_of]
(** google_dataproc_cluster *)

let google_dataproc_cluster ?graceful_decommission_timeout ?id
    ?labels ?project ?region ?timeouts ~name ~cluster_config
    ~virtual_cluster_config __resource_id =
  let __resource_type = "google_dataproc_cluster" in
  let __resource =
    {
      graceful_decommission_timeout;
      id;
      labels;
      name;
      project;
      region;
      cluster_config;
      timeouts;
      virtual_cluster_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_cluster __resource);
  ()
