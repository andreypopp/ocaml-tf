(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_instance__accelerator_config
type google_notebooks_instance__container_image
type google_notebooks_instance__reservation_affinity
type google_notebooks_instance__shielded_instance_config
type google_notebooks_instance__timeouts
type google_notebooks_instance__vm_image
type google_notebooks_instance

val google_notebooks_instance :
  ?boot_disk_size_gb:float ->
  ?boot_disk_type:string ->
  ?custom_gpu_driver_path:string ->
  ?data_disk_size_gb:float ->
  ?data_disk_type:string ->
  ?desired_state:string ->
  ?install_gpu_driver:bool ->
  ?instance_owners:string list ->
  ?kms_key:string ->
  ?labels:(string * string) list ->
  ?metadata:(string * string) list ->
  ?nic_type:string ->
  ?no_proxy_access:bool ->
  ?no_public_ip:bool ->
  ?no_remove_data_disk:bool ->
  ?post_startup_script:string ->
  ?timeouts:google_notebooks_instance__timeouts ->
  location:string ->
  machine_type:string ->
  name:string ->
  accelerator_config:
    google_notebooks_instance__accelerator_config list ->
  container_image:google_notebooks_instance__container_image list ->
  reservation_affinity:
    google_notebooks_instance__reservation_affinity list ->
  shielded_instance_config:
    google_notebooks_instance__shielded_instance_config list ->
  vm_image:google_notebooks_instance__vm_image list ->
  string ->
  unit
