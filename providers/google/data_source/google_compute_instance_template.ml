(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_machine_features = {
  enable_nested_virtualization : bool prop;
  threads_per_core : float prop;
  visible_core_count : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_visible_core_count
         in
         ("visible_core_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_threads_per_core
         in
         ("threads_per_core", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_nested_virtualization
         in
         ("enable_nested_virtualization", arg) :: bnds
       in
       `Assoc bnds
    : advanced_machine_features -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_machine_features

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

type disk__source_snapshot_encryption_key = {
  kms_key_self_link : string prop;
  kms_key_service_account : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_service_account
         in
         ("kms_key_service_account", arg) :: bnds
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

type disk__source_image_encryption_key = {
  kms_key_self_link : string prop;
  kms_key_service_account : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_kms_key_service_account
         in
         ("kms_key_service_account", arg) :: bnds
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

type disk = {
  auto_delete : bool prop;
  boot : bool prop;
  device_name : string prop;
  disk_encryption_key : disk__disk_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disk_name : string prop;
  disk_size_gb : float prop;
  disk_type : string prop;
  interface : string prop;
  labels : (string * string prop) list;
  mode : string prop;
  provisioned_iops : float prop;
  resource_manager_tags : (string * string prop) list;
  resource_policies : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source : string prop;
  source_image : string prop;
  source_image_encryption_key :
    disk__source_image_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_snapshot : string prop;
  source_snapshot_encryption_key :
    disk__source_snapshot_encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk) -> ()

let yojson_of_disk =
  (function
   | {
       auto_delete = v_auto_delete;
       boot = v_boot;
       device_name = v_device_name;
       disk_encryption_key = v_disk_encryption_key;
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
       source_image_encryption_key = v_source_image_encryption_key;
       source_snapshot = v_source_snapshot;
       source_snapshot_encryption_key =
         v_source_snapshot_encryption_key;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_source_snapshot
         in
         ("source_snapshot", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_source_image in
         ("source_image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_policies then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_resource_policies
           in
           let bnd = "resource_policies", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_resource_manager_tags
         in
         ("resource_manager_tags", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_provisioned_iops
         in
         ("provisioned_iops", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interface in
         ("interface", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_type in
         ("disk_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_name in
         ("disk_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_boot in
         ("boot", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_delete in
         ("auto_delete", arg) :: bnds
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

type network_interface__ipv6_access_config = {
  external_ipv6 : string prop;
  external_ipv6_prefix_length : string prop;
  name : string prop;
  network_tier : string prop;
  public_ptr_domain_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_external_ipv6_prefix_length
         in
         ("external_ipv6_prefix_length", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_external_ipv6 in
         ("external_ipv6", arg) :: bnds
       in
       `Assoc bnds
    : network_interface__ipv6_access_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface__ipv6_access_config

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

type network_interface = {
  access_config : network_interface__access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  alias_ip_range : network_interface__alias_ip_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  internal_ipv6_prefix_length : float prop;
  ipv6_access_config : network_interface__ipv6_access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ipv6_access_type : string prop;
  ipv6_address : string prop;
  name : string prop;
  network : string prop;
  network_ip : string prop;
  nic_type : string prop;
  queue_count : float prop;
  stack_type : string prop;
  subnetwork : string prop;
  subnetwork_project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | {
       access_config = v_access_config;
       alias_ip_range = v_alias_ip_range;
       internal_ipv6_prefix_length = v_internal_ipv6_prefix_length;
       ipv6_access_config = v_ipv6_access_config;
       ipv6_access_type = v_ipv6_access_type;
       ipv6_address = v_ipv6_address;
       name = v_name;
       network = v_network;
       network_ip = v_network_ip;
       nic_type = v_nic_type;
       queue_count = v_queue_count;
       stack_type = v_stack_type;
       subnetwork = v_subnetwork;
       subnetwork_project = v_subnetwork_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subnetwork_project
         in
         ("subnetwork_project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnetwork in
         ("subnetwork", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_type in
         ("stack_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_queue_count in
         ("queue_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_nic_type in
         ("nic_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_ip in
         ("network_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv6_address in
         ("ipv6_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipv6_access_type
         in
         ("ipv6_access_type", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float
             v_internal_ipv6_prefix_length
         in
         ("internal_ipv6_prefix_length", arg) :: bnds
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
  specific_reservation :
    reservation_affinity__specific_reservation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reservation_affinity) -> ()

let yojson_of_reservation_affinity =
  (function
   | {
       specific_reservation = v_specific_reservation;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
       `Assoc bnds
    : reservation_affinity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reservation_affinity

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

type scheduling__local_ssd_recovery_timeout = {
  nanos : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_nanos in
         ("nanos", arg) :: bnds
       in
       `Assoc bnds
    : scheduling__local_ssd_recovery_timeout ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling__local_ssd_recovery_timeout

[@@@deriving.end]

type scheduling = {
  automatic_restart : bool prop;
  instance_termination_action : string prop;
  local_ssd_recovery_timeout :
    scheduling__local_ssd_recovery_timeout list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  min_node_cpus : float prop;
  node_affinities : scheduling__node_affinities list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  on_host_maintenance : string prop;
  preemptible : bool prop;
  provisioning_model : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduling) -> ()

let yojson_of_scheduling =
  (function
   | {
       automatic_restart = v_automatic_restart;
       instance_termination_action = v_instance_termination_action;
       local_ssd_recovery_timeout = v_local_ssd_recovery_timeout;
       min_node_cpus = v_min_node_cpus;
       node_affinities = v_node_affinities;
       on_host_maintenance = v_on_host_maintenance;
       preemptible = v_preemptible;
       provisioning_model = v_provisioning_model;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_provisioning_model
         in
         ("provisioning_model", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_preemptible in
         ("preemptible", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_on_host_maintenance
         in
         ("on_host_maintenance", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_min_node_cpus in
         ("min_node_cpus", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_instance_termination_action
         in
         ("instance_termination_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_automatic_restart
         in
         ("automatic_restart", arg) :: bnds
       in
       `Assoc bnds
    : scheduling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling

[@@@deriving.end]

type service_account = {
  email : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : service_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_account

[@@@deriving.end]

type shielded_instance_config = {
  enable_integrity_monitoring : bool prop;
  enable_secure_boot : bool prop;
  enable_vtpm : bool prop;
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
         let arg = yojson_of_prop yojson_of_bool v_enable_vtpm in
         ("enable_vtpm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_secure_boot
         in
         ("enable_secure_boot", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_integrity_monitoring
         in
         ("enable_integrity_monitoring", arg) :: bnds
       in
       `Assoc bnds
    : shielded_instance_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shielded_instance_config

[@@@deriving.end]

type google_compute_instance_template = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  self_link_unique : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_instance_template) -> ()

let yojson_of_google_compute_instance_template =
  (function
   | {
       filter = v_filter;
       id = v_id;
       most_recent = v_most_recent;
       name = v_name;
       project = v_project;
       self_link_unique = v_self_link_unique;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_self_link_unique with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "self_link_unique", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
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
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_instance_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_instance_template

[@@@deriving.end]

let google_compute_instance_template ?filter ?id ?most_recent ?name
    ?project ?self_link_unique () : google_compute_instance_template
    =
  { filter; id; most_recent; name; project; self_link_unique }

type t = {
  tf_name : string;
  advanced_machine_features : advanced_machine_features list prop;
  can_ip_forward : bool prop;
  confidential_instance_config :
    confidential_instance_config list prop;
  description : string prop;
  disk : disk list prop;
  effective_labels : (string * string) list prop;
  filter : string prop;
  guest_accelerator : guest_accelerator list prop;
  id : string prop;
  instance_description : string prop;
  labels : (string * string) list prop;
  machine_type : string prop;
  metadata : (string * string) list prop;
  metadata_fingerprint : string prop;
  metadata_startup_script : string prop;
  min_cpu_platform : string prop;
  most_recent : bool prop;
  name : string prop;
  name_prefix : string prop;
  network_interface : network_interface list prop;
  network_performance_config : network_performance_config list prop;
  project : string prop;
  region : string prop;
  reservation_affinity : reservation_affinity list prop;
  resource_manager_tags : (string * string) list prop;
  resource_policies : string list prop;
  scheduling : scheduling list prop;
  self_link : string prop;
  self_link_unique : string prop;
  service_account : service_account list prop;
  shielded_instance_config : shielded_instance_config list prop;
  tags : string list prop;
  tags_fingerprint : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?filter ?id ?most_recent ?name ?project ?self_link_unique
    __id =
  let __type = "google_compute_instance_template" in
  let __attrs =
    ({
       tf_name = __id;
       advanced_machine_features =
         Prop.computed __type __id "advanced_machine_features";
       can_ip_forward = Prop.computed __type __id "can_ip_forward";
       confidential_instance_config =
         Prop.computed __type __id "confidential_instance_config";
       description = Prop.computed __type __id "description";
       disk = Prop.computed __type __id "disk";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       filter = Prop.computed __type __id "filter";
       guest_accelerator =
         Prop.computed __type __id "guest_accelerator";
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
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       network_interface =
         Prop.computed __type __id "network_interface";
       network_performance_config =
         Prop.computed __type __id "network_performance_config";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       reservation_affinity =
         Prop.computed __type __id "reservation_affinity";
       resource_manager_tags =
         Prop.computed __type __id "resource_manager_tags";
       resource_policies =
         Prop.computed __type __id "resource_policies";
       scheduling = Prop.computed __type __id "scheduling";
       self_link = Prop.computed __type __id "self_link";
       self_link_unique =
         Prop.computed __type __id "self_link_unique";
       service_account = Prop.computed __type __id "service_account";
       shielded_instance_config =
         Prop.computed __type __id "shielded_instance_config";
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
        (google_compute_instance_template ?filter ?id ?most_recent
           ?name ?project ?self_link_unique ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id ?most_recent ?name ?project
    ?self_link_unique __id =
  let (r : _ Tf_core.resource) =
    make ?filter ?id ?most_recent ?name ?project ?self_link_unique
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
