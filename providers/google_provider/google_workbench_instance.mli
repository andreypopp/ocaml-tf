(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_workbench_instance__gce_setup__accelerator_configs

type google_workbench_instance__gce_setup__boot_disk

type google_workbench_instance__gce_setup__container_image

type google_workbench_instance__gce_setup__data_disks

type google_workbench_instance__gce_setup__network_interfaces

type google_workbench_instance__gce_setup__service_accounts

type google_workbench_instance__gce_setup__shielded_instance_config

type google_workbench_instance__gce_setup__vm_image

type google_workbench_instance__gce_setup

type google_workbench_instance__timeouts

type google_workbench_instance__health_info = {
}
type google_workbench_instance__upgrade_history = {
  action: string;  (** action *)
  container_image: string;  (** container_image *)
  create_time: string;  (** create_time *)
  framework: string;  (** framework *)
  snapshot: string;  (** snapshot *)
  state: string;  (** state *)
  target_version: string;  (** target_version *)
  version: string;  (** version *)
  vm_image: string;  (** vm_image *)
}
type google_workbench_instance

val google_workbench_instance :
    ?desired_state:string ->
    ?disable_proxy_access:bool ->
    ?id:string ->
    ?instance_id:string ->
    ?instance_owners:string list ->
    ?labels:(string * string) list ->
    ?project:string ->
    ?timeouts:google_workbench_instance__timeouts ->
    location:string ->
    name:string ->
    gce_setup:google_workbench_instance__gce_setup list ->
    string ->
    unit

