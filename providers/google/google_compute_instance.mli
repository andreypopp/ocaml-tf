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
  count : float prop;  (** count *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_compute_instance

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

val google_compute_instance :
  ?allow_stopping_for_update:bool prop ->
  ?can_ip_forward:bool prop ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?desired_status:string prop ->
  ?enable_display:bool prop ->
  ?guest_accelerator:google_compute_instance__guest_accelerator list ->
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
  ?timeouts:google_compute_instance__timeouts ->
  machine_type:string prop ->
  name:string prop ->
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
  t
