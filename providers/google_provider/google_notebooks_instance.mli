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
  ?boot_disk_size_gb:float prop ->
  ?boot_disk_type:string prop ->
  ?create_time:string prop ->
  ?custom_gpu_driver_path:string prop ->
  ?data_disk_size_gb:float prop ->
  ?data_disk_type:string prop ->
  ?desired_state:string prop ->
  ?disk_encryption:string prop ->
  ?id:string prop ->
  ?install_gpu_driver:bool prop ->
  ?instance_owners:string prop list ->
  ?kms_key:string prop ->
  ?labels:(string * string prop) list ->
  ?metadata:(string * string prop) list ->
  ?network:string prop ->
  ?nic_type:string prop ->
  ?no_proxy_access:bool prop ->
  ?no_public_ip:bool prop ->
  ?no_remove_data_disk:bool prop ->
  ?post_startup_script:string prop ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?service_account_scopes:string prop list ->
  ?subnet:string prop ->
  ?tags:string prop list ->
  ?update_time:string prop ->
  ?timeouts:google_notebooks_instance__timeouts ->
  location:string prop ->
  machine_type:string prop ->
  name:string prop ->
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
