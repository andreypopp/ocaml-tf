(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_machine_features

val advanced_machine_features :
  ?enable_nested_virtualization:bool prop ->
  ?threads_per_core:float prop ->
  ?visible_core_count:float prop ->
  unit ->
  advanced_machine_features

type confidential_instance_config

val confidential_instance_config :
  enable_confidential_compute:bool prop ->
  unit ->
  confidential_instance_config

type disk__disk_encryption_key

val disk__disk_encryption_key :
  kms_key_self_link:string prop -> unit -> disk__disk_encryption_key

type disk__source_image_encryption_key

val disk__source_image_encryption_key :
  ?kms_key_service_account:string prop ->
  kms_key_self_link:string prop ->
  unit ->
  disk__source_image_encryption_key

type disk__source_snapshot_encryption_key

val disk__source_snapshot_encryption_key :
  ?kms_key_service_account:string prop ->
  kms_key_self_link:string prop ->
  unit ->
  disk__source_snapshot_encryption_key

type disk

val disk :
  ?auto_delete:bool prop ->
  ?boot:bool prop ->
  ?device_name:string prop ->
  ?disk_name:string prop ->
  ?disk_size_gb:float prop ->
  ?disk_type:string prop ->
  ?interface:string prop ->
  ?labels:(string * string prop) list ->
  ?mode:string prop ->
  ?provisioned_iops:float prop ->
  ?resource_manager_tags:(string * string prop) list ->
  ?resource_policies:string prop list ->
  ?source:string prop ->
  ?source_image:string prop ->
  ?source_snapshot:string prop ->
  ?type_:string prop ->
  ?disk_encryption_key:disk__disk_encryption_key list ->
  ?source_image_encryption_key:disk__source_image_encryption_key list ->
  ?source_snapshot_encryption_key:
    disk__source_snapshot_encryption_key list ->
  unit ->
  disk

type guest_accelerator

val guest_accelerator :
  count:float prop -> type_:string prop -> unit -> guest_accelerator

type network_interface__access_config

val network_interface__access_config :
  ?nat_ip:string prop ->
  ?network_tier:string prop ->
  unit ->
  network_interface__access_config

type network_interface__alias_ip_range

val network_interface__alias_ip_range :
  ?subnetwork_range_name:string prop ->
  ip_cidr_range:string prop ->
  unit ->
  network_interface__alias_ip_range

type network_interface__ipv6_access_config

val network_interface__ipv6_access_config :
  network_tier:string prop ->
  unit ->
  network_interface__ipv6_access_config

type network_interface

val network_interface :
  ?internal_ipv6_prefix_length:float prop ->
  ?ipv6_address:string prop ->
  ?network:string prop ->
  ?network_ip:string prop ->
  ?nic_type:string prop ->
  ?queue_count:float prop ->
  ?stack_type:string prop ->
  ?subnetwork:string prop ->
  ?subnetwork_project:string prop ->
  ?access_config:network_interface__access_config list ->
  ?alias_ip_range:network_interface__alias_ip_range list ->
  ?ipv6_access_config:network_interface__ipv6_access_config list ->
  unit ->
  network_interface

type network_performance_config

val network_performance_config :
  total_egress_bandwidth_tier:string prop ->
  unit ->
  network_performance_config

type reservation_affinity__specific_reservation

val reservation_affinity__specific_reservation :
  key:string prop ->
  values:string prop list ->
  unit ->
  reservation_affinity__specific_reservation

type reservation_affinity

val reservation_affinity :
  ?specific_reservation:
    reservation_affinity__specific_reservation list ->
  type_:string prop ->
  unit ->
  reservation_affinity

type scheduling__local_ssd_recovery_timeout

val scheduling__local_ssd_recovery_timeout :
  ?nanos:float prop ->
  seconds:float prop ->
  unit ->
  scheduling__local_ssd_recovery_timeout

type scheduling__node_affinities

val scheduling__node_affinities :
  key:string prop ->
  operator:string prop ->
  values:string prop list ->
  unit ->
  scheduling__node_affinities

type scheduling

val scheduling :
  ?automatic_restart:bool prop ->
  ?instance_termination_action:string prop ->
  ?min_node_cpus:float prop ->
  ?on_host_maintenance:string prop ->
  ?preemptible:bool prop ->
  ?provisioning_model:string prop ->
  ?local_ssd_recovery_timeout:
    scheduling__local_ssd_recovery_timeout list ->
  node_affinities:scheduling__node_affinities list ->
  unit ->
  scheduling

type service_account

val service_account :
  ?email:string prop ->
  scopes:string prop list ->
  unit ->
  service_account

type shielded_instance_config

val shielded_instance_config :
  ?enable_integrity_monitoring:bool prop ->
  ?enable_secure_boot:bool prop ->
  ?enable_vtpm:bool prop ->
  unit ->
  shielded_instance_config

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_region_instance_template

val google_compute_region_instance_template :
  ?can_ip_forward:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?instance_description:string prop ->
  ?labels:(string * string prop) list ->
  ?metadata:(string * string prop) list ->
  ?metadata_startup_script:string prop ->
  ?min_cpu_platform:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?resource_manager_tags:(string * string prop) list ->
  ?resource_policies:string prop list ->
  ?tags:string prop list ->
  ?advanced_machine_features:advanced_machine_features list ->
  ?confidential_instance_config:confidential_instance_config list ->
  ?guest_accelerator:guest_accelerator list ->
  ?network_interface:network_interface list ->
  ?network_performance_config:network_performance_config list ->
  ?reservation_affinity:reservation_affinity list ->
  ?scheduling:scheduling list ->
  ?service_account:service_account list ->
  ?shielded_instance_config:shielded_instance_config list ->
  ?timeouts:timeouts ->
  machine_type:string prop ->
  disk:disk list ->
  unit ->
  google_compute_region_instance_template

val yojson_of_google_compute_region_instance_template :
  google_compute_region_instance_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  can_ip_forward : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  instance_description : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  metadata : (string * string) list prop;
  metadata_fingerprint : string prop;
  metadata_startup_script : string prop;
  min_cpu_platform : string prop;
  name : string prop;
  name_prefix : string prop;
  project : string prop;
  region : string prop;
  resource_manager_tags : (string * string) list prop;
  resource_policies : string list prop;
  self_link : string prop;
  tags : string list prop;
  tags_fingerprint : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?can_ip_forward:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?instance_description:string prop ->
  ?labels:(string * string prop) list ->
  ?metadata:(string * string prop) list ->
  ?metadata_startup_script:string prop ->
  ?min_cpu_platform:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?resource_manager_tags:(string * string prop) list ->
  ?resource_policies:string prop list ->
  ?tags:string prop list ->
  ?advanced_machine_features:advanced_machine_features list ->
  ?confidential_instance_config:confidential_instance_config list ->
  ?guest_accelerator:guest_accelerator list ->
  ?network_interface:network_interface list ->
  ?network_performance_config:network_performance_config list ->
  ?reservation_affinity:reservation_affinity list ->
  ?scheduling:scheduling list ->
  ?service_account:service_account list ->
  ?shielded_instance_config:shielded_instance_config list ->
  ?timeouts:timeouts ->
  machine_type:string prop ->
  disk:disk list ->
  string ->
  t

val make :
  ?can_ip_forward:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?instance_description:string prop ->
  ?labels:(string * string prop) list ->
  ?metadata:(string * string prop) list ->
  ?metadata_startup_script:string prop ->
  ?min_cpu_platform:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?resource_manager_tags:(string * string prop) list ->
  ?resource_policies:string prop list ->
  ?tags:string prop list ->
  ?advanced_machine_features:advanced_machine_features list ->
  ?confidential_instance_config:confidential_instance_config list ->
  ?guest_accelerator:guest_accelerator list ->
  ?network_interface:network_interface list ->
  ?network_performance_config:network_performance_config list ->
  ?reservation_affinity:reservation_affinity list ->
  ?scheduling:scheduling list ->
  ?service_account:service_account list ->
  ?shielded_instance_config:shielded_instance_config list ->
  ?timeouts:timeouts ->
  machine_type:string prop ->
  disk:disk list ->
  string ->
  t Tf_core.resource
