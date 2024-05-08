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

type boot_disk__initialize_params = {
  enable_confidential_compute : bool prop option; [@option]
  image : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  provisioned_iops : float prop option; [@option]
  provisioned_throughput : float prop option; [@option]
  resource_manager_tags : (string * string prop) list option;
      [@option]
  size : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : boot_disk__initialize_params) -> ()

let yojson_of_boot_disk__initialize_params =
  (function
   | {
       enable_confidential_compute = v_enable_confidential_compute;
       image = v_image;
       labels = v_labels;
       provisioned_iops = v_provisioned_iops;
       provisioned_throughput = v_provisioned_throughput;
       resource_manager_tags = v_resource_manager_tags;
       size = v_size;
       type_ = v_type_;
     } ->
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
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
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
         match v_provisioned_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "provisioned_throughput", arg in
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
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_confidential_compute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_confidential_compute", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : boot_disk__initialize_params ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boot_disk__initialize_params

[@@@deriving.end]

type boot_disk = {
  auto_delete : bool prop option; [@option]
  device_name : string prop option; [@option]
  disk_encryption_key_raw : string prop option; [@option]
  kms_key_self_link : string prop option; [@option]
  mode : string prop option; [@option]
  source : string prop option; [@option]
  initialize_params : boot_disk__initialize_params list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : boot_disk) -> ()

let yojson_of_boot_disk =
  (function
   | {
       auto_delete = v_auto_delete;
       device_name = v_device_name;
       disk_encryption_key_raw = v_disk_encryption_key_raw;
       kms_key_self_link = v_kms_key_self_link;
       mode = v_mode;
       source = v_source;
       initialize_params = v_initialize_params;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_initialize_params then bnds
         else
           let arg =
             (yojson_of_list yojson_of_boot_disk__initialize_params)
               v_initialize_params
           in
           let bnd = "initialize_params", arg in
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
         match v_kms_key_self_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_self_link", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption_key_raw with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_key_raw", arg in
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
         match v_auto_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : boot_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boot_disk

[@@@deriving.end]

type confidential_instance_config = {
  enable_confidential_compute : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : confidential_instance_config) -> ()

let yojson_of_confidential_instance_config =
  (function
   | { enable_confidential_compute = v_enable_confidential_compute }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_confidential_compute
         in
         ("enable_confidential_compute", arg) :: bnds
       in
       `Assoc bnds
    : confidential_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_confidential_instance_config

[@@@deriving.end]

type network_interface__ipv6_access_config = {
  external_ipv6 : string prop option; [@option]
  external_ipv6_prefix_length : string prop option; [@option]
  name : string prop option; [@option]
  network_tier : string prop;
  public_ptr_domain_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface__ipv6_access_config) -> ()

let yojson_of_network_interface__ipv6_access_config =
  (function
   | {
       external_ipv6 = v_external_ipv6;
       external_ipv6_prefix_length = v_external_ipv6_prefix_length;
       name = v_name;
       network_tier = v_network_tier;
       public_ptr_domain_name = v_public_ptr_domain_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_public_ptr_domain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ptr_domain_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_tier in
         ("network_tier", arg) :: bnds
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
         match v_external_ipv6_prefix_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_ipv6_prefix_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_ipv6", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interface__ipv6_access_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface__ipv6_access_config

[@@@deriving.end]

type network_interface__access_config = {
  nat_ip : string prop;
  network_tier : string prop;
  public_ptr_domain_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface__access_config) -> ()

let yojson_of_network_interface__access_config =
  (function
   | {
       nat_ip = v_nat_ip;
       network_tier = v_network_tier;
       public_ptr_domain_name = v_public_ptr_domain_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ptr_domain_name
         in
         ("public_ptr_domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_tier in
         ("network_tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_nat_ip in
         ("nat_ip", arg) :: bnds
       in
       `Assoc bnds
    : network_interface__access_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface__access_config

[@@@deriving.end]

type network_interface__alias_ip_range = {
  ip_cidr_range : string prop;
  subnetwork_range_name : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_subnetwork_range_name
         in
         ("subnetwork_range_name", arg) :: bnds
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

type network_interface = {
  access_config : network_interface__access_config list option;
      [@option]
  alias_ip_range : network_interface__alias_ip_range list option;
      [@option]
  internal_ipv6_prefix_length : float prop option; [@option]
  ipv6_address : string prop option; [@option]
  network : string prop option; [@option]
  network_ip : string prop option; [@option]
  nic_type : string prop option; [@option]
  queue_count : float prop option; [@option]
  stack_type : string prop option; [@option]
  subnetwork : string prop option; [@option]
  subnetwork_project : string prop option; [@option]
  ipv6_access_config : network_interface__ipv6_access_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | {
       access_config = v_access_config;
       alias_ip_range = v_alias_ip_range;
       internal_ipv6_prefix_length = v_internal_ipv6_prefix_length;
       ipv6_address = v_ipv6_address;
       network = v_network;
       network_ip = v_network_ip;
       nic_type = v_nic_type;
       queue_count = v_queue_count;
       stack_type = v_stack_type;
       subnetwork = v_subnetwork;
       subnetwork_project = v_subnetwork_project;
       ipv6_access_config = v_ipv6_access_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ipv6_access_config then bnds
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
       let bnds =
         match v_alias_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_network_interface__alias_ip_range v
             in
             let bnd = "alias_ip_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_network_interface__access_config v
             in
             let bnd = "access_config", arg in
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

type params = {
  resource_manager_tags : (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : params) -> ()

let yojson_of_params =
  (function
   | { resource_manager_tags = v_resource_manager_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : params -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_params

[@@@deriving.end]

type reservation_affinity__specific_reservation = {
  key : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_specific_reservation then bnds
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

type scheduling__node_affinities = {
  key : string prop;
  operator : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_values then bnds
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

type scheduling = {
  automatic_restart : bool prop option; [@option]
  instance_termination_action : string prop option; [@option]
  min_node_cpus : float prop option; [@option]
  on_host_maintenance : string prop option; [@option]
  preemptible : bool prop option; [@option]
  provisioning_model : string prop option; [@option]
  local_ssd_recovery_timeout :
    scheduling__local_ssd_recovery_timeout list;
      [@default []] [@yojson_drop_default ( = )]
  node_affinities : scheduling__node_affinities list;
      [@default []] [@yojson_drop_default ( = )]
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
       node_affinities = v_node_affinities;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_node_affinities then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduling__node_affinities)
               v_node_affinities
           in
           let bnd = "node_affinities", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_local_ssd_recovery_timeout then bnds
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

type attached_disk = {
  device_name : string prop;
  disk_encryption_key_raw : string prop;
  disk_encryption_key_sha256 : string prop;
  kms_key_self_link : string prop;
  mode : string prop;
  source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attached_disk) -> ()

let yojson_of_attached_disk =
  (function
   | {
       device_name = v_device_name;
       disk_encryption_key_raw = v_disk_encryption_key_raw;
       disk_encryption_key_sha256 = v_disk_encryption_key_sha256;
       kms_key_self_link = v_kms_key_self_link;
       mode = v_mode;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_self_link
         in
         ("kms_key_self_link", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_disk_encryption_key_sha256
         in
         ("disk_encryption_key_sha256", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_disk_encryption_key_raw
         in
         ("disk_encryption_key_raw", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : attached_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attached_disk

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

type scratch_disk = {
  device_name : string prop;
  interface : string prop;
  size : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scratch_disk) -> ()

let yojson_of_scratch_disk =
  (function
   | {
       device_name = v_device_name;
       interface = v_interface;
       size = v_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interface in
         ("interface", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : scratch_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scratch_disk

[@@@deriving.end]

type service_account = {
  email : string prop;
  scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : service_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_account

[@@@deriving.end]

type google_compute_instance_from_template = {
  allow_stopping_for_update : bool prop option; [@option]
  attached_disk : attached_disk list option; [@option]
  can_ip_forward : bool prop option; [@option]
  deletion_protection : bool prop option; [@option]
  description : string prop option; [@option]
  desired_status : string prop option; [@option]
  enable_display : bool prop option; [@option]
  guest_accelerator : guest_accelerator list option; [@option]
  hostname : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  machine_type : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  metadata_startup_script : string prop option; [@option]
  min_cpu_platform : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  resource_policies : string prop list option; [@option]
  scratch_disk : scratch_disk list option; [@option]
  service_account : service_account list option; [@option]
  source_instance_template : string prop;
  tags : string prop list option; [@option]
  zone : string prop option; [@option]
  advanced_machine_features : advanced_machine_features list;
      [@default []] [@yojson_drop_default ( = )]
  boot_disk : boot_disk list;
      [@default []] [@yojson_drop_default ( = )]
  confidential_instance_config : confidential_instance_config list;
      [@default []] [@yojson_drop_default ( = )]
  network_interface : network_interface list;
      [@default []] [@yojson_drop_default ( = )]
  network_performance_config : network_performance_config list;
      [@default []] [@yojson_drop_default ( = )]
  params : params list; [@default []] [@yojson_drop_default ( = )]
  reservation_affinity : reservation_affinity list;
      [@default []] [@yojson_drop_default ( = )]
  scheduling : scheduling list;
      [@default []] [@yojson_drop_default ( = )]
  shielded_instance_config : shielded_instance_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_instance_from_template) -> ()

let yojson_of_google_compute_instance_from_template =
  (function
   | {
       allow_stopping_for_update = v_allow_stopping_for_update;
       attached_disk = v_attached_disk;
       can_ip_forward = v_can_ip_forward;
       deletion_protection = v_deletion_protection;
       description = v_description;
       desired_status = v_desired_status;
       enable_display = v_enable_display;
       guest_accelerator = v_guest_accelerator;
       hostname = v_hostname;
       id = v_id;
       labels = v_labels;
       machine_type = v_machine_type;
       metadata = v_metadata;
       metadata_startup_script = v_metadata_startup_script;
       min_cpu_platform = v_min_cpu_platform;
       name = v_name;
       project = v_project;
       resource_policies = v_resource_policies;
       scratch_disk = v_scratch_disk;
       service_account = v_service_account;
       source_instance_template = v_source_instance_template;
       tags = v_tags;
       zone = v_zone;
       advanced_machine_features = v_advanced_machine_features;
       boot_disk = v_boot_disk;
       confidential_instance_config = v_confidential_instance_config;
       network_interface = v_network_interface;
       network_performance_config = v_network_performance_config;
       params = v_params;
       reservation_affinity = v_reservation_affinity;
       scheduling = v_scheduling;
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
         if [] = v_shielded_instance_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_shielded_instance_config)
               v_shielded_instance_config
           in
           let bnd = "shielded_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_scheduling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduling) v_scheduling
           in
           let bnd = "scheduling", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_reservation_affinity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_reservation_affinity)
               v_reservation_affinity
           in
           let bnd = "reservation_affinity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_params then bnds
         else
           let arg = (yojson_of_list yojson_of_params) v_params in
           let bnd = "params", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_network_performance_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_performance_config)
               v_network_performance_config
           in
           let bnd = "network_performance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_network_interface then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_interface)
               v_network_interface
           in
           let bnd = "network_interface", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_confidential_instance_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_confidential_instance_config)
               v_confidential_instance_config
           in
           let bnd = "confidential_instance_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_boot_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_boot_disk) v_boot_disk
           in
           let bnd = "boot_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_advanced_machine_features then bnds
         else
           let arg =
             (yojson_of_list yojson_of_advanced_machine_features)
               v_advanced_machine_features
           in
           let bnd = "advanced_machine_features", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_source_instance_template
         in
         ("source_instance_template", arg) :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_service_account v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scratch_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_scratch_disk v in
             let bnd = "scratch_disk", arg in
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
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_guest_accelerator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_guest_accelerator v
             in
             let bnd = "guest_accelerator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_display with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_display", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desired_status", arg in
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
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
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
       let bnds =
         match v_attached_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_attached_disk v in
             let bnd = "attached_disk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_stopping_for_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_stopping_for_update", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_instance_from_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_instance_from_template

[@@@deriving.end]

let advanced_machine_features ?enable_nested_virtualization
    ?threads_per_core ?visible_core_count () :
    advanced_machine_features =
  {
    enable_nested_virtualization;
    threads_per_core;
    visible_core_count;
  }

let boot_disk__initialize_params ?enable_confidential_compute ?image
    ?labels ?provisioned_iops ?provisioned_throughput
    ?resource_manager_tags ?size ?type_ () :
    boot_disk__initialize_params =
  {
    enable_confidential_compute;
    image;
    labels;
    provisioned_iops;
    provisioned_throughput;
    resource_manager_tags;
    size;
    type_;
  }

let boot_disk ?auto_delete ?device_name ?disk_encryption_key_raw
    ?kms_key_self_link ?mode ?source ?(initialize_params = []) () :
    boot_disk =
  {
    auto_delete;
    device_name;
    disk_encryption_key_raw;
    kms_key_self_link;
    mode;
    source;
    initialize_params;
  }

let confidential_instance_config ~enable_confidential_compute () :
    confidential_instance_config =
  { enable_confidential_compute }

let network_interface__ipv6_access_config ?external_ipv6
    ?external_ipv6_prefix_length ?name ?public_ptr_domain_name
    ~network_tier () : network_interface__ipv6_access_config =
  {
    external_ipv6;
    external_ipv6_prefix_length;
    name;
    network_tier;
    public_ptr_domain_name;
  }

let network_interface ?access_config ?alias_ip_range
    ?internal_ipv6_prefix_length ?ipv6_address ?network ?network_ip
    ?nic_type ?queue_count ?stack_type ?subnetwork
    ?subnetwork_project ?(ipv6_access_config = []) () :
    network_interface =
  {
    access_config;
    alias_ip_range;
    internal_ipv6_prefix_length;
    ipv6_address;
    network;
    network_ip;
    nic_type;
    queue_count;
    stack_type;
    subnetwork;
    subnetwork_project;
    ipv6_access_config;
  }

let network_performance_config ~total_egress_bandwidth_tier () :
    network_performance_config =
  { total_egress_bandwidth_tier }

let params ?resource_manager_tags () : params =
  { resource_manager_tags }

let reservation_affinity__specific_reservation ~key ~values () :
    reservation_affinity__specific_reservation =
  { key; values }

let reservation_affinity ?(specific_reservation = []) ~type_ () :
    reservation_affinity =
  { type_; specific_reservation }

let scheduling__local_ssd_recovery_timeout ?nanos ~seconds () :
    scheduling__local_ssd_recovery_timeout =
  { nanos; seconds }

let scheduling__node_affinities ~key ~operator ~values () :
    scheduling__node_affinities =
  { key; operator; values }

let scheduling ?automatic_restart ?instance_termination_action
    ?min_node_cpus ?on_host_maintenance ?preemptible
    ?provisioning_model ?(local_ssd_recovery_timeout = [])
    ~node_affinities () : scheduling =
  {
    automatic_restart;
    instance_termination_action;
    min_node_cpus;
    on_host_maintenance;
    preemptible;
    provisioning_model;
    local_ssd_recovery_timeout;
    node_affinities;
  }

let shielded_instance_config ?enable_integrity_monitoring
    ?enable_secure_boot ?enable_vtpm () : shielded_instance_config =
  { enable_integrity_monitoring; enable_secure_boot; enable_vtpm }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_instance_from_template ?allow_stopping_for_update
    ?attached_disk ?can_ip_forward ?deletion_protection ?description
    ?desired_status ?enable_display ?guest_accelerator ?hostname ?id
    ?labels ?machine_type ?metadata ?metadata_startup_script
    ?min_cpu_platform ?project ?resource_policies ?scratch_disk
    ?service_account ?tags ?zone ?(advanced_machine_features = [])
    ?(boot_disk = []) ?(confidential_instance_config = [])
    ?(network_interface = []) ?(network_performance_config = [])
    ?(params = []) ?(reservation_affinity = []) ?(scheduling = [])
    ?(shielded_instance_config = []) ?timeouts ~name
    ~source_instance_template () :
    google_compute_instance_from_template =
  {
    allow_stopping_for_update;
    attached_disk;
    can_ip_forward;
    deletion_protection;
    description;
    desired_status;
    enable_display;
    guest_accelerator;
    hostname;
    id;
    labels;
    machine_type;
    metadata;
    metadata_startup_script;
    min_cpu_platform;
    name;
    project;
    resource_policies;
    scratch_disk;
    service_account;
    source_instance_template;
    tags;
    zone;
    advanced_machine_features;
    boot_disk;
    confidential_instance_config;
    network_interface;
    network_performance_config;
    params;
    reservation_affinity;
    scheduling;
    shielded_instance_config;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_stopping_for_update : bool prop;
  attached_disk : attached_disk list prop;
  can_ip_forward : bool prop;
  cpu_platform : string prop;
  current_status : string prop;
  deletion_protection : bool prop;
  description : string prop;
  desired_status : string prop;
  effective_labels : (string * string) list prop;
  enable_display : bool prop;
  guest_accelerator : guest_accelerator list prop;
  hostname : string prop;
  id : string prop;
  instance_id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  metadata : (string * string) list prop;
  metadata_fingerprint : string prop;
  metadata_startup_script : string prop;
  min_cpu_platform : string prop;
  name : string prop;
  project : string prop;
  resource_policies : string list prop;
  scratch_disk : scratch_disk list prop;
  self_link : string prop;
  service_account : service_account list prop;
  source_instance_template : string prop;
  tags : string list prop;
  tags_fingerprint : string prop;
  terraform_labels : (string * string) list prop;
  zone : string prop;
}

let make ?allow_stopping_for_update ?attached_disk ?can_ip_forward
    ?deletion_protection ?description ?desired_status ?enable_display
    ?guest_accelerator ?hostname ?id ?labels ?machine_type ?metadata
    ?metadata_startup_script ?min_cpu_platform ?project
    ?resource_policies ?scratch_disk ?service_account ?tags ?zone
    ?(advanced_machine_features = []) ?(boot_disk = [])
    ?(confidential_instance_config = []) ?(network_interface = [])
    ?(network_performance_config = []) ?(params = [])
    ?(reservation_affinity = []) ?(scheduling = [])
    ?(shielded_instance_config = []) ?timeouts ~name
    ~source_instance_template __id =
  let __type = "google_compute_instance_from_template" in
  let __attrs =
    ({
       tf_name = __id;
       allow_stopping_for_update =
         Prop.computed __type __id "allow_stopping_for_update";
       attached_disk = Prop.computed __type __id "attached_disk";
       can_ip_forward = Prop.computed __type __id "can_ip_forward";
       cpu_platform = Prop.computed __type __id "cpu_platform";
       current_status = Prop.computed __type __id "current_status";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       description = Prop.computed __type __id "description";
       desired_status = Prop.computed __type __id "desired_status";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_display = Prop.computed __type __id "enable_display";
       guest_accelerator =
         Prop.computed __type __id "guest_accelerator";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
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
       project = Prop.computed __type __id "project";
       resource_policies =
         Prop.computed __type __id "resource_policies";
       scratch_disk = Prop.computed __type __id "scratch_disk";
       self_link = Prop.computed __type __id "self_link";
       service_account = Prop.computed __type __id "service_account";
       source_instance_template =
         Prop.computed __type __id "source_instance_template";
       tags = Prop.computed __type __id "tags";
       tags_fingerprint =
         Prop.computed __type __id "tags_fingerprint";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_from_template
        (google_compute_instance_from_template
           ?allow_stopping_for_update ?attached_disk ?can_ip_forward
           ?deletion_protection ?description ?desired_status
           ?enable_display ?guest_accelerator ?hostname ?id ?labels
           ?machine_type ?metadata ?metadata_startup_script
           ?min_cpu_platform ?project ?resource_policies
           ?scratch_disk ?service_account ?tags ?zone
           ~advanced_machine_features ~boot_disk
           ~confidential_instance_config ~network_interface
           ~network_performance_config ~params ~reservation_affinity
           ~scheduling ~shielded_instance_config ?timeouts ~name
           ~source_instance_template ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_stopping_for_update ?attached_disk
    ?can_ip_forward ?deletion_protection ?description ?desired_status
    ?enable_display ?guest_accelerator ?hostname ?id ?labels
    ?machine_type ?metadata ?metadata_startup_script
    ?min_cpu_platform ?project ?resource_policies ?scratch_disk
    ?service_account ?tags ?zone ?(advanced_machine_features = [])
    ?(boot_disk = []) ?(confidential_instance_config = [])
    ?(network_interface = []) ?(network_performance_config = [])
    ?(params = []) ?(reservation_affinity = []) ?(scheduling = [])
    ?(shielded_instance_config = []) ?timeouts ~name
    ~source_instance_template __id =
  let (r : _ Tf_core.resource) =
    make ?allow_stopping_for_update ?attached_disk ?can_ip_forward
      ?deletion_protection ?description ?desired_status
      ?enable_display ?guest_accelerator ?hostname ?id ?labels
      ?machine_type ?metadata ?metadata_startup_script
      ?min_cpu_platform ?project ?resource_policies ?scratch_disk
      ?service_account ?tags ?zone ~advanced_machine_features
      ~boot_disk ~confidential_instance_config ~network_interface
      ~network_performance_config ~params ~reservation_affinity
      ~scheduling ~shielded_instance_config ?timeouts ~name
      ~source_instance_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
