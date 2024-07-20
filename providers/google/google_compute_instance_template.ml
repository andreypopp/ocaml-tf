(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_machine_features = {
  enable_nested_virtualization : bool prop option; [@option]
  threads_per_core : float prop option; [@option]
  visible_core_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_machine_features) -> ()

let yojson_of_advanced_machine_features =
  (function
   | {
       enable_nested_virtualization = v_enable_nested_virtualization;
       threads_per_core = v_threads_per_core;
       visible_core_count = v_visible_core_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_visible_core_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "visible_core_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_threads_per_core with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "threads_per_core", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_nested_virtualization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_nested_virtualization", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_machine_features -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_machine_features

[@@@deriving.end]

type confidential_instance_config = {
  confidential_instance_type : string prop option; [@option]
  enable_confidential_compute : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : confidential_instance_config) -> ()

let yojson_of_confidential_instance_config =
  (function
   | {
       confidential_instance_type = v_confidential_instance_type;
       enable_confidential_compute = v_enable_confidential_compute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_confidential_compute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_confidential_compute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_confidential_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "confidential_instance_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : confidential_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_confidential_instance_config

[@@@deriving.end]

type disk__disk_encryption_key = { kms_key_self_link : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : disk__disk_encryption_key) -> ()

let yojson_of_disk__disk_encryption_key =
  (function
   | { kms_key_self_link = v_kms_key_self_link } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_self_link
         in
         ("kms_key_self_link", arg) :: bnds
       in
       `Assoc bnds
    : disk__disk_encryption_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk__disk_encryption_key

[@@@deriving.end]

type disk__source_image_encryption_key = {
  kms_key_self_link : string prop;
  kms_key_service_account : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk__source_image_encryption_key) -> ()

let yojson_of_disk__source_image_encryption_key =
  (function
   | {
       kms_key_self_link = v_kms_key_self_link;
       kms_key_service_account = v_kms_key_service_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_service_account", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_self_link
         in
         ("kms_key_self_link", arg) :: bnds
       in
       `Assoc bnds
    : disk__source_image_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk__source_image_encryption_key

[@@@deriving.end]

type disk__source_snapshot_encryption_key = {
  kms_key_self_link : string prop;
  kms_key_service_account : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk__source_snapshot_encryption_key) -> ()

let yojson_of_disk__source_snapshot_encryption_key =
  (function
   | {
       kms_key_self_link = v_kms_key_self_link;
       kms_key_service_account = v_kms_key_service_account;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_service_account", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_self_link
         in
         ("kms_key_self_link", arg) :: bnds
       in
       `Assoc bnds
    : disk__source_snapshot_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk__source_snapshot_encryption_key

[@@@deriving.end]

type disk = {
  auto_delete : bool prop option; [@option]
  boot : bool prop option; [@option]
  device_name : string prop option; [@option]
  disk_name : string prop option; [@option]
  disk_size_gb : float prop option; [@option]
  disk_type : string prop option; [@option]
  interface : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  mode : string prop option; [@option]
  provisioned_iops : float prop option; [@option]
  resource_manager_tags : (string * string prop) list option;
      [@option]
  resource_policies : string prop list option; [@option]
  source : string prop option; [@option]
  source_image : string prop option; [@option]
  source_snapshot : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  disk_encryption_key : disk__disk_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_image_encryption_key :
    disk__source_image_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_snapshot_encryption_key :
    disk__source_snapshot_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk) -> ()

let yojson_of_disk =
  (function
   | {
       auto_delete = v_auto_delete;
       boot = v_boot;
       device_name = v_device_name;
       disk_name = v_disk_name;
       disk_size_gb = v_disk_size_gb;
       disk_type = v_disk_type;
       interface = v_interface;
       labels = v_labels;
       mode = v_mode;
       provisioned_iops = v_provisioned_iops;
       resource_manager_tags = v_resource_manager_tags;
       resource_policies = v_resource_policies;
       source = v_source;
       source_image = v_source_image;
       source_snapshot = v_source_snapshot;
       type_ = v_type_;
       disk_encryption_key = v_disk_encryption_key;
       source_image_encryption_key = v_source_image_encryption_key;
       source_snapshot_encryption_key =
         v_source_snapshot_encryption_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_snapshot_encryption_key then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_disk__source_snapshot_encryption_key)
               v_source_snapshot_encryption_key
           in
           let bnd = "source_snapshot_encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_image_encryption_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_disk__source_image_encryption_key)
               v_source_image_encryption_key
           in
           let bnd = "source_image_encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disk_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_disk__disk_encryption_key)
               v_disk_encryption_key
           in
           let bnd = "disk_encryption_key", arg in
           bnd :: bnds
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
         match v_source_snapshot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_snapshot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_image", arg in
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
         match v_resource_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_policies", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_manager_tags with
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
             let bnd = "resource_manager_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioned_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "provisioned_iops", arg in
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
         match v_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interface", arg in
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
         match v_device_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk

[@@@deriving.end]

type guest_accelerator = {
  count : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : guest_accelerator) -> ()

let yojson_of_guest_accelerator =
  (function
   | { count = v_count; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : guest_accelerator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_guest_accelerator

[@@@deriving.end]

type network_interface__access_config = {
  nat_ip : string prop option; [@option]
  network_tier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface__access_config) -> ()

let yojson_of_network_interface__access_config =
  (function
   | { nat_ip = v_nat_ip; network_tier = v_network_tier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_network_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nat_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nat_ip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interface__access_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface__access_config

[@@@deriving.end]

type network_interface__alias_ip_range = {
  ip_cidr_range : string prop;
  subnetwork_range_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface__alias_ip_range) -> ()

let yojson_of_network_interface__alias_ip_range =
  (function
   | {
       ip_cidr_range = v_ip_cidr_range;
       subnetwork_range_name = v_subnetwork_range_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnetwork_range_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork_range_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_cidr_range in
         ("ip_cidr_range", arg) :: bnds
       in
       `Assoc bnds
    : network_interface__alias_ip_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface__alias_ip_range

[@@@deriving.end]

type network_interface__ipv6_access_config = {
  network_tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface__ipv6_access_config) -> ()

let yojson_of_network_interface__ipv6_access_config =
  (function
   | { network_tier = v_network_tier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_tier in
         ("network_tier", arg) :: bnds
       in
       `Assoc bnds
    : network_interface__ipv6_access_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface__ipv6_access_config

[@@@deriving.end]

type network_interface = {
  internal_ipv6_prefix_length : float prop option; [@option]
  ipv6_address : string prop option; [@option]
  network : string prop option; [@option]
  network_ip : string prop option; [@option]
  nic_type : string prop option; [@option]
  queue_count : float prop option; [@option]
  stack_type : string prop option; [@option]
  subnetwork : string prop option; [@option]
  subnetwork_project : string prop option; [@option]
  access_config : network_interface__access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  alias_ip_range : network_interface__alias_ip_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ipv6_access_config : network_interface__ipv6_access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | {
       internal_ipv6_prefix_length = v_internal_ipv6_prefix_length;
       ipv6_address = v_ipv6_address;
       network = v_network;
       network_ip = v_network_ip;
       nic_type = v_nic_type;
       queue_count = v_queue_count;
       stack_type = v_stack_type;
       subnetwork = v_subnetwork;
       subnetwork_project = v_subnetwork_project;
       access_config = v_access_config;
       alias_ip_range = v_alias_ip_range;
       ipv6_access_config = v_ipv6_access_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ipv6_access_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_interface__ipv6_access_config)
               v_ipv6_access_config
           in
           let bnd = "ipv6_access_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alias_ip_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_interface__alias_ip_range)
               v_alias_ip_range
           in
           let bnd = "alias_ip_range", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_interface__access_config)
               v_access_config
           in
           let bnd = "access_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_subnetwork_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork_project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stack_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stack_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queue_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "queue_count", arg in
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
         match v_network_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_ip", arg in
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
         match v_ipv6_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internal_ipv6_prefix_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "internal_ipv6_prefix_length", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface

[@@@deriving.end]

type network_performance_config = {
  total_egress_bandwidth_tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_performance_config) -> ()

let yojson_of_network_performance_config =
  (function
   | { total_egress_bandwidth_tier = v_total_egress_bandwidth_tier }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_total_egress_bandwidth_tier
         in
         ("total_egress_bandwidth_tier", arg) :: bnds
       in
       `Assoc bnds
    : network_performance_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_performance_config

[@@@deriving.end]

type reservation_affinity__specific_reservation = {
  key : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reservation_affinity__specific_reservation) -> ()

let yojson_of_reservation_affinity__specific_reservation =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : reservation_affinity__specific_reservation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reservation_affinity__specific_reservation

[@@@deriving.end]

type reservation_affinity = {
  type_ : string prop; [@key "type"]
  specific_reservation :
    reservation_affinity__specific_reservation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reservation_affinity) -> ()

let yojson_of_reservation_affinity =
  (function
   | {
       type_ = v_type_;
       specific_reservation = v_specific_reservation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_specific_reservation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_reservation_affinity__specific_reservation)
               v_specific_reservation
           in
           let bnd = "specific_reservation", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : reservation_affinity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reservation_affinity

[@@@deriving.end]

type scheduling__local_ssd_recovery_timeout = {
  nanos : float prop option; [@option]
  seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduling__local_ssd_recovery_timeout) -> ()

let yojson_of_scheduling__local_ssd_recovery_timeout =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scheduling__local_ssd_recovery_timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling__local_ssd_recovery_timeout

[@@@deriving.end]

type scheduling__max_run_duration = {
  nanos : float prop option; [@option]
  seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduling__max_run_duration) -> ()

let yojson_of_scheduling__max_run_duration =
  (function
   | { nanos = v_nanos; seconds = v_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scheduling__max_run_duration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling__max_run_duration

[@@@deriving.end]

type scheduling__node_affinities = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduling__node_affinities) -> ()

let yojson_of_scheduling__node_affinities =
  (function
   | { key = v_key; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : scheduling__node_affinities ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling__node_affinities

[@@@deriving.end]

type scheduling__on_instance_stop_action = {
  discard_local_ssd : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduling__on_instance_stop_action) -> ()

let yojson_of_scheduling__on_instance_stop_action =
  (function
   | { discard_local_ssd = v_discard_local_ssd } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_discard_local_ssd with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "discard_local_ssd", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scheduling__on_instance_stop_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling__on_instance_stop_action

[@@@deriving.end]

type scheduling = {
  automatic_restart : bool prop option; [@option]
  instance_termination_action : string prop option; [@option]
  min_node_cpus : float prop option; [@option]
  on_host_maintenance : string prop option; [@option]
  preemptible : bool prop option; [@option]
  provisioning_model : string prop option; [@option]
  local_ssd_recovery_timeout :
    scheduling__local_ssd_recovery_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_run_duration : scheduling__max_run_duration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_affinities : scheduling__node_affinities list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  on_instance_stop_action : scheduling__on_instance_stop_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduling) -> ()

let yojson_of_scheduling =
  (function
   | {
       automatic_restart = v_automatic_restart;
       instance_termination_action = v_instance_termination_action;
       min_node_cpus = v_min_node_cpus;
       on_host_maintenance = v_on_host_maintenance;
       preemptible = v_preemptible;
       provisioning_model = v_provisioning_model;
       local_ssd_recovery_timeout = v_local_ssd_recovery_timeout;
       max_run_duration = v_max_run_duration;
       node_affinities = v_node_affinities;
       on_instance_stop_action = v_on_instance_stop_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_on_instance_stop_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_scheduling__on_instance_stop_action)
               v_on_instance_stop_action
           in
           let bnd = "on_instance_stop_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_affinities then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduling__node_affinities)
               v_node_affinities
           in
           let bnd = "node_affinities", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_max_run_duration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduling__max_run_duration)
               v_max_run_duration
           in
           let bnd = "max_run_duration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_ssd_recovery_timeout then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_scheduling__local_ssd_recovery_timeout)
               v_local_ssd_recovery_timeout
           in
           let bnd = "local_ssd_recovery_timeout", arg in
           bnd :: bnds
       in
       let bnds =
         match v_provisioning_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provisioning_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preemptible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preemptible", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_host_maintenance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_host_maintenance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_node_cpus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_node_cpus", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_termination_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_termination_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_restart with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_restart", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scheduling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling

[@@@deriving.end]

type service_account = {
  email : string prop option; [@option]
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_account) -> ()

let yojson_of_service_account =
  (function
   | { email = v_email; scopes = v_scopes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_account

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
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_compute_instance_template = {
  can_ip_forward : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  instance_description : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  machine_type : string prop;
  metadata : (string * string prop) list option; [@option]
  metadata_startup_script : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  resource_manager_tags : (string * string prop) list option;
      [@option]
  resource_policies : string prop list option; [@option]
  tags : string prop list option; [@option]
  advanced_machine_features : advanced_machine_features list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  confidential_instance_config : confidential_instance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disk : disk list; [@default []] [@yojson_drop_default Stdlib.( = )]
  guest_accelerator : guest_accelerator list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interface : network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_performance_config : network_performance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  reservation_affinity : reservation_affinity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scheduling : scheduling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_account : service_account list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shielded_instance_config : shielded_instance_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_instance_template) -> ()

let yojson_of_google_compute_instance_template =
  (function
   | {
       can_ip_forward = v_can_ip_forward;
       description = v_description;
       id = v_id;
       instance_description = v_instance_description;
       labels = v_labels;
       machine_type = v_machine_type;
       metadata = v_metadata;
       metadata_startup_script = v_metadata_startup_script;
       min_cpu_platform = v_min_cpu_platform;
       name = v_name;
       name_prefix = v_name_prefix;
       project = v_project;
       region = v_region;
       resource_manager_tags = v_resource_manager_tags;
       resource_policies = v_resource_policies;
       tags = v_tags;
       advanced_machine_features = v_advanced_machine_features;
       confidential_instance_config = v_confidential_instance_config;
       disk = v_disk;
       guest_accelerator = v_guest_accelerator;
       network_interface = v_network_interface;
       network_performance_config = v_network_performance_config;
       reservation_affinity = v_reservation_affinity;
       scheduling = v_scheduling;
       service_account = v_service_account;
       shielded_instance_config = v_shielded_instance_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         if Stdlib.( = ) [] v_service_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_account)
               v_service_account
           in
           let bnd = "service_account", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scheduling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduling) v_scheduling
           in
           let bnd = "scheduling", arg in
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
         if Stdlib.( = ) [] v_network_performance_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_performance_config)
               v_network_performance_config
           in
           let bnd = "network_performance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_interface then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_interface)
               v_network_interface
           in
           let bnd = "network_interface", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_guest_accelerator then bnds
         else
           let arg =
             (yojson_of_list yojson_of_guest_accelerator)
               v_guest_accelerator
           in
           let bnd = "guest_accelerator", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disk then bnds
         else
           let arg = (yojson_of_list yojson_of_disk) v_disk in
           let bnd = "disk", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_confidential_instance_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_confidential_instance_config)
               v_confidential_instance_config
           in
           let bnd = "confidential_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advanced_machine_features then bnds
         else
           let arg =
             (yojson_of_list yojson_of_advanced_machine_features)
               v_advanced_machine_features
           in
           let bnd = "advanced_machine_features", arg in
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
         match v_resource_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_policies", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_manager_tags with
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
             let bnd = "resource_manager_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_cpu_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_cpu_platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata_startup_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_startup_script", arg in
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
         match v_instance_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_description", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_can_ip_forward with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "can_ip_forward", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_instance_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_instance_template

[@@@deriving.end]

let advanced_machine_features ?enable_nested_virtualization
    ?threads_per_core ?visible_core_count () :
    advanced_machine_features =
  {
    enable_nested_virtualization;
    threads_per_core;
    visible_core_count;
  }

let confidential_instance_config ?confidential_instance_type
    ?enable_confidential_compute () : confidential_instance_config =
  { confidential_instance_type; enable_confidential_compute }

let disk__disk_encryption_key ~kms_key_self_link () :
    disk__disk_encryption_key =
  { kms_key_self_link }

let disk__source_image_encryption_key ?kms_key_service_account
    ~kms_key_self_link () : disk__source_image_encryption_key =
  { kms_key_self_link; kms_key_service_account }

let disk__source_snapshot_encryption_key ?kms_key_service_account
    ~kms_key_self_link () : disk__source_snapshot_encryption_key =
  { kms_key_self_link; kms_key_service_account }

let disk ?auto_delete ?boot ?device_name ?disk_name ?disk_size_gb
    ?disk_type ?interface ?labels ?mode ?provisioned_iops
    ?resource_manager_tags ?resource_policies ?source ?source_image
    ?source_snapshot ?type_ ?(disk_encryption_key = [])
    ?(source_image_encryption_key = [])
    ?(source_snapshot_encryption_key = []) () : disk =
  {
    auto_delete;
    boot;
    device_name;
    disk_name;
    disk_size_gb;
    disk_type;
    interface;
    labels;
    mode;
    provisioned_iops;
    resource_manager_tags;
    resource_policies;
    source;
    source_image;
    source_snapshot;
    type_;
    disk_encryption_key;
    source_image_encryption_key;
    source_snapshot_encryption_key;
  }

let guest_accelerator ~count ~type_ () : guest_accelerator =
  { count; type_ }

let network_interface__access_config ?nat_ip ?network_tier () :
    network_interface__access_config =
  { nat_ip; network_tier }

let network_interface__alias_ip_range ?subnetwork_range_name
    ~ip_cidr_range () : network_interface__alias_ip_range =
  { ip_cidr_range; subnetwork_range_name }

let network_interface__ipv6_access_config ~network_tier () :
    network_interface__ipv6_access_config =
  { network_tier }

let network_interface ?internal_ipv6_prefix_length ?ipv6_address
    ?network ?network_ip ?nic_type ?queue_count ?stack_type
    ?subnetwork ?subnetwork_project ?(access_config = [])
    ?(alias_ip_range = []) ?(ipv6_access_config = []) () :
    network_interface =
  {
    internal_ipv6_prefix_length;
    ipv6_address;
    network;
    network_ip;
    nic_type;
    queue_count;
    stack_type;
    subnetwork;
    subnetwork_project;
    access_config;
    alias_ip_range;
    ipv6_access_config;
  }

let network_performance_config ~total_egress_bandwidth_tier () :
    network_performance_config =
  { total_egress_bandwidth_tier }

let reservation_affinity__specific_reservation ~key ~values () :
    reservation_affinity__specific_reservation =
  { key; values }

let reservation_affinity ?(specific_reservation = []) ~type_ () :
    reservation_affinity =
  { type_; specific_reservation }

let scheduling__local_ssd_recovery_timeout ?nanos ~seconds () :
    scheduling__local_ssd_recovery_timeout =
  { nanos; seconds }

let scheduling__max_run_duration ?nanos ~seconds () :
    scheduling__max_run_duration =
  { nanos; seconds }

let scheduling__node_affinities ~key ~operator ~values () :
    scheduling__node_affinities =
  { key; operator; values }

let scheduling__on_instance_stop_action ?discard_local_ssd () :
    scheduling__on_instance_stop_action =
  { discard_local_ssd }

let scheduling ?automatic_restart ?instance_termination_action
    ?min_node_cpus ?on_host_maintenance ?preemptible
    ?provisioning_model ?(local_ssd_recovery_timeout = [])
    ?(max_run_duration = []) ?(on_instance_stop_action = [])
    ~node_affinities () : scheduling =
  {
    automatic_restart;
    instance_termination_action;
    min_node_cpus;
    on_host_maintenance;
    preemptible;
    provisioning_model;
    local_ssd_recovery_timeout;
    max_run_duration;
    node_affinities;
    on_instance_stop_action;
  }

let service_account ?email ~scopes () : service_account =
  { email; scopes }

let shielded_instance_config ?enable_integrity_monitoring
    ?enable_secure_boot ?enable_vtpm () : shielded_instance_config =
  { enable_integrity_monitoring; enable_secure_boot; enable_vtpm }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_instance_template ?can_ip_forward ?description ?id
    ?instance_description ?labels ?metadata ?metadata_startup_script
    ?min_cpu_platform ?name ?name_prefix ?project ?region
    ?resource_manager_tags ?resource_policies ?tags
    ?(advanced_machine_features = [])
    ?(confidential_instance_config = []) ?(guest_accelerator = [])
    ?(network_interface = []) ?(network_performance_config = [])
    ?(reservation_affinity = []) ?(scheduling = [])
    ?(service_account = []) ?(shielded_instance_config = [])
    ?timeouts ~machine_type ~disk () :
    google_compute_instance_template =
  {
    can_ip_forward;
    description;
    id;
    instance_description;
    labels;
    machine_type;
    metadata;
    metadata_startup_script;
    min_cpu_platform;
    name;
    name_prefix;
    project;
    region;
    resource_manager_tags;
    resource_policies;
    tags;
    advanced_machine_features;
    confidential_instance_config;
    disk;
    guest_accelerator;
    network_interface;
    network_performance_config;
    reservation_affinity;
    scheduling;
    service_account;
    shielded_instance_config;
    timeouts;
  }

type t = {
  tf_name : string;
  can_ip_forward : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  instance_description : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  metadata : (string * string) list prop;
  metadata_fingerprint : string prop;
  metadata_startup_script : string prop;
  min_cpu_platform : string prop;
  name : string prop;
  name_prefix : string prop;
  project : string prop;
  region : string prop;
  resource_manager_tags : (string * string) list prop;
  resource_policies : string list prop;
  self_link : string prop;
  self_link_unique : string prop;
  tags : string list prop;
  tags_fingerprint : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?can_ip_forward ?description ?id ?instance_description
    ?labels ?metadata ?metadata_startup_script ?min_cpu_platform
    ?name ?name_prefix ?project ?region ?resource_manager_tags
    ?resource_policies ?tags ?(advanced_machine_features = [])
    ?(confidential_instance_config = []) ?(guest_accelerator = [])
    ?(network_interface = []) ?(network_performance_config = [])
    ?(reservation_affinity = []) ?(scheduling = [])
    ?(service_account = []) ?(shielded_instance_config = [])
    ?timeouts ~machine_type ~disk __id =
  let __type = "google_compute_instance_template" in
  let __attrs =
    ({
       tf_name = __id;
       can_ip_forward = Prop.computed __type __id "can_ip_forward";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       instance_description =
         Prop.computed __type __id "instance_description";
       labels = Prop.computed __type __id "labels";
       machine_type = Prop.computed __type __id "machine_type";
       metadata = Prop.computed __type __id "metadata";
       metadata_fingerprint =
         Prop.computed __type __id "metadata_fingerprint";
       metadata_startup_script =
         Prop.computed __type __id "metadata_startup_script";
       min_cpu_platform =
         Prop.computed __type __id "min_cpu_platform";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       resource_manager_tags =
         Prop.computed __type __id "resource_manager_tags";
       resource_policies =
         Prop.computed __type __id "resource_policies";
       self_link = Prop.computed __type __id "self_link";
       self_link_unique =
         Prop.computed __type __id "self_link_unique";
       tags = Prop.computed __type __id "tags";
       tags_fingerprint =
         Prop.computed __type __id "tags_fingerprint";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_template
        (google_compute_instance_template ?can_ip_forward
           ?description ?id ?instance_description ?labels ?metadata
           ?metadata_startup_script ?min_cpu_platform ?name
           ?name_prefix ?project ?region ?resource_manager_tags
           ?resource_policies ?tags ~advanced_machine_features
           ~confidential_instance_config ~guest_accelerator
           ~network_interface ~network_performance_config
           ~reservation_affinity ~scheduling ~service_account
           ~shielded_instance_config ?timeouts ~machine_type ~disk ());
    attrs = __attrs;
  }

let register ?tf_module ?can_ip_forward ?description ?id
    ?instance_description ?labels ?metadata ?metadata_startup_script
    ?min_cpu_platform ?name ?name_prefix ?project ?region
    ?resource_manager_tags ?resource_policies ?tags
    ?(advanced_machine_features = [])
    ?(confidential_instance_config = []) ?(guest_accelerator = [])
    ?(network_interface = []) ?(network_performance_config = [])
    ?(reservation_affinity = []) ?(scheduling = [])
    ?(service_account = []) ?(shielded_instance_config = [])
    ?timeouts ~machine_type ~disk __id =
  let (r : _ Tf_core.resource) =
    make ?can_ip_forward ?description ?id ?instance_description
      ?labels ?metadata ?metadata_startup_script ?min_cpu_platform
      ?name ?name_prefix ?project ?region ?resource_manager_tags
      ?resource_policies ?tags ~advanced_machine_features
      ~confidential_instance_config ~guest_accelerator
      ~network_interface ~network_performance_config
      ~reservation_affinity ~scheduling ~service_account
      ~shielded_instance_config ?timeouts ~machine_type ~disk __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
