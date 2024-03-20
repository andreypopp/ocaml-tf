(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type guest_accelerator = {
  count : float prop;  (** count *)
  type_ : string prop; [@key "type"]  (** type *)
}

[@@@deriving.end]

type advanced_machine_features

val advanced_machine_features :
  ?enable_nested_virtualization:bool prop ->
  ?threads_per_core:float prop ->
  ?visible_core_count:float prop ->
  unit ->
  advanced_machine_features

type attached_disk

val attached_disk :
  ?device_name:string prop ->
  ?disk_encryption_key_raw:string prop ->
  ?kms_key_self_link:string prop ->
  ?mode:string prop ->
  source:string prop ->
  unit ->
  attached_disk

type boot_disk__initialize_params

val boot_disk__initialize_params :
  ?enable_confidential_compute:bool prop ->
  ?image:string prop ->
  ?labels:(string * string prop) list ->
  ?provisioned_iops:float prop ->
  ?provisioned_throughput:float prop ->
  ?resource_manager_tags:(string * string prop) list ->
  ?size:float prop ->
  ?type_:string prop ->
  unit ->
  boot_disk__initialize_params

type boot_disk

val boot_disk :
  ?auto_delete:bool prop ->
  ?device_name:string prop ->
  ?disk_encryption_key_raw:string prop ->
  ?kms_key_self_link:string prop ->
  ?mode:string prop ->
  ?source:string prop ->
  initialize_params:boot_disk__initialize_params list ->
  unit ->
  boot_disk

type confidential_instance_config

val confidential_instance_config :
  enable_confidential_compute:bool prop ->
  unit ->
  confidential_instance_config

type network_interface__access_config

val network_interface__access_config :
  ?nat_ip:string prop ->
  ?network_tier:string prop ->
  ?public_ptr_domain_name:string prop ->
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
  ?external_ipv6:string prop ->
  ?external_ipv6_prefix_length:string prop ->
  ?name:string prop ->
  ?public_ptr_domain_name:string prop ->
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
  access_config:network_interface__access_config list ->
  alias_ip_range:network_interface__alias_ip_range list ->
  ipv6_access_config:network_interface__ipv6_access_config list ->
  unit ->
  network_interface

type network_performance_config

val network_performance_config :
  total_egress_bandwidth_tier:string prop ->
  unit ->
  network_performance_config

type params

val params :
  ?resource_manager_tags:(string * string prop) list ->
  unit ->
  params

type reservation_affinity__specific_reservation

val reservation_affinity__specific_reservation :
  key:string prop ->
  values:string prop list ->
  unit ->
  reservation_affinity__specific_reservation

type reservation_affinity

val reservation_affinity :
  type_:string prop ->
  specific_reservation:
    reservation_affinity__specific_reservation list ->
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
  local_ssd_recovery_timeout:
    scheduling__local_ssd_recovery_timeout list ->
  node_affinities:scheduling__node_affinities list ->
  unit ->
  scheduling

type scratch_disk

val scratch_disk :
  ?device_name:string prop ->
  ?size:float prop ->
  interface:string prop ->
  unit ->
  scratch_disk

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
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_instance

val google_compute_instance :
  ?allow_stopping_for_update:bool prop ->
  ?can_ip_forward:bool prop ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?desired_status:string prop ->
  ?enable_display:bool prop ->
  ?guest_accelerator:guest_accelerator list ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?metadata:(string * string prop) list ->
  ?metadata_startup_script:string prop ->
  ?min_cpu_platform:string prop ->
  ?project:string prop ->
  ?resource_policies:string prop list ->
  ?tags:string prop list ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  machine_type:string prop ->
  name:string prop ->
  advanced_machine_features:advanced_machine_features list ->
  attached_disk:attached_disk list ->
  boot_disk:boot_disk list ->
  confidential_instance_config:confidential_instance_config list ->
  network_interface:network_interface list ->
  network_performance_config:network_performance_config list ->
  params:params list ->
  reservation_affinity:reservation_affinity list ->
  scheduling:scheduling list ->
  scratch_disk:scratch_disk list ->
  service_account:service_account list ->
  shielded_instance_config:shielded_instance_config list ->
  unit ->
  google_compute_instance

val yojson_of_google_compute_instance :
  google_compute_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_stopping_for_update : bool prop;
  can_ip_forward : bool prop;
  cpu_platform : string prop;
  current_status : string prop;
  deletion_protection : bool prop;
  description : string prop;
  desired_status : string prop;
  effective_labels : (string * string) list prop;
  enable_display : bool prop;
  guest_accelerator : guest_accelerator list prop;
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

val register :
  ?tf_module:tf_module ->
  ?allow_stopping_for_update:bool prop ->
  ?can_ip_forward:bool prop ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?desired_status:string prop ->
  ?enable_display:bool prop ->
  ?guest_accelerator:guest_accelerator list ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?metadata:(string * string prop) list ->
  ?metadata_startup_script:string prop ->
  ?min_cpu_platform:string prop ->
  ?project:string prop ->
  ?resource_policies:string prop list ->
  ?tags:string prop list ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  machine_type:string prop ->
  name:string prop ->
  advanced_machine_features:advanced_machine_features list ->
  attached_disk:attached_disk list ->
  boot_disk:boot_disk list ->
  confidential_instance_config:confidential_instance_config list ->
  network_interface:network_interface list ->
  network_performance_config:network_performance_config list ->
  params:params list ->
  reservation_affinity:reservation_affinity list ->
  scheduling:scheduling list ->
  scratch_disk:scratch_disk list ->
  service_account:service_account list ->
  shielded_instance_config:shielded_instance_config list ->
  string ->
  t

val make :
  ?allow_stopping_for_update:bool prop ->
  ?can_ip_forward:bool prop ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?desired_status:string prop ->
  ?enable_display:bool prop ->
  ?guest_accelerator:guest_accelerator list ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?metadata:(string * string prop) list ->
  ?metadata_startup_script:string prop ->
  ?min_cpu_platform:string prop ->
  ?project:string prop ->
  ?resource_policies:string prop list ->
  ?tags:string prop list ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  machine_type:string prop ->
  name:string prop ->
  advanced_machine_features:advanced_machine_features list ->
  attached_disk:attached_disk list ->
  boot_disk:boot_disk list ->
  confidential_instance_config:confidential_instance_config list ->
  network_interface:network_interface list ->
  network_performance_config:network_performance_config list ->
  params:params list ->
  reservation_affinity:reservation_affinity list ->
  scheduling:scheduling list ->
  scratch_disk:scratch_disk list ->
  service_account:service_account list ->
  shielded_instance_config:shielded_instance_config list ->
  string ->
  t Tf_core.resource
