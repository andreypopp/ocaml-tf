(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type advanced_machine_features = {
  enable_nested_virtualization : bool prop;
      (** enable_nested_virtualization *)
  threads_per_core : float prop;  (** threads_per_core *)
  visible_core_count : float prop;  (** visible_core_count *)
}

type attached_disk = {
  device_name : string prop;  (** device_name *)
  disk_encryption_key_raw : string prop;
      (** disk_encryption_key_raw *)
  disk_encryption_key_sha256 : string prop;
      (** disk_encryption_key_sha256 *)
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  mode : string prop;  (** mode *)
  source : string prop;  (** source *)
}

type boot_disk__initialize_params = {
  enable_confidential_compute : bool prop;
      (** enable_confidential_compute *)
  image : string prop;  (** image *)
  labels : (string * string prop) list;  (** labels *)
  provisioned_iops : float prop;  (** provisioned_iops *)
  provisioned_throughput : float prop;  (** provisioned_throughput *)
  resource_manager_tags : (string * string prop) list;
      (** resource_manager_tags *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
}

type boot_disk = {
  auto_delete : bool prop;  (** auto_delete *)
  device_name : string prop;  (** device_name *)
  disk_encryption_key_raw : string prop;
      (** disk_encryption_key_raw *)
  disk_encryption_key_sha256 : string prop;
      (** disk_encryption_key_sha256 *)
  initialize_params : boot_disk__initialize_params list;
      (** initialize_params *)
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  mode : string prop;  (** mode *)
  source : string prop;  (** source *)
}

type confidential_instance_config = {
  enable_confidential_compute : bool prop;
      (** enable_confidential_compute *)
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
      (** access_config *)
  alias_ip_range : network_interface__alias_ip_range list;
      (** alias_ip_range *)
  internal_ipv6_prefix_length : float prop;
      (** internal_ipv6_prefix_length *)
  ipv6_access_config : network_interface__ipv6_access_config list;
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

type params = {
  resource_manager_tags : (string * string prop) list;
      (** resource_manager_tags *)
}

type reservation_affinity__specific_reservation = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}

type reservation_affinity = {
  specific_reservation :
    reservation_affinity__specific_reservation list;
      (** specific_reservation *)
  type_ : string prop; [@key "type"]  (** type *)
}

type scheduling__node_affinities = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
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
      (** local_ssd_recovery_timeout *)
  min_node_cpus : float prop;  (** min_node_cpus *)
  node_affinities : scheduling__node_affinities list;
      (** node_affinities *)
  on_host_maintenance : string prop;  (** on_host_maintenance *)
  preemptible : bool prop;  (** preemptible *)
  provisioning_model : string prop;  (** provisioning_model *)
}

type scratch_disk = {
  device_name : string prop;  (** device_name *)
  interface : string prop;  (** interface *)
  size : float prop;  (** size *)
}

type service_account = {
  email : string prop;  (** email *)
  scopes : string prop list;  (** scopes *)
}

type shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
      (** enable_integrity_monitoring *)
  enable_secure_boot : bool prop;  (** enable_secure_boot *)
  enable_vtpm : bool prop;  (** enable_vtpm *)
}

type google_compute_instance

val google_compute_instance :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  unit ->
  google_compute_instance

val yojson_of_google_compute_instance :
  google_compute_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  advanced_machine_features : advanced_machine_features list prop;
  allow_stopping_for_update : bool prop;
  attached_disk : attached_disk list prop;
  boot_disk : boot_disk list prop;
  can_ip_forward : bool prop;
  confidential_instance_config :
    confidential_instance_config list prop;
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
  network_interface : network_interface list prop;
  network_performance_config : network_performance_config list prop;
  params : params list prop;
  project : string prop;
  reservation_affinity : reservation_affinity list prop;
  resource_policies : string list prop;
  scheduling : scheduling list prop;
  scratch_disk : scratch_disk list prop;
  self_link : string prop;
  service_account : service_account list prop;
  shielded_instance_config : shielded_instance_config list prop;
  tags : string list prop;
  tags_fingerprint : string prop;
  terraform_labels : (string * string) list prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  ?zone:string prop ->
  string ->
  t Tf_core.resource
