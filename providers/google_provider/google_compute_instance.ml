(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_instance__advanced_machine_features = {
  enable_nested_virtualization : bool option; [@option]
      (** Whether to enable nested virtualization or not. *)
  threads_per_core : float option; [@option]
      (** The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. *)
  visible_core_count : float option; [@option]
      (** The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width. *)
}
[@@deriving yojson_of]
(** Controls for advanced machine-related behavior features. *)

type google_compute_instance__attached_disk = {
  device_name : string option; [@option]
      (** Name with which the attached disk is accessible under /dev/disk/by-id/ *)
  disk_encryption_key_raw : string option; [@option]
      (** A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. *)
  disk_encryption_key_sha256 : string;
      (** The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource. *)
  kms_key_self_link : string option; [@option]
      (** The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. *)
  mode : string option; [@option]
      (** Read/write mode for the disk. One of READ_ONLY or READ_WRITE. *)
  source : string;
      (** The name or self_link of the disk attached to this instance. *)
}
[@@deriving yojson_of]
(** List of disks attached to the instance *)

type google_compute_instance__boot_disk__initialize_params = {
  enable_confidential_compute : bool option; [@option]
      (** A flag to enable confidential compute mode on boot disk *)
  image : string option; [@option]
      (** The image from which this disk was initialised. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs assigned to the disk. *)
  provisioned_iops : float option; [@option]
      (** Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. *)
  provisioned_throughput : float option; [@option]
      (** Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. *)
  resource_manager_tags : (string * string) list option; [@option]
      (** A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. *)
  size : float option; [@option]
      (** The size of the image in gigabytes. *)
  type_ : string option; [@option] [@key "type"]
      (** The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced. *)
}
[@@deriving yojson_of]
(** Parameters with which a disk was created alongside the instance. *)

type google_compute_instance__boot_disk = {
  auto_delete : bool option; [@option]
      (** Whether the disk will be auto-deleted when the instance is deleted. *)
  device_name : string option; [@option]
      (** Name with which attached disk will be accessible under /dev/disk/by-id/ *)
  disk_encryption_key_raw : string option; [@option]
      (** A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. *)
  disk_encryption_key_sha256 : string;
      (** The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource. *)
  kms_key_self_link : string option; [@option]
      (** The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. *)
  mode : string option; [@option]
      (** Read/write mode for the disk. One of READ_ONLY or READ_WRITE. *)
  source : string option; [@option]
      (** The name or self_link of the disk attached to this instance. *)
  initialize_params :
    google_compute_instance__boot_disk__initialize_params list;
}
[@@deriving yojson_of]
(** The boot disk for the instance. *)

type google_compute_instance__confidential_instance_config = {
  enable_confidential_compute : bool;
      (** Defines whether the instance should have confidential compute enabled. *)
}
[@@deriving yojson_of]
(** The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create. *)

type google_compute_instance__network_interface__access_config = {
  nat_ip : string option; [@option]
      (** The IP address that is be 1:1 mapped to the instance's network ip. *)
  network_tier : string option; [@option]
      (** The networking tier used for configuring this instance. One of PREMIUM or STANDARD. *)
  public_ptr_domain_name : string option; [@option]
      (** The DNS domain name for the public PTR record. *)
}
[@@deriving yojson_of]
(** Access configurations, i.e. IPs via which this instance can be accessed via the Internet. *)

type google_compute_instance__network_interface__alias_ip_range = {
  ip_cidr_range : string;
      (** The IP CIDR range represented by this alias IP range. *)
  subnetwork_range_name : string option; [@option]
      (** The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range. *)
}
[@@deriving yojson_of]
(** An array of alias IP ranges for this network interface. *)

type google_compute_instance__network_interface__ipv6_access_config = {
  external_ipv6 : string option; [@option]
      (** The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork. *)
  external_ipv6_prefix_length : string option; [@option]
      (** The prefix length of the external IPv6 range. *)
  name : string option; [@option]
      (** The name of this access configuration. In ipv6AccessConfigs, the recommended name is External IPv6. *)
  network_tier : string;
      (** The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6 *)
  public_ptr_domain_name : string option; [@option]
      (** The domain name to be used when creating DNSv6 records for the external IPv6 ranges. *)
}
[@@deriving yojson_of]
(** An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access. *)

type google_compute_instance__network_interface = {
  internal_ipv6_prefix_length : float option; [@option]
      (** The prefix length of the primary internal IPv6 range. *)
  ipv6_access_type : string;
      (** One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork. *)
  ipv6_address : string option; [@option]
      (** An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork. *)
  name : string;  (** The name of the interface *)
  network : string option; [@option]
      (** The name or self_link of the network attached to this interface. *)
  network_ip : string option; [@option]
      (** The private IP address assigned to the instance. *)
  nic_type : string option; [@option]
      (** The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET *)
  queue_count : float option; [@option]
      (** The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified. *)
  stack_type : string option; [@option]
      (** The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. *)
  subnetwork : string option; [@option]
      (** The name or self_link of the subnetwork attached to this interface. *)
  subnetwork_project : string option; [@option]
      (** The project in which the subnetwork belongs. *)
  access_config :
    google_compute_instance__network_interface__access_config list;
  alias_ip_range :
    google_compute_instance__network_interface__alias_ip_range list;
  ipv6_access_config :
    google_compute_instance__network_interface__ipv6_access_config
    list;
}
[@@deriving yojson_of]
(** The networks attached to the instance. *)

type google_compute_instance__network_performance_config = {
  total_egress_bandwidth_tier : string;
      (** The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT *)
}
[@@deriving yojson_of]
(** Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. *)

type google_compute_instance__params = {
  resource_manager_tags : (string * string) list option; [@option]
      (** A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. *)
}
[@@deriving yojson_of]
(** Stores additional params passed with the request, but not persisted as part of resource payload. *)

type google_compute_instance__reservation_affinity__specific_reservation = {
  key : string;
      (** Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value. *)
  values : string list;
      (** Corresponds to the label values of a reservation resource. *)
}
[@@deriving yojson_of]
(** Specifies the label selector for the reservation to use. *)

type google_compute_instance__reservation_affinity = {
  type_ : string; [@key "type"]
      (** The type of reservation from which this instance can consume resources. *)
  specific_reservation :
    google_compute_instance__reservation_affinity__specific_reservation
    list;
}
[@@deriving yojson_of]
(** Specifies the reservations that this instance can consume from. *)

type google_compute_instance__scheduling__local_ssd_recovery_timeout = {
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

type google_compute_instance__scheduling__node_affinities = {
  key : string;  (** key *)
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems. *)

type google_compute_instance__scheduling = {
  automatic_restart : bool option; [@option]
      (** Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user). *)
  instance_termination_action : string option; [@option]
      (** Specifies the action GCE should take when SPOT VM is preempted. *)
  min_node_cpus : float option; [@option]  (** min_node_cpus *)
  on_host_maintenance : string option; [@option]
      (** Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE, *)
  preemptible : bool option; [@option]
      (** Whether the instance is preemptible. *)
  provisioning_model : string option; [@option]
      (** Whether the instance is spot. If this is set as SPOT. *)
  local_ssd_recovery_timeout :
    google_compute_instance__scheduling__local_ssd_recovery_timeout
    list;
  node_affinities :
    google_compute_instance__scheduling__node_affinities list;
}
[@@deriving yojson_of]
(** The scheduling strategy being used by the instance. *)

type google_compute_instance__scratch_disk = {
  device_name : string option; [@option]
      (** Name with which the attached disk is accessible under /dev/disk/by-id/ *)
  interface : string;
      (** The disk interface used for attaching this disk. One of SCSI or NVME. *)
  size : float option; [@option]
      (** The size of the disk in gigabytes. One of 375 or 3000. *)
}
[@@deriving yojson_of]
(** The scratch disks attached to the instance. *)

type google_compute_instance__service_account = {
  email : string option; [@option]
      (** The service account e-mail address. *)
  scopes : string list;  (** A list of service scopes. *)
}
[@@deriving yojson_of]
(** The service account to attach to the instance. *)

type google_compute_instance__shielded_instance_config = {
  enable_integrity_monitoring : bool option; [@option]
      (** Whether integrity monitoring is enabled for the instance. *)
  enable_secure_boot : bool option; [@option]
      (** Whether secure boot is enabled for the instance. *)
  enable_vtpm : bool option; [@option]
      (** Whether the instance uses vTPM. *)
}
[@@deriving yojson_of]
(** The shielded vm config being used by the instance. *)

type google_compute_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_instance__timeouts *)

type google_compute_instance__guest_accelerator = {
  count : float;  (** count *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_compute_instance = {
  allow_stopping_for_update : bool option; [@option]
      (** If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail. *)
  can_ip_forward : bool option; [@option]
      (** Whether sending and receiving of packets with non-matching source or destination IPs is allowed. *)
  deletion_protection : bool option; [@option]
      (** Whether deletion protection is enabled on this instance. *)
  description : string option; [@option]
      (** A brief description of the resource. *)
  desired_status : string option; [@option]
      (** Desired status of the instance. Either RUNNING or TERMINATED. *)
  enable_display : bool option; [@option]
      (** Whether the instance has virtual displays enabled. *)
  hostname : string option; [@option]
      (** A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs assigned to the instance.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  machine_type : string;  (** The machine type to create. *)
  metadata : (string * string) list option; [@option]
      (** Metadata key/value pairs made available within the instance. *)
  metadata_startup_script : string option; [@option]
      (** Metadata startup scripts made available within the instance. *)
  name : string;
      (** The name of the instance. One of name or self_link must be provided. *)
  resource_policies : string list option; [@option]
      (** A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. *)
  tags : string list option; [@option]
      (** The list of tags attached to the instance. *)
  advanced_machine_features :
    google_compute_instance__advanced_machine_features list;
  attached_disk : google_compute_instance__attached_disk list;
  boot_disk : google_compute_instance__boot_disk list;
  confidential_instance_config :
    google_compute_instance__confidential_instance_config list;
  network_interface :
    google_compute_instance__network_interface list;
  network_performance_config :
    google_compute_instance__network_performance_config list;
  params : google_compute_instance__params list;
  reservation_affinity :
    google_compute_instance__reservation_affinity list;
  scheduling : google_compute_instance__scheduling list;
  scratch_disk : google_compute_instance__scratch_disk list;
  service_account : google_compute_instance__service_account list;
  shielded_instance_config :
    google_compute_instance__shielded_instance_config list;
  timeouts : google_compute_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance *)

let google_compute_instance ?allow_stopping_for_update
    ?can_ip_forward ?deletion_protection ?description ?desired_status
    ?enable_display ?hostname ?labels ?metadata
    ?metadata_startup_script ?resource_policies ?tags ?timeouts
    ~machine_type ~name ~advanced_machine_features ~attached_disk
    ~boot_disk ~confidential_instance_config ~network_interface
    ~network_performance_config ~params ~reservation_affinity
    ~scheduling ~scratch_disk ~service_account
    ~shielded_instance_config __resource_id =
  let __resource_type = "google_compute_instance" in
  let __resource =
    {
      allow_stopping_for_update;
      can_ip_forward;
      deletion_protection;
      description;
      desired_status;
      enable_display;
      hostname;
      labels;
      machine_type;
      metadata;
      metadata_startup_script;
      name;
      resource_policies;
      tags;
      advanced_machine_features;
      attached_disk;
      boot_disk;
      confidential_instance_config;
      network_interface;
      network_performance_config;
      params;
      reservation_affinity;
      scheduling;
      scratch_disk;
      service_account;
      shielded_instance_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance __resource);
  ()