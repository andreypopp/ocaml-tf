(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type health_info = {
}
type upgrade_history = {
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
type gce_setup__accelerator_configs

val gce_setup__accelerator_configs :
    ?core_count:string prop ->
    ?type_:string prop ->
    unit ->
    gce_setup__accelerator_configs

type gce_setup__boot_disk

val gce_setup__boot_disk :
    ?disk_encryption:string prop ->
    ?disk_size_gb:string prop ->
    ?disk_type:string prop ->
    ?kms_key:string prop ->
    unit ->
    gce_setup__boot_disk

type gce_setup__container_image

val gce_setup__container_image :
    ?tag:string prop ->
    repository:string prop ->
    unit ->
    gce_setup__container_image

type gce_setup__data_disks

val gce_setup__data_disks :
    ?disk_encryption:string prop ->
    ?disk_size_gb:string prop ->
    ?disk_type:string prop ->
    ?kms_key:string prop ->
    unit ->
    gce_setup__data_disks

type gce_setup__network_interfaces

val gce_setup__network_interfaces :
    ?network:string prop ->
    ?nic_type:string prop ->
    ?subnet:string prop ->
    unit ->
    gce_setup__network_interfaces

type gce_setup__service_accounts

val gce_setup__service_accounts :
    ?email:string prop ->
    unit ->
    gce_setup__service_accounts

type gce_setup__shielded_instance_config

val gce_setup__shielded_instance_config :
    ?enable_integrity_monitoring:bool prop ->
    ?enable_secure_boot:bool prop ->
    ?enable_vtpm:bool prop ->
    unit ->
    gce_setup__shielded_instance_config

type gce_setup__vm_image

val gce_setup__vm_image :
    ?family:string prop ->
    ?name:string prop ->
    ?project:string prop ->
    unit ->
    gce_setup__vm_image

type gce_setup

val gce_setup :
    ?disable_public_ip:bool prop ->
    ?enable_ip_forwarding:bool prop ->
    ?machine_type:string prop ->
    ?metadata:(string * string  prop) list ->
    ?tags:string  prop list ->
    accelerator_configs:gce_setup__accelerator_configs list ->
    boot_disk:gce_setup__boot_disk list ->
    container_image:gce_setup__container_image list ->
    data_disks:gce_setup__data_disks list ->
    network_interfaces:gce_setup__network_interfaces list ->
    service_accounts:gce_setup__service_accounts list ->
    shielded_instance_config:gce_setup__shielded_instance_config list ->
    vm_image:gce_setup__vm_image list ->
    unit ->
    gce_setup

type timeouts

val timeouts :
    ?create:string prop ->
    ?delete:string prop ->
    ?update:string prop ->
    unit ->
    timeouts

type google_workbench_instance

val google_workbench_instance :
    ?desired_state:string prop ->
    ?disable_proxy_access:bool prop ->
    ?id:string prop ->
    ?instance_id:string prop ->
    ?instance_owners:string  prop list ->
    ?labels:(string * string  prop) list ->
    ?project:string prop ->
    ?timeouts:timeouts ->
    location:string prop ->
    name:string prop ->
    gce_setup:gce_setup list ->
    unit ->
    google_workbench_instance

val yojson_of_google_workbench_instance : google_workbench_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time: string prop;
  creator: string prop;
  desired_state: string prop;
  disable_proxy_access: bool prop;
  effective_labels: (string * string) list prop;
  health_info: health_info list prop;
  health_state: string prop;
  id: string prop;
  instance_id: string prop;
  instance_owners: string list prop;
  labels: (string * string) list prop;
  location: string prop;
  name: string prop;
  project: string prop;
  proxy_uri: string prop;
  state: string prop;
  terraform_labels: (string * string) list prop;
  update_time: string prop;
  upgrade_history: upgrade_history list prop;
}

val register :
    ?tf_module:tf_module ->
    ?desired_state:string prop ->
    ?disable_proxy_access:bool prop ->
    ?id:string prop ->
    ?instance_id:string prop ->
    ?instance_owners:string  prop list ->
    ?labels:(string * string  prop) list ->
    ?project:string prop ->
    ?timeouts:timeouts ->
    location:string prop ->
    name:string prop ->
    gce_setup:gce_setup list ->
    string ->
    t

