(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_instance__advanced_machine_features
type google_compute_instance__attached_disk
type google_compute_instance__boot_disk__initialize_params
type google_compute_instance__boot_disk
type google_compute_instance__confidential_instance_config
type google_compute_instance__network_interface__access_config
type google_compute_instance__network_interface__alias_ip_range
type google_compute_instance__network_interface__ipv6_access_config
type google_compute_instance__network_interface
type google_compute_instance__network_performance_config
type google_compute_instance__params

type google_compute_instance__reservation_affinity__specific_reservation

type google_compute_instance__reservation_affinity
type google_compute_instance__scheduling__local_ssd_recovery_timeout
type google_compute_instance__scheduling__node_affinities
type google_compute_instance__scheduling
type google_compute_instance__scratch_disk
type google_compute_instance__service_account
type google_compute_instance__shielded_instance_config
type google_compute_instance__timeouts

type google_compute_instance__guest_accelerator = {
  count : float;  (** count *)
  type_ : string; [@key "type"]  (** type *)
}

type google_compute_instance

val google_compute_instance :
  ?allow_stopping_for_update:bool ->
  ?can_ip_forward:bool ->
  ?deletion_protection:bool ->
  ?description:string ->
  ?desired_status:string ->
  ?enable_display:bool ->
  ?guest_accelerator:google_compute_instance__guest_accelerator list ->
  ?hostname:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?metadata:(string * string) list ->
  ?metadata_startup_script:string ->
  ?min_cpu_platform:string ->
  ?project:string ->
  ?resource_policies:string list ->
  ?tags:string list ->
  ?zone:string ->
  ?timeouts:google_compute_instance__timeouts ->
  machine_type:string ->
  name:string ->
  advanced_machine_features:
    google_compute_instance__advanced_machine_features list ->
  attached_disk:google_compute_instance__attached_disk list ->
  boot_disk:google_compute_instance__boot_disk list ->
  confidential_instance_config:
    google_compute_instance__confidential_instance_config list ->
  network_interface:google_compute_instance__network_interface list ->
  network_performance_config:
    google_compute_instance__network_performance_config list ->
  params:google_compute_instance__params list ->
  reservation_affinity:
    google_compute_instance__reservation_affinity list ->
  scheduling:google_compute_instance__scheduling list ->
  scratch_disk:google_compute_instance__scratch_disk list ->
  service_account:google_compute_instance__service_account list ->
  shielded_instance_config:
    google_compute_instance__shielded_instance_config list ->
  string ->
  unit
