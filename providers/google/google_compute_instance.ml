(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_instance__advanced_machine_features = {
  enable_nested_virtualization : bool prop option; [@option]
      (** Whether to enable nested virtualization or not. *)
  threads_per_core : float prop option; [@option]
      (** The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. *)
  visible_core_count : float prop option; [@option]
      (** The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width. *)
}
[@@deriving yojson_of]
(** Controls for advanced machine-related behavior features. *)

type google_compute_instance__attached_disk = {
  device_name : string prop option; [@option]
      (** Name with which the attached disk is accessible under /dev/disk/by-id/ *)
  disk_encryption_key_raw : string prop option; [@option]
      (** A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. *)
  disk_encryption_key_sha256 : string prop;
      (** The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource. *)
  kms_key_self_link : string prop option; [@option]
      (** The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. *)
  mode : string prop option; [@option]
      (** Read/write mode for the disk. One of READ_ONLY or READ_WRITE. *)
  source : string prop;
      (** The name or self_link of the disk attached to this instance. *)
}
[@@deriving yojson_of]
(** List of disks attached to the instance *)

type google_compute_instance__boot_disk__initialize_params = {
  enable_confidential_compute : bool prop option; [@option]
      (** A flag to enable confidential compute mode on boot disk *)
  image : string prop option; [@option]
      (** The image from which this disk was initialised. *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs assigned to the disk. *)
  provisioned_iops : float prop option; [@option]
      (** Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. *)
  provisioned_throughput : float prop option; [@option]
      (** Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. *)
  resource_manager_tags : (string * string prop) list option;
      [@option]
      (** A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. *)
  size : float prop option; [@option]
      (** The size of the image in gigabytes. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced. *)
}
[@@deriving yojson_of]
(** Parameters with which a disk was created alongside the instance. *)

type google_compute_instance__boot_disk = {
  auto_delete : bool prop option; [@option]
      (** Whether the disk will be auto-deleted when the instance is deleted. *)
  device_name : string prop option; [@option]
      (** Name with which attached disk will be accessible under /dev/disk/by-id/ *)
  disk_encryption_key_raw : string prop option; [@option]
      (** A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. *)
  disk_encryption_key_sha256 : string prop;
      (** The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource. *)
  kms_key_self_link : string prop option; [@option]
      (** The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. *)
  mode : string prop option; [@option]
      (** Read/write mode for the disk. One of READ_ONLY or READ_WRITE. *)
  source : string prop option; [@option]
      (** The name or self_link of the disk attached to this instance. *)
  initialize_params :
    google_compute_instance__boot_disk__initialize_params list;
}
[@@deriving yojson_of]
(** The boot disk for the instance. *)

type google_compute_instance__confidential_instance_config = {
  enable_confidential_compute : bool prop;
      (** Defines whether the instance should have confidential compute enabled. *)
}
[@@deriving yojson_of]
(** The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create. *)

type google_compute_instance__network_interface__access_config = {
  nat_ip : string prop option; [@option]
      (** The IP address that is be 1:1 mapped to the instance's network ip. *)
  network_tier : string prop option; [@option]
      (** The networking tier used for configuring this instance. One of PREMIUM or STANDARD. *)
  public_ptr_domain_name : string prop option; [@option]
      (** The DNS domain name for the public PTR record. *)
}
[@@deriving yojson_of]
(** Access configurations, i.e. IPs via which this instance can be accessed via the Internet. *)

type google_compute_instance__network_interface__alias_ip_range = {
  ip_cidr_range : string prop;
      (** The IP CIDR range represented by this alias IP range. *)
  subnetwork_range_name : string prop option; [@option]
      (** The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range. *)
}
[@@deriving yojson_of]
(** An array of alias IP ranges for this network interface. *)

type google_compute_instance__network_interface__ipv6_access_config = {
  external_ipv6 : string prop option; [@option]
      (** The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork. *)
  external_ipv6_prefix_length : string prop option; [@option]
      (** The prefix length of the external IPv6 range. *)
  name : string prop option; [@option]
      (** The name of this access configuration. In ipv6AccessConfigs, the recommended name is External IPv6. *)
  network_tier : string prop;
      (** The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6 *)
  public_ptr_domain_name : string prop option; [@option]
      (** The domain name to be used when creating DNSv6 records for the external IPv6 ranges. *)
}
[@@deriving yojson_of]
(** An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access. *)

type google_compute_instance__network_interface = {
  internal_ipv6_prefix_length : float prop option; [@option]
      (** The prefix length of the primary internal IPv6 range. *)
  ipv6_access_type : string prop;
      (** One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork. *)
  ipv6_address : string prop option; [@option]
      (** An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork. *)
  name : string prop;  (** The name of the interface *)
  network : string prop option; [@option]
      (** The name or self_link of the network attached to this interface. *)
  network_ip : string prop option; [@option]
      (** The private IP address assigned to the instance. *)
  nic_type : string prop option; [@option]
      (** The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET *)
  queue_count : float prop option; [@option]
      (** The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified. *)
  stack_type : string prop option; [@option]
      (** The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. *)
  subnetwork : string prop option; [@option]
      (** The name or self_link of the subnetwork attached to this interface. *)
  subnetwork_project : string prop option; [@option]
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
  total_egress_bandwidth_tier : string prop;
      (** The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT *)
}
[@@deriving yojson_of]
(** Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. *)

type google_compute_instance__params = {
  resource_manager_tags : (string * string prop) list option;
      [@option]
      (** A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. *)
}
[@@deriving yojson_of]
(** Stores additional params passed with the request, but not persisted as part of resource payload. *)

type google_compute_instance__reservation_affinity__specific_reservation = {
  key : string prop;
      (** Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value. *)
  values : string prop list;
      (** Corresponds to the label values of a reservation resource. *)
}
[@@deriving yojson_of]
(** Specifies the label selector for the reservation to use. *)

type google_compute_instance__reservation_affinity = {
  type_ : string prop; [@key "type"]
      (** The type of reservation from which this instance can consume resources. *)
  specific_reservation :
    google_compute_instance__reservation_affinity__specific_reservation
    list;
}
[@@deriving yojson_of]
(** Specifies the reservations that this instance can consume from. *)

type google_compute_instance__scheduling__local_ssd_recovery_timeout = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond
resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must
be from 0 to 999,999,999 inclusive. *)
  seconds : float prop;
      (** Span of time at a resolution of a second.
Must be from 0 to 315,576,000,000 inclusive. *)
}
[@@deriving yojson_of]
(** Specifies the maximum amount of time a Local Ssd Vm should wait while
  recovery of the Local Ssd state is attempted. Its value should be in
  between 0 and 168 hours with hour granularity and the default value being 1
  hour. *)

type google_compute_instance__scheduling__node_affinities = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems. *)

type google_compute_instance__scheduling = {
  automatic_restart : bool prop option; [@option]
      (** Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user). *)
  instance_termination_action : string prop option; [@option]
      (** Specifies the action GCE should take when SPOT VM is preempted. *)
  min_node_cpus : float prop option; [@option]  (** min_node_cpus *)
  on_host_maintenance : string prop option; [@option]
      (** Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE, *)
  preemptible : bool prop option; [@option]
      (** Whether the instance is preemptible. *)
  provisioning_model : string prop option; [@option]
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
  device_name : string prop option; [@option]
      (** Name with which the attached disk is accessible under /dev/disk/by-id/ *)
  interface : string prop;
      (** The disk interface used for attaching this disk. One of SCSI or NVME. *)
  size : float prop option; [@option]
      (** The size of the disk in gigabytes. One of 375 or 3000. *)
}
[@@deriving yojson_of]
(** The scratch disks attached to the instance. *)

type google_compute_instance__service_account = {
  email : string prop option; [@option]
      (** The service account e-mail address. *)
  scopes : string prop list;  (** A list of service scopes. *)
}
[@@deriving yojson_of]
(** The service account to attach to the instance. *)

type google_compute_instance__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
      (** Whether integrity monitoring is enabled for the instance. *)
  enable_secure_boot : bool prop option; [@option]
      (** Whether secure boot is enabled for the instance. *)
  enable_vtpm : bool prop option; [@option]
      (** Whether the instance uses vTPM. *)
}
[@@deriving yojson_of]
(** The shielded vm config being used by the instance. *)

type google_compute_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_instance__timeouts *)

type google_compute_instance__guest_accelerator = {
  count : float prop;  (** count *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_compute_instance = {
  allow_stopping_for_update : bool prop option; [@option]
      (** If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail. *)
  can_ip_forward : bool prop option; [@option]
      (** Whether sending and receiving of packets with non-matching source or destination IPs is allowed. *)
  deletion_protection : bool prop option; [@option]
      (** Whether deletion protection is enabled on this instance. *)
  description : string prop option; [@option]
      (** A brief description of the resource. *)
  desired_status : string prop option; [@option]
      (** Desired status of the instance. Either RUNNING or TERMINATED. *)
  enable_display : bool prop option; [@option]
      (** Whether the instance has virtual displays enabled. *)
  guest_accelerator :
    google_compute_instance__guest_accelerator list option;
      [@option]
      (** List of the type and count of accelerator cards attached to the instance. *)
  hostname : string prop option; [@option]
      (** A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs assigned to the instance.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  machine_type : string prop;  (** The machine type to create. *)
  metadata : (string * string prop) list option; [@option]
      (** Metadata key/value pairs made available within the instance. *)
  metadata_startup_script : string prop option; [@option]
      (** Metadata startup scripts made available within the instance. *)
  min_cpu_platform : string prop option; [@option]
      (** The minimum CPU platform specified for the VM instance. *)
  name : string prop;
      (** The name of the instance. One of name or self_link must be provided. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used. *)
  resource_policies : string prop list option; [@option]
      (** A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. *)
  tags : string prop list option; [@option]
      (** The list of tags attached to the instance. *)
  zone : string prop option; [@option]
      (** The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used. *)
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

type t = {
  allow_stopping_for_update : bool prop;
  can_ip_forward : bool prop;
  cpu_platform : string prop;
  current_status : string prop;
  deletion_protection : bool prop;
  description : string prop;
  desired_status : string prop;
  effective_labels : (string * string) list prop;
  enable_display : bool prop;
  guest_accelerator :
    google_compute_instance__guest_accelerator list prop;
  hostname : string prop;
  id : string prop;
  instance_id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  metadata : (string * string) list prop;
  metadata_fingerprint : string prop;
  metadata_startup_script : string prop;
  min_cpu_platform : string prop;
  name : string prop;
  project : string prop;
  resource_policies : string list prop;
  self_link : string prop;
  tags : string list prop;
  tags_fingerprint : string prop;
  terraform_labels : (string * string) list prop;
  zone : string prop;
}

let google_compute_instance ?allow_stopping_for_update
    ?can_ip_forward ?deletion_protection ?description ?desired_status
    ?enable_display ?guest_accelerator ?hostname ?id ?labels
    ?metadata ?metadata_startup_script ?min_cpu_platform ?project
    ?resource_policies ?tags ?zone ?timeouts ~machine_type ~name
    ~advanced_machine_features ~attached_disk ~boot_disk
    ~confidential_instance_config ~network_interface
    ~network_performance_config ~params ~reservation_affinity
    ~scheduling ~scratch_disk ~service_account
    ~shielded_instance_config __resource_id =
  let __resource_type = "google_compute_instance" in
  let __resource =
    ({
       allow_stopping_for_update;
       can_ip_forward;
       deletion_protection;
       description;
       desired_status;
       enable_display;
       guest_accelerator;
       hostname;
       id;
       labels;
       machine_type;
       metadata;
       metadata_startup_script;
       min_cpu_platform;
       name;
       project;
       resource_policies;
       tags;
       zone;
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
      : google_compute_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance __resource);
  let __resource_attributes =
    ({
       allow_stopping_for_update =
         Prop.computed __resource_type __resource_id
           "allow_stopping_for_update";
       can_ip_forward =
         Prop.computed __resource_type __resource_id "can_ip_forward";
       cpu_platform =
         Prop.computed __resource_type __resource_id "cpu_platform";
       current_status =
         Prop.computed __resource_type __resource_id "current_status";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       description =
         Prop.computed __resource_type __resource_id "description";
       desired_status =
         Prop.computed __resource_type __resource_id "desired_status";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       enable_display =
         Prop.computed __resource_type __resource_id "enable_display";
       guest_accelerator =
         Prop.computed __resource_type __resource_id
           "guest_accelerator";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       label_fingerprint =
         Prop.computed __resource_type __resource_id
           "label_fingerprint";
       labels = Prop.computed __resource_type __resource_id "labels";
       machine_type =
         Prop.computed __resource_type __resource_id "machine_type";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       metadata_fingerprint =
         Prop.computed __resource_type __resource_id
           "metadata_fingerprint";
       metadata_startup_script =
         Prop.computed __resource_type __resource_id
           "metadata_startup_script";
       min_cpu_platform =
         Prop.computed __resource_type __resource_id
           "min_cpu_platform";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       resource_policies =
         Prop.computed __resource_type __resource_id
           "resource_policies";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_fingerprint =
         Prop.computed __resource_type __resource_id
           "tags_fingerprint";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
