(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type accelerator_config = {
  core_count : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : accelerator_config) -> ()

let yojson_of_accelerator_config =
  (function
   | { core_count = v_core_count; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_core_count in
         ("core_count", arg) :: bnds
       in
       `Assoc bnds
    : accelerator_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_accelerator_config

[@@@deriving.end]

type container_image = {
  repository : string prop;
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_image) -> ()

let yojson_of_container_image =
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
    : container_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_image

[@@@deriving.end]

type reservation_affinity = {
  consume_reservation_type : string prop;
  key : string prop option; [@option]
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reservation_affinity) -> ()

let yojson_of_reservation_affinity =
  (function
   | {
       consume_reservation_type = v_consume_reservation_type;
       key = v_key;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consume_reservation_type
         in
         ("consume_reservation_type", arg) :: bnds
       in
       `Assoc bnds
    : reservation_affinity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reservation_affinity

[@@@deriving.end]

type shielded_instance_config = {
  enable_integrity_monitoring : bool prop option; [@option]
  enable_secure_boot : bool prop option; [@option]
  enable_vtpm : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shielded_instance_config) -> ()

let yojson_of_shielded_instance_config =
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
    : shielded_instance_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shielded_instance_config

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

type vm_image = {
  image_family : string prop option; [@option]
  image_name : string prop option; [@option]
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vm_image) -> ()

let yojson_of_vm_image =
  (function
   | {
       image_family = v_image_family;
       image_name = v_image_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         match v_image_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_family", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vm_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vm_image

[@@@deriving.end]

type google_notebooks_instance = {
  boot_disk_size_gb : float prop option; [@option]
  boot_disk_type : string prop option; [@option]
  create_time : string prop option; [@option]
  custom_gpu_driver_path : string prop option; [@option]
  data_disk_size_gb : float prop option; [@option]
  data_disk_type : string prop option; [@option]
  desired_state : string prop option; [@option]
  disk_encryption : string prop option; [@option]
  id : string prop option; [@option]
  install_gpu_driver : bool prop option; [@option]
  instance_owners : string prop list option; [@option]
  kms_key : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  machine_type : string prop;
  metadata : string prop Tf_core.assoc option; [@option]
  name : string prop;
  network : string prop option; [@option]
  nic_type : string prop option; [@option]
  no_proxy_access : bool prop option; [@option]
  no_public_ip : bool prop option; [@option]
  no_remove_data_disk : bool prop option; [@option]
  post_startup_script : string prop option; [@option]
  project : string prop option; [@option]
  service_account : string prop option; [@option]
  service_account_scopes : string prop list option; [@option]
  subnet : string prop option; [@option]
  tags : string prop list option; [@option]
  update_time : string prop option; [@option]
  accelerator_config : accelerator_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  container_image : container_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reservation_affinity : reservation_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shielded_instance_config : shielded_instance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vm_image : vm_image list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_notebooks_instance) -> ()

let yojson_of_google_notebooks_instance =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       boot_disk_type = v_boot_disk_type;
       create_time = v_create_time;
       custom_gpu_driver_path = v_custom_gpu_driver_path;
       data_disk_size_gb = v_data_disk_size_gb;
       data_disk_type = v_data_disk_type;
       desired_state = v_desired_state;
       disk_encryption = v_disk_encryption;
       id = v_id;
       install_gpu_driver = v_install_gpu_driver;
       instance_owners = v_instance_owners;
       kms_key = v_kms_key;
       labels = v_labels;
       location = v_location;
       machine_type = v_machine_type;
       metadata = v_metadata;
       name = v_name;
       network = v_network;
       nic_type = v_nic_type;
       no_proxy_access = v_no_proxy_access;
       no_public_ip = v_no_public_ip;
       no_remove_data_disk = v_no_remove_data_disk;
       post_startup_script = v_post_startup_script;
       project = v_project;
       service_account = v_service_account;
       service_account_scopes = v_service_account_scopes;
       subnet = v_subnet;
       tags = v_tags;
       update_time = v_update_time;
       accelerator_config = v_accelerator_config;
       container_image = v_container_image;
       reservation_affinity = v_reservation_affinity;
       shielded_instance_config = v_shielded_instance_config;
       timeouts = v_timeouts;
       vm_image = v_vm_image;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vm_image then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vm_image) v_vm_image
           in
           let bnd = "vm_image", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_shielded_instance_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_shielded_instance_config)
               v_shielded_instance_config
           in
           let bnd = "shielded_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_reservation_affinity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_reservation_affinity)
               v_reservation_affinity
           in
           let bnd = "reservation_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container_image then bnds
         else
           let arg =
             (yojson_of_list yojson_of_container_image)
               v_container_image
           in
           let bnd = "container_image", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerator_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_accelerator_config)
               v_accelerator_config
           in
           let bnd = "accelerator_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_update_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update_time", arg in
             bnd :: bnds
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
         match v_service_account_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "service_account_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
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
         match v_post_startup_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_startup_script", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_remove_data_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_remove_data_disk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_public_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_proxy_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_proxy_access", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_owners with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_owners", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desired_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "data_disk_size_gb", arg in
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
       let bnds =
         match v_create_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_notebooks_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_notebooks_instance

[@@@deriving.end]

let accelerator_config ~core_count ~type_ () : accelerator_config =
  { core_count; type_ }

let container_image ?tag ~repository () : container_image =
  { repository; tag }

let reservation_affinity ?key ?values ~consume_reservation_type () :
    reservation_affinity =
  { consume_reservation_type; key; values }

let shielded_instance_config ?enable_integrity_monitoring
    ?enable_secure_boot ?enable_vtpm () : shielded_instance_config =
  { enable_integrity_monitoring; enable_secure_boot; enable_vtpm }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vm_image ?image_family ?image_name ~project () : vm_image =
  { image_family; image_name; project }

let google_notebooks_instance ?boot_disk_size_gb ?boot_disk_type
    ?create_time ?custom_gpu_driver_path ?data_disk_size_gb
    ?data_disk_type ?desired_state ?disk_encryption ?id
    ?install_gpu_driver ?instance_owners ?kms_key ?labels ?metadata
    ?network ?nic_type ?no_proxy_access ?no_public_ip
    ?no_remove_data_disk ?post_startup_script ?project
    ?service_account ?service_account_scopes ?subnet ?tags
    ?update_time ?(accelerator_config = []) ?(container_image = [])
    ?(reservation_affinity = []) ?(shielded_instance_config = [])
    ?timeouts ?(vm_image = []) ~location ~machine_type ~name () :
    google_notebooks_instance =
  {
    boot_disk_size_gb;
    boot_disk_type;
    create_time;
    custom_gpu_driver_path;
    data_disk_size_gb;
    data_disk_type;
    desired_state;
    disk_encryption;
    id;
    install_gpu_driver;
    instance_owners;
    kms_key;
    labels;
    location;
    machine_type;
    metadata;
    name;
    network;
    nic_type;
    no_proxy_access;
    no_public_ip;
    no_remove_data_disk;
    post_startup_script;
    project;
    service_account;
    service_account_scopes;
    subnet;
    tags;
    update_time;
    accelerator_config;
    container_image;
    reservation_affinity;
    shielded_instance_config;
    timeouts;
    vm_image;
  }

type t = {
  tf_name : string;
  boot_disk_size_gb : float prop;
  boot_disk_type : string prop;
  create_time : string prop;
  custom_gpu_driver_path : string prop;
  data_disk_size_gb : float prop;
  data_disk_type : string prop;
  desired_state : string prop;
  disk_encryption : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  install_gpu_driver : bool prop;
  instance_owners : string list prop;
  kms_key : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  machine_type : string prop;
  metadata : string Tf_core.assoc prop;
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
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?boot_disk_size_gb ?boot_disk_type ?create_time
    ?custom_gpu_driver_path ?data_disk_size_gb ?data_disk_type
    ?desired_state ?disk_encryption ?id ?install_gpu_driver
    ?instance_owners ?kms_key ?labels ?metadata ?network ?nic_type
    ?no_proxy_access ?no_public_ip ?no_remove_data_disk
    ?post_startup_script ?project ?service_account
    ?service_account_scopes ?subnet ?tags ?update_time
    ?(accelerator_config = []) ?(container_image = [])
    ?(reservation_affinity = []) ?(shielded_instance_config = [])
    ?timeouts ?(vm_image = []) ~location ~machine_type ~name __id =
  let __type = "google_notebooks_instance" in
  let __attrs =
    ({
       tf_name = __id;
       boot_disk_size_gb =
         Prop.computed __type __id "boot_disk_size_gb";
       boot_disk_type = Prop.computed __type __id "boot_disk_type";
       create_time = Prop.computed __type __id "create_time";
       custom_gpu_driver_path =
         Prop.computed __type __id "custom_gpu_driver_path";
       data_disk_size_gb =
         Prop.computed __type __id "data_disk_size_gb";
       data_disk_type = Prop.computed __type __id "data_disk_type";
       desired_state = Prop.computed __type __id "desired_state";
       disk_encryption = Prop.computed __type __id "disk_encryption";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       install_gpu_driver =
         Prop.computed __type __id "install_gpu_driver";
       instance_owners = Prop.computed __type __id "instance_owners";
       kms_key = Prop.computed __type __id "kms_key";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       machine_type = Prop.computed __type __id "machine_type";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       nic_type = Prop.computed __type __id "nic_type";
       no_proxy_access = Prop.computed __type __id "no_proxy_access";
       no_public_ip = Prop.computed __type __id "no_public_ip";
       no_remove_data_disk =
         Prop.computed __type __id "no_remove_data_disk";
       post_startup_script =
         Prop.computed __type __id "post_startup_script";
       project = Prop.computed __type __id "project";
       proxy_uri = Prop.computed __type __id "proxy_uri";
       service_account = Prop.computed __type __id "service_account";
       service_account_scopes =
         Prop.computed __type __id "service_account_scopes";
       state = Prop.computed __type __id "state";
       subnet = Prop.computed __type __id "subnet";
       tags = Prop.computed __type __id "tags";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_notebooks_instance
        (google_notebooks_instance ?boot_disk_size_gb ?boot_disk_type
           ?create_time ?custom_gpu_driver_path ?data_disk_size_gb
           ?data_disk_type ?desired_state ?disk_encryption ?id
           ?install_gpu_driver ?instance_owners ?kms_key ?labels
           ?metadata ?network ?nic_type ?no_proxy_access
           ?no_public_ip ?no_remove_data_disk ?post_startup_script
           ?project ?service_account ?service_account_scopes ?subnet
           ?tags ?update_time ~accelerator_config ~container_image
           ~reservation_affinity ~shielded_instance_config ?timeouts
           ~vm_image ~location ~machine_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?boot_disk_size_gb ?boot_disk_type
    ?create_time ?custom_gpu_driver_path ?data_disk_size_gb
    ?data_disk_type ?desired_state ?disk_encryption ?id
    ?install_gpu_driver ?instance_owners ?kms_key ?labels ?metadata
    ?network ?nic_type ?no_proxy_access ?no_public_ip
    ?no_remove_data_disk ?post_startup_script ?project
    ?service_account ?service_account_scopes ?subnet ?tags
    ?update_time ?(accelerator_config = []) ?(container_image = [])
    ?(reservation_affinity = []) ?(shielded_instance_config = [])
    ?timeouts ?(vm_image = []) ~location ~machine_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?boot_disk_size_gb ?boot_disk_type ?create_time
      ?custom_gpu_driver_path ?data_disk_size_gb ?data_disk_type
      ?desired_state ?disk_encryption ?id ?install_gpu_driver
      ?instance_owners ?kms_key ?labels ?metadata ?network ?nic_type
      ?no_proxy_access ?no_public_ip ?no_remove_data_disk
      ?post_startup_script ?project ?service_account
      ?service_account_scopes ?subnet ?tags ?update_time
      ~accelerator_config ~container_image ~reservation_affinity
      ~shielded_instance_config ?timeouts ~vm_image ~location
      ~machine_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
