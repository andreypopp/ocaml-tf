(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_machine_features = {
  enable_nested_virtualization : bool prop;
      (** enable_nested_virtualization *)
  threads_per_core : float prop;  (** threads_per_core *)
  visible_core_count : float prop;  (** visible_core_count *)
}

type confidential_instance_config = {
  confidential_instance_type : string prop;
      (** confidential_instance_type *)
  enable_confidential_compute : bool prop;
      (** enable_confidential_compute *)
}

type disk__source_snapshot_encryption_key = {
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  kms_key_service_account : string prop;
      (** kms_key_service_account *)
}

type disk__source_image_encryption_key = {
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  kms_key_service_account : string prop;
      (** kms_key_service_account *)
}

type disk__disk_encryption_key = {
  kms_key_self_link : string prop;  (** kms_key_self_link *)
}

type disk = {
  auto_delete : bool prop;  (** auto_delete *)
  boot : bool prop;  (** boot *)
  device_name : string prop;  (** device_name *)
  disk_encryption_key : disk__disk_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** disk_encryption_key *)
  disk_name : string prop;  (** disk_name *)
  disk_size_gb : float prop;  (** disk_size_gb *)
  disk_type : string prop;  (** disk_type *)
  interface : string prop;  (** interface *)
  labels : (string * string prop) list;  (** labels *)
  mode : string prop;  (** mode *)
  provisioned_iops : float prop;  (** provisioned_iops *)
  resource_manager_tags : (string * string prop) list;
      (** resource_manager_tags *)
  resource_policies : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** resource_policies *)
  source : string prop;  (** source *)
  source_image : string prop;  (** source_image *)
  source_image_encryption_key :
    disk__source_image_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_image_encryption_key *)
  source_snapshot : string prop;  (** source_snapshot *)
  source_snapshot_encryption_key :
    disk__source_snapshot_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_snapshot_encryption_key *)
  type_ : string prop; [@key "type"]  (** type *)
}

type guest_accelerator = {
  count : float prop;  (** count *)
  type_ : string prop; [@key "type"]  (** type *)
}

type network_interface__ipv6_access_config = {
  external_ipv6 : string prop;  (** external_ipv6 *)
  external_ipv6_prefix_length : string prop;
      (** external_ipv6_prefix_length *)
  name : string prop;  (** name *)
  network_tier : string prop;  (** network_tier *)
  public_ptr_domain_name : string prop;  (** public_ptr_domain_name *)
}

type network_interface__alias_ip_range = {
  ip_cidr_range : string prop;  (** ip_cidr_range *)
  subnetwork_range_name : string prop;  (** subnetwork_range_name *)
}

type network_interface__access_config = {
  nat_ip : string prop;  (** nat_ip *)
  network_tier : string prop;  (** network_tier *)
  public_ptr_domain_name : string prop;  (** public_ptr_domain_name *)
}

type network_interface = {
  access_config : network_interface__access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** access_config *)
  alias_ip_range : network_interface__alias_ip_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** alias_ip_range *)
  internal_ipv6_prefix_length : float prop;
      (** internal_ipv6_prefix_length *)
  ipv6_access_config : network_interface__ipv6_access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ipv6_access_config *)
  ipv6_access_type : string prop;  (** ipv6_access_type *)
  ipv6_address : string prop;  (** ipv6_address *)
  name : string prop;  (** name *)
  network : string prop;  (** network *)
  network_ip : string prop;  (** network_ip *)
  nic_type : string prop;  (** nic_type *)
  queue_count : float prop;  (** queue_count *)
  stack_type : string prop;  (** stack_type *)
  subnetwork : string prop;  (** subnetwork *)
  subnetwork_project : string prop;  (** subnetwork_project *)
}

type network_performance_config = {
  total_egress_bandwidth_tier : string prop;
      (** total_egress_bandwidth_tier *)
}

type reservation_affinity__specific_reservation = {
  key : string prop;  (** key *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type reservation_affinity = {
  specific_reservation :
    reservation_affinity__specific_reservation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** specific_reservation *)
  type_ : string prop; [@key "type"]  (** type *)
}

type scheduling__on_instance_stop_action = {
  discard_local_ssd : bool prop;  (** discard_local_ssd *)
}

type scheduling__node_affinities = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type scheduling__max_run_duration = {
  nanos : float prop;  (** nanos *)
  seconds : float prop;  (** seconds *)
}

type scheduling__local_ssd_recovery_timeout = {
  nanos : float prop;  (** nanos *)
  seconds : float prop;  (** seconds *)
}

type scheduling = {
  automatic_restart : bool prop;  (** automatic_restart *)
  instance_termination_action : string prop;
      (** instance_termination_action *)
  local_ssd_recovery_timeout :
    scheduling__local_ssd_recovery_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** local_ssd_recovery_timeout *)
  max_run_duration : scheduling__max_run_duration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** max_run_duration *)
  min_node_cpus : float prop;  (** min_node_cpus *)
  node_affinities : scheduling__node_affinities list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** node_affinities *)
  on_host_maintenance : string prop;  (** on_host_maintenance *)
  on_instance_stop_action : scheduling__on_instance_stop_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** on_instance_stop_action *)
  preemptible : bool prop;  (** preemptible *)
  provisioning_model : string prop;  (** provisioning_model *)
}

type service_account = {
  email : string prop;  (** email *)
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** scopes *)
}

type shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
      (** enable_integrity_monitoring *)
  enable_secure_boot : bool prop;  (** enable_secure_boot *)
  enable_vtpm : bool prop;  (** enable_vtpm *)
}

type google_compute_region_instance_template

val google_compute_region_instance_template :
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  unit ->
  google_compute_region_instance_template

val yojson_of_google_compute_region_instance_template :
  google_compute_region_instance_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  advanced_machine_features : advanced_machine_features list prop;
  can_ip_forward : bool prop;
  confidential_instance_config :
    confidential_instance_config list prop;
  description : string prop;
  disk : disk list prop;
  effective_labels : (string * string) list prop;
  filter : string prop;
  guest_accelerator : guest_accelerator list prop;
  id : string prop;
  instance_description : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  metadata : (string * string) list prop;
  metadata_fingerprint : string prop;
  metadata_startup_script : string prop;
  min_cpu_platform : string prop;
  most_recent : bool prop;
  name : string prop;
  name_prefix : string prop;
  network_interface : network_interface list prop;
  network_performance_config : network_performance_config list prop;
  project : string prop;
  region : string prop;
  reservation_affinity : reservation_affinity list prop;
  resource_manager_tags : (string * string) list prop;
  resource_policies : string list prop;
  scheduling : scheduling list prop;
  self_link : string prop;
  service_account : service_account list prop;
  shielded_instance_config : shielded_instance_config list prop;
  tags : string list prop;
  tags_fingerprint : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
