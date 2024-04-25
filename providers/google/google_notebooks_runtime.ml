(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_config = {
  access_type : string prop option; [@option]
  runtime_owner : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_config) -> ()

let yojson_of_access_config =
  (function
   | { access_type = v_access_type; runtime_owner = v_runtime_owner }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_runtime_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_config

[@@@deriving.end]

type software_config__kernels = {
  repository : string prop;
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : software_config__kernels) -> ()

let yojson_of_software_config__kernels =
  (function
   | { repository = v_repository; tag = v_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       `Assoc bnds
    : software_config__kernels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_software_config__kernels

[@@@deriving.end]

type software_config = {
  custom_gpu_driver_path : string prop option; [@option]
  enable_health_monitoring : bool prop option; [@option]
  idle_shutdown : bool prop option; [@option]
  idle_shutdown_timeout : float prop option; [@option]
  install_gpu_driver : bool prop option; [@option]
  notebook_upgrade_schedule : string prop option; [@option]
  post_startup_script : string prop option; [@option]
  post_startup_script_behavior : string prop option; [@option]
  kernels : software_config__kernels list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : software_config) -> ()

let yojson_of_software_config =
  (function
   | {
       custom_gpu_driver_path = v_custom_gpu_driver_path;
       enable_health_monitoring = v_enable_health_monitoring;
       idle_shutdown = v_idle_shutdown;
       idle_shutdown_timeout = v_idle_shutdown_timeout;
       install_gpu_driver = v_install_gpu_driver;
       notebook_upgrade_schedule = v_notebook_upgrade_schedule;
       post_startup_script = v_post_startup_script;
       post_startup_script_behavior = v_post_startup_script_behavior;
       kernels = v_kernels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_software_config__kernels
             v_kernels
         in
         ("kernels", arg) :: bnds
       in
       let bnds =
         match v_post_startup_script_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_startup_script_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_post_startup_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_startup_script", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notebook_upgrade_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notebook_upgrade_schedule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_install_gpu_driver with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "install_gpu_driver", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_shutdown_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_shutdown_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_shutdown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "idle_shutdown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_health_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_health_monitoring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_gpu_driver_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_gpu_driver_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : software_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_software_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type virtual_machine__virtual_machine_config__accelerator_config = {
  core_count : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_machine__virtual_machine_config__accelerator_config) ->
  ()

let yojson_of_virtual_machine__virtual_machine_config__accelerator_config
    =
  (function
   | { core_count = v_core_count; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_core_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "core_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine__virtual_machine_config__accelerator_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine__virtual_machine_config__accelerator_config

[@@@deriving.end]

type virtual_machine__virtual_machine_config__container_images = {
  repository : string prop;
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_machine__virtual_machine_config__container_images) ->
  ()

let yojson_of_virtual_machine__virtual_machine_config__container_images
    =
  (function
   | { repository = v_repository; tag = v_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       `Assoc bnds
    : virtual_machine__virtual_machine_config__container_images ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine__virtual_machine_config__container_images

[@@@deriving.end]

type virtual_machine__virtual_machine_config__data_disk__initialize_params = {
  description : string prop option; [@option]
  disk_name : string prop option; [@option]
  disk_size_gb : float prop option; [@option]
  disk_type : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_machine__virtual_machine_config__data_disk__initialize_params) ->
  ()

let yojson_of_virtual_machine__virtual_machine_config__data_disk__initialize_params
    =
  (function
   | {
       description = v_description;
       disk_name = v_disk_name;
       disk_size_gb = v_disk_size_gb;
       disk_type = v_disk_type;
       labels = v_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine__virtual_machine_config__data_disk__initialize_params ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine__virtual_machine_config__data_disk__initialize_params

[@@@deriving.end]

type virtual_machine__virtual_machine_config__data_disk = {
  interface : string prop option; [@option]
  mode : string prop option; [@option]
  source : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  initialize_params :
    virtual_machine__virtual_machine_config__data_disk__initialize_params
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_machine__virtual_machine_config__data_disk) -> ()

let yojson_of_virtual_machine__virtual_machine_config__data_disk =
  (function
   | {
       interface = v_interface;
       mode = v_mode;
       source = v_source;
       type_ = v_type_;
       initialize_params = v_initialize_params;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_machine__virtual_machine_config__data_disk__initialize_params
             v_initialize_params
         in
         ("initialize_params", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interface", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine__virtual_machine_config__data_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine__virtual_machine_config__data_disk

[@@@deriving.end]

type virtual_machine__virtual_machine_config__encryption_config = {
  kms_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : virtual_machine__virtual_machine_config__encryption_config) ->
  ()

let yojson_of_virtual_machine__virtual_machine_config__encryption_config
    =
  (function
   | { kms_key = v_kms_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine__virtual_machine_config__encryption_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine__virtual_machine_config__encryption_config

[@@@deriving.end]

type virtual_machine__virtual_machine_config__shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
  enable_secure_boot : bool prop option; [@option]
  enable_vtpm : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       virtual_machine__virtual_machine_config__shielded_instance_config) ->
  ()

let yojson_of_virtual_machine__virtual_machine_config__shielded_instance_config
    =
  (function
   | {
       enable_integrity_monitoring = v_enable_integrity_monitoring;
       enable_secure_boot = v_enable_secure_boot;
       enable_vtpm = v_enable_vtpm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_vtpm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_vtpm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_secure_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_secure_boot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_integrity_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_integrity_monitoring", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine__virtual_machine_config__shielded_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_virtual_machine__virtual_machine_config__shielded_instance_config

[@@@deriving.end]

type virtual_machine__virtual_machine_config = {
  internal_ip_only : bool prop option; [@option]
  labels : (string * string prop) list option; [@option]
  machine_type : string prop;
  metadata : (string * string prop) list option; [@option]
  network : string prop option; [@option]
  nic_type : string prop option; [@option]
  reserved_ip_range : string prop option; [@option]
  subnet : string prop option; [@option]
  tags : string prop list option; [@option]
  accelerator_config :
    virtual_machine__virtual_machine_config__accelerator_config list;
  container_images :
    virtual_machine__virtual_machine_config__container_images list;
  data_disk :
    virtual_machine__virtual_machine_config__data_disk list;
  encryption_config :
    virtual_machine__virtual_machine_config__encryption_config list;
  shielded_instance_config :
    virtual_machine__virtual_machine_config__shielded_instance_config
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine__virtual_machine_config) -> ()

let yojson_of_virtual_machine__virtual_machine_config =
  (function
   | {
       internal_ip_only = v_internal_ip_only;
       labels = v_labels;
       machine_type = v_machine_type;
       metadata = v_metadata;
       network = v_network;
       nic_type = v_nic_type;
       reserved_ip_range = v_reserved_ip_range;
       subnet = v_subnet;
       tags = v_tags;
       accelerator_config = v_accelerator_config;
       container_images = v_container_images;
       data_disk = v_data_disk;
       encryption_config = v_encryption_config;
       shielded_instance_config = v_shielded_instance_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_machine__virtual_machine_config__shielded_instance_config
             v_shielded_instance_config
         in
         ("shielded_instance_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_machine__virtual_machine_config__encryption_config
             v_encryption_config
         in
         ("encryption_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_machine__virtual_machine_config__data_disk
             v_data_disk
         in
         ("data_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_machine__virtual_machine_config__container_images
             v_container_images
         in
         ("container_images", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_machine__virtual_machine_config__accelerator_config
             v_accelerator_config
         in
         ("accelerator_config", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_reserved_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reserved_ip_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nic_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nic_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internal_ip_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal_ip_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_machine__virtual_machine_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine__virtual_machine_config

[@@@deriving.end]

type virtual_machine = {
  virtual_machine_config :
    virtual_machine__virtual_machine_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine) -> ()

let yojson_of_virtual_machine =
  (function
   | { virtual_machine_config = v_virtual_machine_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_machine__virtual_machine_config
             v_virtual_machine_config
         in
         ("virtual_machine_config", arg) :: bnds
       in
       `Assoc bnds
    : virtual_machine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine

[@@@deriving.end]

type metrics = { system_metrics : (string * string prop) list }
[@@deriving_inline yojson_of]

let _ = fun (_ : metrics) -> ()

let yojson_of_metrics =
  (function
   | { system_metrics = v_system_metrics } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_system_metrics
         in
         ("system_metrics", arg) :: bnds
       in
       `Assoc bnds
    : metrics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metrics

[@@@deriving.end]

type google_notebooks_runtime = {
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  access_config : access_config list;
  software_config : software_config list;
  timeouts : timeouts option;
  virtual_machine : virtual_machine list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_notebooks_runtime) -> ()

let yojson_of_google_notebooks_runtime =
  (function
   | {
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       access_config = v_access_config;
       software_config = v_software_config;
       timeouts = v_timeouts;
       virtual_machine = v_virtual_machine;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_virtual_machine v_virtual_machine
         in
         ("virtual_machine", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_software_config v_software_config
         in
         ("software_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_config v_access_config
         in
         ("access_config", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_notebooks_runtime -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_notebooks_runtime

[@@@deriving.end]

let access_config ?access_type ?runtime_owner () : access_config =
  { access_type; runtime_owner }

let software_config__kernels ?tag ~repository () :
    software_config__kernels =
  { repository; tag }

let software_config ?custom_gpu_driver_path ?enable_health_monitoring
    ?idle_shutdown ?idle_shutdown_timeout ?install_gpu_driver
    ?notebook_upgrade_schedule ?post_startup_script
    ?post_startup_script_behavior ?(kernels = []) () :
    software_config =
  {
    custom_gpu_driver_path;
    enable_health_monitoring;
    idle_shutdown;
    idle_shutdown_timeout;
    install_gpu_driver;
    notebook_upgrade_schedule;
    post_startup_script;
    post_startup_script_behavior;
    kernels;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let virtual_machine__virtual_machine_config__accelerator_config
    ?core_count ?type_ () :
    virtual_machine__virtual_machine_config__accelerator_config =
  { core_count; type_ }

let virtual_machine__virtual_machine_config__container_images ?tag
    ~repository () :
    virtual_machine__virtual_machine_config__container_images =
  { repository; tag }

let virtual_machine__virtual_machine_config__data_disk__initialize_params
    ?description ?disk_name ?disk_size_gb ?disk_type ?labels () :
    virtual_machine__virtual_machine_config__data_disk__initialize_params
    =
  { description; disk_name; disk_size_gb; disk_type; labels }

let virtual_machine__virtual_machine_config__data_disk ?interface
    ?mode ?source ?type_ ?(initialize_params = []) () :
    virtual_machine__virtual_machine_config__data_disk =
  { interface; mode; source; type_; initialize_params }

let virtual_machine__virtual_machine_config__encryption_config
    ?kms_key () :
    virtual_machine__virtual_machine_config__encryption_config =
  { kms_key }

let virtual_machine__virtual_machine_config__shielded_instance_config
    ?enable_integrity_monitoring ?enable_secure_boot ?enable_vtpm ()
    :
    virtual_machine__virtual_machine_config__shielded_instance_config
    =
  { enable_integrity_monitoring; enable_secure_boot; enable_vtpm }

let virtual_machine__virtual_machine_config ?internal_ip_only ?labels
    ?metadata ?network ?nic_type ?reserved_ip_range ?subnet ?tags
    ?(accelerator_config = []) ?(container_images = [])
    ?(encryption_config = []) ?(shielded_instance_config = [])
    ~machine_type ~data_disk () :
    virtual_machine__virtual_machine_config =
  {
    internal_ip_only;
    labels;
    machine_type;
    metadata;
    network;
    nic_type;
    reserved_ip_range;
    subnet;
    tags;
    accelerator_config;
    container_images;
    data_disk;
    encryption_config;
    shielded_instance_config;
  }

let virtual_machine ?(virtual_machine_config = []) () :
    virtual_machine =
  { virtual_machine_config }

let google_notebooks_runtime ?id ?labels ?project
    ?(access_config = []) ?(software_config = []) ?timeouts
    ?(virtual_machine = []) ~location ~name () :
    google_notebooks_runtime =
  {
    id;
    labels;
    location;
    name;
    project;
    access_config;
    software_config;
    timeouts;
    virtual_machine;
  }

type t = {
  effective_labels : (string * string) list prop;
  health_state : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  metrics : metrics list prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?project ?(access_config = [])
    ?(software_config = []) ?timeouts ?(virtual_machine = [])
    ~location ~name __id =
  let __type = "google_notebooks_runtime" in
  let __attrs =
    ({
       effective_labels =
         Prop.computed __type __id "effective_labels";
       health_state = Prop.computed __type __id "health_state";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       metrics = Prop.computed __type __id "metrics";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_notebooks_runtime
        (google_notebooks_runtime ?id ?labels ?project ~access_config
           ~software_config ?timeouts ~virtual_machine ~location
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?(access_config = [])
    ?(software_config = []) ?timeouts ?(virtual_machine = [])
    ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ~access_config ~software_config
      ?timeouts ~virtual_machine ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
