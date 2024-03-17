(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance_from_template__advanced_machine_features

type google_compute_instance_from_template__boot_disk__initialize_params

type google_compute_instance_from_template__boot_disk

type google_compute_instance_from_template__confidential_instance_config

type google_compute_instance_from_template__network_interface__ipv6_access_config

type google_compute_instance_from_template__network_interface__access_config = {
  nat_ip : string;  (** nat_ip *)
  network_tier : string;  (** network_tier *)
  public_ptr_domain_name : string;  (** public_ptr_domain_name *)
}
[@@deriving yojson_of]

type google_compute_instance_from_template__network_interface__alias_ip_range = {
  ip_cidr_range : string;  (** ip_cidr_range *)
  subnetwork_range_name : string;  (** subnetwork_range_name *)
}
[@@deriving yojson_of]

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
  device_name : string;  (** device_name *)
  disk_encryption_key_raw : string;  (** disk_encryption_key_raw *)
  disk_encryption_key_sha256 : string;
      (** disk_encryption_key_sha256 *)
  kms_key_self_link : string;  (** kms_key_self_link *)
  mode : string;  (** mode *)
  source : string;  (** source *)
}
[@@deriving yojson_of]

type google_compute_instance_from_template__guest_accelerator = {
  count : float;  (** count *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_compute_instance_from_template__scratch_disk = {
  device_name : string;  (** device_name *)
  interface : string;  (** interface *)
  size : float;  (** size *)
}
[@@deriving yojson_of]

type google_compute_instance_from_template__service_account = {
  email : string;  (** email *)
  scopes : string list;  (** scopes *)
}
[@@deriving yojson_of]

type google_compute_instance_from_template

val google_compute_instance_from_template :
  ?timeouts:google_compute_instance_from_template__timeouts ->
  name:string ->
  source_instance_template:string ->
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
