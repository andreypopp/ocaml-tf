(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_instance_template__advanced_machine_features

type google_compute_region_instance_template__confidential_instance_config

type google_compute_region_instance_template__disk__disk_encryption_key

type google_compute_region_instance_template__disk__source_image_encryption_key

type google_compute_region_instance_template__disk__source_snapshot_encryption_key

type google_compute_region_instance_template__disk
type google_compute_region_instance_template__guest_accelerator

type google_compute_region_instance_template__network_interface__access_config

type google_compute_region_instance_template__network_interface__alias_ip_range

type google_compute_region_instance_template__network_interface__ipv6_access_config

type google_compute_region_instance_template__network_interface

type google_compute_region_instance_template__network_performance_config

type google_compute_region_instance_template__reservation_affinity__specific_reservation

type google_compute_region_instance_template__reservation_affinity

type google_compute_region_instance_template__scheduling__local_ssd_recovery_timeout

type google_compute_region_instance_template__scheduling__node_affinities

type google_compute_region_instance_template__scheduling
type google_compute_region_instance_template__service_account
type google_compute_region_instance_template__shielded_instance_config
type google_compute_region_instance_template__timeouts
type google_compute_region_instance_template

val google_compute_region_instance_template :
  ?can_ip_forward:bool ->
  ?description:string ->
  ?instance_description:string ->
  ?labels:(string * string) list ->
  ?metadata:(string * string) list ->
  ?metadata_startup_script:string ->
  ?min_cpu_platform:string ->
  ?resource_manager_tags:(string * string) list ->
  ?resource_policies:string list ->
  ?tags:string list ->
  ?timeouts:google_compute_region_instance_template__timeouts ->
  machine_type:string ->
  advanced_machine_features:
    google_compute_region_instance_template__advanced_machine_features
    list ->
  confidential_instance_config:
    google_compute_region_instance_template__confidential_instance_config
    list ->
  disk:google_compute_region_instance_template__disk list ->
  guest_accelerator:
    google_compute_region_instance_template__guest_accelerator list ->
  network_interface:
    google_compute_region_instance_template__network_interface list ->
  network_performance_config:
    google_compute_region_instance_template__network_performance_config
    list ->
  reservation_affinity:
    google_compute_region_instance_template__reservation_affinity
    list ->
  scheduling:google_compute_region_instance_template__scheduling list ->
  service_account:
    google_compute_region_instance_template__service_account list ->
  shielded_instance_config:
    google_compute_region_instance_template__shielded_instance_config
    list ->
  string ->
  unit
