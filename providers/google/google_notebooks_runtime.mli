(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metrics = {
  system_metrics : string prop Tf_core.assoc;  (** system_metrics *)
}

type access_config

val access_config :
  ?access_type:string prop ->
  ?runtime_owner:string prop ->
  unit ->
  access_config

type software_config__kernels

val software_config__kernels :
  ?tag:string prop ->
  repository:string prop ->
  unit ->
  software_config__kernels

type software_config

val software_config :
  ?custom_gpu_driver_path:string prop ->
  ?enable_health_monitoring:bool prop ->
  ?idle_shutdown:bool prop ->
  ?idle_shutdown_timeout:float prop ->
  ?install_gpu_driver:bool prop ->
  ?notebook_upgrade_schedule:string prop ->
  ?post_startup_script:string prop ->
  ?post_startup_script_behavior:string prop ->
  ?kernels:software_config__kernels list ->
  unit ->
  software_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_machine__virtual_machine_config__accelerator_config

val virtual_machine__virtual_machine_config__accelerator_config :
  ?core_count:float prop ->
  ?type_:string prop ->
  unit ->
  virtual_machine__virtual_machine_config__accelerator_config

type virtual_machine__virtual_machine_config__container_images

val virtual_machine__virtual_machine_config__container_images :
  ?tag:string prop ->
  repository:string prop ->
  unit ->
  virtual_machine__virtual_machine_config__container_images

type virtual_machine__virtual_machine_config__data_disk__initialize_params

val virtual_machine__virtual_machine_config__data_disk__initialize_params :
  ?description:string prop ->
  ?disk_name:string prop ->
  ?disk_size_gb:float prop ->
  ?disk_type:string prop ->
  ?labels:string prop Tf_core.assoc ->
  unit ->
  virtual_machine__virtual_machine_config__data_disk__initialize_params

type virtual_machine__virtual_machine_config__data_disk

val virtual_machine__virtual_machine_config__data_disk :
  ?interface:string prop ->
  ?mode:string prop ->
  ?source:string prop ->
  ?type_:string prop ->
  ?initialize_params:
    virtual_machine__virtual_machine_config__data_disk__initialize_params
    list ->
  unit ->
  virtual_machine__virtual_machine_config__data_disk

type virtual_machine__virtual_machine_config__encryption_config

val virtual_machine__virtual_machine_config__encryption_config :
  ?kms_key:string prop ->
  unit ->
  virtual_machine__virtual_machine_config__encryption_config

type virtual_machine__virtual_machine_config__shielded_instance_config

val virtual_machine__virtual_machine_config__shielded_instance_config :
  ?enable_integrity_monitoring:bool prop ->
  ?enable_secure_boot:bool prop ->
  ?enable_vtpm:bool prop ->
  unit ->
  virtual_machine__virtual_machine_config__shielded_instance_config

type virtual_machine__virtual_machine_config

val virtual_machine__virtual_machine_config :
  ?internal_ip_only:bool prop ->
  ?labels:string prop Tf_core.assoc ->
  ?metadata:string prop Tf_core.assoc ->
  ?network:string prop ->
  ?nic_type:string prop ->
  ?reserved_ip_range:string prop ->
  ?subnet:string prop ->
  ?tags:string prop list ->
  ?accelerator_config:
    virtual_machine__virtual_machine_config__accelerator_config list ->
  ?container_images:
    virtual_machine__virtual_machine_config__container_images list ->
  ?encryption_config:
    virtual_machine__virtual_machine_config__encryption_config list ->
  ?shielded_instance_config:
    virtual_machine__virtual_machine_config__shielded_instance_config
    list ->
  machine_type:string prop ->
  data_disk:virtual_machine__virtual_machine_config__data_disk list ->
  unit ->
  virtual_machine__virtual_machine_config

type virtual_machine

val virtual_machine :
  ?virtual_machine_config:
    virtual_machine__virtual_machine_config list ->
  unit ->
  virtual_machine

type google_notebooks_runtime

val google_notebooks_runtime :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?access_config:access_config list ->
  ?software_config:software_config list ->
  ?timeouts:timeouts ->
  ?virtual_machine:virtual_machine list ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_notebooks_runtime

val yojson_of_google_notebooks_runtime :
  google_notebooks_runtime -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  effective_labels : string Tf_core.assoc prop;
  health_state : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  metrics : metrics list prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?access_config:access_config list ->
  ?software_config:software_config list ->
  ?timeouts:timeouts ->
  ?virtual_machine:virtual_machine list ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?access_config:access_config list ->
  ?software_config:software_config list ->
  ?timeouts:timeouts ->
  ?virtual_machine:virtual_machine list ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
