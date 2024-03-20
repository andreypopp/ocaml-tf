(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accelerator_config

val accelerator_config :
  core_count:float prop ->
  type_:string prop ->
  unit ->
  accelerator_config

type container_image

val container_image :
  ?tag:string prop ->
  repository:string prop ->
  unit ->
  container_image

type reservation_affinity

val reservation_affinity :
  ?key:string prop ->
  ?values:string prop list ->
  consume_reservation_type:string prop ->
  unit ->
  reservation_affinity

type shielded_instance_config

val shielded_instance_config :
  ?enable_integrity_monitoring:bool prop ->
  ?enable_secure_boot:bool prop ->
  ?enable_vtpm:bool prop ->
  unit ->
  shielded_instance_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vm_image

val vm_image :
  ?image_family:string prop ->
  ?image_name:string prop ->
  project:string prop ->
  unit ->
  vm_image

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
  ?timeouts:timeouts ->
  location:string prop ->
  machine_type:string prop ->
  name:string prop ->
  accelerator_config:accelerator_config list ->
  container_image:container_image list ->
  reservation_affinity:reservation_affinity list ->
  shielded_instance_config:shielded_instance_config list ->
  vm_image:vm_image list ->
  unit ->
  google_notebooks_instance

val yojson_of_google_notebooks_instance :
  google_notebooks_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  boot_disk_size_gb : float prop;
  boot_disk_type : string prop;
  create_time : string prop;
  custom_gpu_driver_path : string prop;
  data_disk_size_gb : float prop;
  data_disk_type : string prop;
  desired_state : string prop;
  disk_encryption : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  install_gpu_driver : bool prop;
  instance_owners : string list prop;
  kms_key : string prop;
  labels : (string * string) list prop;
  location : string prop;
  machine_type : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  network : string prop;
  nic_type : string prop;
  no_proxy_access : bool prop;
  no_public_ip : bool prop;
  no_remove_data_disk : bool prop;
  post_startup_script : string prop;
  project : string prop;
  proxy_uri : string prop;
  service_account : string prop;
  service_account_scopes : string list prop;
  state : string prop;
  subnet : string prop;
  tags : string list prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  location:string prop ->
  machine_type:string prop ->
  name:string prop ->
  accelerator_config:accelerator_config list ->
  container_image:container_image list ->
  reservation_affinity:reservation_affinity list ->
  shielded_instance_config:shielded_instance_config list ->
  vm_image:vm_image list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  location:string prop ->
  machine_type:string prop ->
  name:string prop ->
  accelerator_config:accelerator_config list ->
  container_image:container_image list ->
  reservation_affinity:reservation_affinity list ->
  shielded_instance_config:shielded_instance_config list ->
  vm_image:vm_image list ->
  string ->
  t Tf_core.resource
