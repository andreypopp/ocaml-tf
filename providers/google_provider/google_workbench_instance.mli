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
  action: string prop;  (** action *)
  container_image: string prop;  (** container_image *)
  create_time: string prop;  (** create_time *)
  framework: string prop;  (** framework *)
  snapshot: string prop;  (** snapshot *)
  state: string prop;  (** state *)
  target_version: string prop;  (** target_version *)
  version: string prop;  (** version *)
  vm_image: string prop;  (** vm_image *)
}
type google_workbench_instance

val google_workbench_instance :
    ?desired_state:string prop ->
    ?disable_proxy_access:bool prop ->
    ?id:string prop ->
    ?instance_id:string prop ->
    ?instance_owners:string prop list ->
    ?labels:(string * string prop) list ->
    ?project:string prop ->
    ?timeouts:google_workbench_instance__timeouts ->
    location:string prop ->
    name:string prop ->
    gce_setup:google_workbench_instance__gce_setup list ->
    string ->
    unit

