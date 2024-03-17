(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_from_template__advanced_machine_features

type google_compute_instance_from_template__boot_disk__initialize_params

type google_compute_instance_from_template__boot_disk

type google_compute_instance_from_template__confidential_instance_config

type google_compute_instance_from_template__network_interface__ipv6_access_config

type google_compute_instance_from_template__network_interface__access_config = {
  nat_ip : string prop;  (** nat_ip *)
  network_tier : string prop;  (** network_tier *)
  public_ptr_domain_name : string prop;  (** public_ptr_domain_name *)
}

type google_compute_instance_from_template__network_interface__alias_ip_range = {
  ip_cidr_range : string prop;  (** ip_cidr_range *)
  subnetwork_range_name : string prop;  (** subnetwork_range_name *)
}

type google_compute_instance_from_template__network_interface
type google_compute_instance_from_template__network_performance_config
type google_compute_instance_from_template__params

type google_compute_instance_from_template__reservation_affinity__specific_reservation

type google_compute_instance_from_template__reservation_affinity

type google_compute_instance_from_template__scheduling__local_ssd_recovery_timeout

type google_compute_instance_from_template__scheduling__node_affinities

type google_compute_instance_from_template__scheduling
type google_compute_instance_from_template__shielded_instance_config
type google_compute_instance_from_template__timeouts

type google_compute_instance_from_template__attached_disk = {
  device_name : string prop;  (** device_name *)
  disk_encryption_key_raw : string prop;
      (** disk_encryption_key_raw *)
  disk_encryption_key_sha256 : string prop;
      (** disk_encryption_key_sha256 *)
  kms_key_self_link : string prop;  (** kms_key_self_link *)
  mode : string prop;  (** mode *)
  source : string prop;  (** source *)
}

type google_compute_instance_from_template__guest_accelerator = {
  count : float prop;  (** count *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_compute_instance_from_template__scratch_disk = {
  device_name : string prop;  (** device_name *)
  interface : string prop;  (** interface *)
  size : float prop;  (** size *)
}

type google_compute_instance_from_template__service_account = {
  email : string prop;  (** email *)
  scopes : string prop list;  (** scopes *)
}

type google_compute_instance_from_template

val google_compute_instance_from_template :
  ?allow_stopping_for_update:bool prop ->
  ?attached_disk:
    google_compute_instance_from_template__attached_disk list ->
  ?can_ip_forward:bool prop ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?desired_status:string prop ->
  ?enable_display:bool prop ->
  ?guest_accelerator:
    google_compute_instance_from_template__guest_accelerator list ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?machine_type:string prop ->
  ?metadata:(string * string prop) list ->
  ?metadata_startup_script:string prop ->
  ?min_cpu_platform:string prop ->
  ?project:string prop ->
  ?resource_policies:string prop list ->
  ?scratch_disk:
    google_compute_instance_from_template__scratch_disk list ->
  ?service_account:
    google_compute_instance_from_template__service_account list ->
  ?tags:string prop list ->
  ?zone:string prop ->
  ?timeouts:google_compute_instance_from_template__timeouts ->
  name:string prop ->
  source_instance_template:string prop ->
  advanced_machine_features:
    google_compute_instance_from_template__advanced_machine_features
    list ->
  boot_disk:google_compute_instance_from_template__boot_disk list ->
  confidential_instance_config:
    google_compute_instance_from_template__confidential_instance_config
    list ->
  network_interface:
    google_compute_instance_from_template__network_interface list ->
  network_performance_config:
    google_compute_instance_from_template__network_performance_config
    list ->
  params:google_compute_instance_from_template__params list ->
  reservation_affinity:
    google_compute_instance_from_template__reservation_affinity list ->
  scheduling:google_compute_instance_from_template__scheduling list ->
  shielded_instance_config:
    google_compute_instance_from_template__shielded_instance_config
    list ->
  string ->
  unit
