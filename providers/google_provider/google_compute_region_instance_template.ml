(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_region_instance_template__advanced_machine_features = {
  enable_nested_virtualization : bool option; [@option]
      (** Whether to enable nested virtualization or not. *)
  threads_per_core : float option; [@option]
      (** The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. *)
  visible_core_count : float option; [@option]
      (** The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width. *)
}
[@@deriving yojson_of]
(** Controls for advanced machine-related behavior features. *)

type google_compute_region_instance_template__confidential_instance_config = {
  enable_confidential_compute : bool;
      (** Defines whether the instance should have confidential compute enabled. *)
}
[@@deriving yojson_of]
(** The Confidential VM config being used by the instance. on_host_maintenance has to be set to TERMINATE or this will fail to create. *)

type google_compute_region_instance_template__disk__disk_encryption_key = {
  kms_key_self_link : string;
      (** The self link of the encryption key that is stored in Google Cloud KMS. *)
}
[@@deriving yojson_of]
(** Encrypts or decrypts a disk using a customer-supplied encryption key. *)

type google_compute_region_instance_template__disk__source_image_encryption_key = {
  kms_key_self_link : string;
      (** The self link of the encryption key that is stored in
Google Cloud KMS. *)
  kms_key_service_account : string option; [@option]
      (** The service account being used for the encryption
request for the given KMS key. If absent, the Compute
Engine default service account is used. *)
}
[@@deriving yojson_of]
(** The customer-supplied encryption key of the source
image. Required if the source image is protected by a
customer-supplied encryption key.

Instance templates do not store customer-supplied
encryption keys, so you cannot create disks for
instances in a managed instance group if the source
images are encrypted with your own keys. *)

type google_compute_region_instance_template__disk__source_snapshot_encryption_key = {
  kms_key_self_link : string;
      (** The self link of the encryption key that is stored in
Google Cloud KMS. *)
  kms_key_service_account : string option; [@option]
      (** The service account being used for the encryption
request for the given KMS key. If absent, the Compute
Engine default service account is used. *)
}
[@@deriving yojson_of]
(** The customer-supplied encryption key of the source snapshot. *)

type google_compute_region_instance_template__disk = {
  auto_delete : bool option; [@option]
      (** Whether or not the disk should be auto-deleted. This defaults to true. *)
  boot : bool option; [@option]
      (** Indicates that this is a boot disk. *)
  device_name : string option; [@option]
      (** A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk. *)
  disk_name : string option; [@option]
      (** Name of the disk. When not provided, this defaults to the name of the instance. *)
  disk_size_gb : float option; [@option]
      (** The size of the image in gigabytes. If not specified, it will inherit the size of its base image. For SCRATCH disks, the size must be one of 375 or 3000 GB, with a default of 375 GB. *)
  disk_type : string option; [@option]
      (** The Google Compute Engine disk type. Such as pd-ssd, local-ssd, pd-balanced or pd-standard. *)
  interface : string option; [@option]
      (** Specifies the disk interface to use for attaching this disk. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to disks, *)
  mode : string option; [@option]
      (** The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If you are attaching or creating a boot disk, this must read-write mode. *)
  provisioned_iops : float option; [@option]
      (** Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk). *)
  resource_manager_tags : (string * string) list option; [@option]
      (** A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. *)
  resource_policies : string list option; [@option]
      (** A list (short name or id) of resource policies to attach to this disk. Currently a max of 1 resource policy is supported. *)
  source : string option; [@option]
      (** The name (not self_link) of the disk (such as those managed by google_compute_disk) to attach. ~> Note: Either source or source_image is required when creating a new instance except for when creating a local SSD. *)
  source_image : string option; [@option]
      (** The image from which to initialize this disk. This can be one of: the image's self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}. ~> Note: Either source or source_image is required when creating a new instance except for when creating a local SSD. *)
  source_snapshot : string option; [@option]
      (** The source snapshot to create this disk. When creating
a new instance, one of initializeParams.sourceSnapshot,
initializeParams.sourceImage, or disks.source is
required except for local SSD. *)
  type_ : string option; [@option] [@key "type"]
      (** The type of Google Compute Engine disk, can be either SCRATCH or PERSISTENT. *)
  disk_encryption_key :
    google_compute_region_instance_template__disk__disk_encryption_key
    list;
  source_image_encryption_key :
    google_compute_region_instance_template__disk__source_image_encryption_key
    list;
  source_snapshot_encryption_key :
    google_compute_region_instance_template__disk__source_snapshot_encryption_key
    list;
}
[@@deriving yojson_of]
(** Disks to attach to instances created from this template. This can be specified multiple times for multiple disks. *)

type google_compute_region_instance_template__guest_accelerator = {
  count : float;
      (** The number of the guest accelerator cards exposed to this instance. *)
  type_ : string; [@key "type"]
      (** The accelerator type resource to expose to this instance. E.g. nvidia-tesla-k80. *)
}
[@@deriving yojson_of]
(** List of the type and count of accelerator cards attached to the instance. *)

type google_compute_region_instance_template__network_interface__access_config = {
  nat_ip : string option; [@option]
      (** The IP address that will be 1:1 mapped to the instance's network ip. If not given, one will be generated. *)
  network_tier : string option; [@option]
      (** The networking tier used for configuring this instance template. This field can take the following values: PREMIUM, STANDARD, FIXED_STANDARD. If this field is not specified, it is assumed to be PREMIUM. *)
  public_ptr_domain_name : string;
      (** The DNS domain name for the public PTR record.The DNS domain name for the public PTR record. *)
}
[@@deriving yojson_of]
(** Access configurations, i.e. IPs via which this instance can be accessed via the Internet. Omit to ensure that the instance is not accessible from the Internet (this means that ssh provisioners will not work unless you are running Terraform can send traffic to the instance's network (e.g. via tunnel or because it is running on another cloud instance on that network). This block can be repeated multiple times. *)

type google_compute_region_instance_template__network_interface__alias_ip_range = {
  ip_cidr_range : string;
      (** The IP CIDR range represented by this alias IP range. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. At the time of writing only a netmask (e.g. /24) may be supplied, with a CIDR format resulting in an API error. *)
  subnetwork_range_name : string option; [@option]
      (** The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range. If left unspecified, the primary range of the subnetwork will be used. *)
}
[@@deriving yojson_of]
(** An array of alias IP ranges for this network interface. Can only be specified for network interfaces on subnet-mode networks. *)

type google_compute_region_instance_template__network_interface__ipv6_access_config = {
  external_ipv6 : string;
      (** The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically. *)
  external_ipv6_prefix_length : string;
      (** The prefix length of the external IPv6 range. *)
  name : string;  (** The name of this access configuration. *)
  network_tier : string;
      (** The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6 *)
  public_ptr_domain_name : string;
      (** The domain name to be used when creating DNSv6 records for the external IPv6 ranges. *)
}
[@@deriving yojson_of]
(** An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access. *)

type google_compute_region_instance_template__network_interface = {
  internal_ipv6_prefix_length : float option; [@option]
      (** The prefix length of the primary internal IPv6 range. *)
  ipv6_access_type : string;
      (** One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork. *)
  ipv6_address : string option; [@option]
      (** An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork. *)
  name : string;  (** The name of the network_interface. *)
  network : string option; [@option]
      (** The name or self_link of the network to attach this interface to. Use network attribute for Legacy or Auto subnetted networks and subnetwork for custom subnetted networks. *)
  network_ip : string option; [@option]
      (** The private IP address to assign to the instance. If empty, the address will be automatically assigned. *)
  nic_type : string option; [@option]
      (** The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET *)
  queue_count : float option; [@option]
      (** The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified. *)
  stack_type : string option; [@option]
      (** The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. *)
  subnetwork : string option; [@option]
      (** The name of the subnetwork to attach this interface to. The subnetwork must exist in the same region this instance will be created in. Either network or subnetwork must be provided. *)
  subnetwork_project : string option; [@option]
      (** The ID of the project in which the subnetwork belongs. If it is not provided, the provider project is used. *)
  access_config :
    google_compute_region_instance_template__network_interface__access_config
    list;
  alias_ip_range :
    google_compute_region_instance_template__network_interface__alias_ip_range
    list;
  ipv6_access_config :
    google_compute_region_instance_template__network_interface__ipv6_access_config
    list;
}
[@@deriving yojson_of]
(** Networks to attach to instances created from this template. This can be specified multiple times for multiple networks. *)

type google_compute_region_instance_template__network_performance_config = {
  total_egress_bandwidth_tier : string;
      (** The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT *)
}
[@@deriving yojson_of]
(** Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. *)

type google_compute_region_instance_template__reservation_affinity__specific_reservation = {
  key : string;
      (** Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value. *)
  values : string list;
      (** Corresponds to the label values of a reservation resource. *)
}
[@@deriving yojson_of]
(** Specifies the label selector for the reservation to use. *)

type google_compute_region_instance_template__reservation_affinity = {
  type_ : string; [@key "type"]
      (** The type of reservation from which this instance can consume resources. *)
  specific_reservation :
    google_compute_region_instance_template__reservation_affinity__specific_reservation
    list;
}
[@@deriving yojson_of]
(** Specifies the reservations that this instance can consume from. *)

type google_compute_region_instance_template__scheduling__local_ssd_recovery_timeout = {
  nanos : float option; [@option]
      (** Span of time that's a fraction of a second at nanosecond
resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must
be from 0 to 999,999,999 inclusive. *)
  seconds : float;
      (** Span of time at a resolution of a second.
Must be from 0 to 315,576,000,000 inclusive. *)
}
[@@deriving yojson_of]
(** Specifies the maximum amount of time a Local Ssd Vm should wait while
  recovery of the Local Ssd state is attempted. Its value should be in
  between 0 and 168 hours with hour granularity and the default value being 1
  hour. *)

type google_compute_region_instance_template__scheduling__node_affinities = {
  key : string;  (** key *)
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems. *)

type google_compute_region_instance_template__scheduling = {
  automatic_restart : bool option; [@option]
      (** Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). This defaults to true. *)
  instance_termination_action : string option; [@option]
      (** Specifies the action GCE should take when SPOT VM is preempted. *)
  min_node_cpus : float option; [@option]
      (** Minimum number of cpus for the instance. *)
  on_host_maintenance : string option; [@option]
      (** Defines the maintenance behavior for this instance. *)
  preemptible : bool option; [@option]
      (** Allows instance to be preempted. This defaults to false. *)
  provisioning_model : string option; [@option]
      (** Whether the instance is spot. If this is set as SPOT. *)
  local_ssd_recovery_timeout :
    google_compute_region_instance_template__scheduling__local_ssd_recovery_timeout
    list;
  node_affinities :
    google_compute_region_instance_template__scheduling__node_affinities
    list;
}
[@@deriving yojson_of]
(** The scheduling strategy to use. *)

type google_compute_region_instance_template__service_account = {
  email : string option; [@option]
      (** The service account e-mail address. If not given, the default Google Compute Engine service account is used. *)
  scopes : string list;
      (** A list of service scopes. Both OAuth2 URLs and gcloud short names are supported. To allow full access to all Cloud APIs, use the cloud-platform scope. *)
}
[@@deriving yojson_of]
(** Service account to attach to the instance. *)

type google_compute_region_instance_template__shielded_instance_config = {
  enable_integrity_monitoring : bool option; [@option]
      (** Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true. *)
  enable_secure_boot : bool option; [@option]
      (** Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false. *)
  enable_vtpm : bool option; [@option]
      (** Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true. *)
}
[@@deriving yojson_of]
(** Enable Shielded VM on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Note: shielded_instance_config can only be used with boot images with shielded vm support. *)

type google_compute_region_instance_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_region_instance_template__timeouts *)

type google_compute_region_instance_template = {
  can_ip_forward : bool option; [@option]
      (** Whether to allow sending and receiving of packets with non-matching source or destination IPs. This defaults to false. *)
  description : string option; [@option]
      (** A brief description of this resource. *)
  instance_description : string option; [@option]
      (** A description of the instance. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to instances created from this template,
				
				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  machine_type : string;
      (** The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM. *)
  metadata : (string * string) list option; [@option]
      (** Metadata key/value pairs to make available from within instances created from this template. *)
  metadata_startup_script : string option; [@option]
      (** An alternative to using the startup-script metadata key, mostly to match the compute_instance resource. This replaces the startup-script metadata key on the created instance and thus the two mechanisms are not allowed to be used simultaneously. *)
  min_cpu_platform : string option; [@option]
      (** Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell or Intel Skylake. *)
  resource_manager_tags : (string * string) list option; [@option]
      (** A map of resource manager tags.
				Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. *)
  resource_policies : string list option; [@option]
      (** A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. *)
  tags : string list option; [@option]
      (** Tags to attach to the instance. *)
  advanced_machine_features :
    google_compute_region_instance_template__advanced_machine_features
    list;
  confidential_instance_config :
    google_compute_region_instance_template__confidential_instance_config
    list;
  disk : google_compute_region_instance_template__disk list;
  guest_accelerator :
    google_compute_region_instance_template__guest_accelerator list;
  network_interface :
    google_compute_region_instance_template__network_interface list;
  network_performance_config :
    google_compute_region_instance_template__network_performance_config
    list;
  reservation_affinity :
    google_compute_region_instance_template__reservation_affinity
    list;
  scheduling :
    google_compute_region_instance_template__scheduling list;
  service_account :
    google_compute_region_instance_template__service_account list;
  shielded_instance_config :
    google_compute_region_instance_template__shielded_instance_config
    list;
  timeouts : google_compute_region_instance_template__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_instance_template *)

let google_compute_region_instance_template ?can_ip_forward
    ?description ?instance_description ?labels ?metadata
    ?metadata_startup_script ?min_cpu_platform ?resource_manager_tags
    ?resource_policies ?tags ?timeouts ~machine_type
    ~advanced_machine_features ~confidential_instance_config ~disk
    ~guest_accelerator ~network_interface ~network_performance_config
    ~reservation_affinity ~scheduling ~service_account
    ~shielded_instance_config __resource_id =
  let __resource_type = "google_compute_region_instance_template" in
  let __resource =
    {
      can_ip_forward;
      description;
      instance_description;
      labels;
      machine_type;
      metadata;
      metadata_startup_script;
      min_cpu_platform;
      resource_manager_tags;
      resource_policies;
      tags;
      advanced_machine_features;
      confidential_instance_config;
      disk;
      guest_accelerator;
      network_interface;
      network_performance_config;
      reservation_affinity;
      scheduling;
      service_account;
      shielded_instance_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_instance_template __resource);
  ()
