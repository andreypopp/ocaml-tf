(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string prop option; [@option]
  capacity_reservation_resource_group_arn : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       capacity_reservation_specification__capacity_reservation_target) ->
  ()

let yojson_of_capacity_reservation_specification__capacity_reservation_target
    =
  (function
   | {
       capacity_reservation_id = v_capacity_reservation_id;
       capacity_reservation_resource_group_arn =
         v_capacity_reservation_resource_group_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_capacity_reservation_resource_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "capacity_reservation_resource_group_arn", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_capacity_reservation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capacity_reservation_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity_reservation_specification__capacity_reservation_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_capacity_reservation_specification__capacity_reservation_target

[@@@deriving.end]

type capacity_reservation_specification = {
  capacity_reservation_preference : string prop option; [@option]
  capacity_reservation_target :
    capacity_reservation_specification__capacity_reservation_target
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity_reservation_specification) -> ()

let yojson_of_capacity_reservation_specification =
  (function
   | {
       capacity_reservation_preference =
         v_capacity_reservation_preference;
       capacity_reservation_target = v_capacity_reservation_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_capacity_reservation_target then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_capacity_reservation_specification__capacity_reservation_target)
               v_capacity_reservation_target
           in
           let bnd = "capacity_reservation_target", arg in
           bnd :: bnds
       in
       let bnds =
         match v_capacity_reservation_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capacity_reservation_preference", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity_reservation_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity_reservation_specification

[@@@deriving.end]

type cpu_options = {
  amd_sev_snp : string prop option; [@option]
  core_count : float prop option; [@option]
  threads_per_core : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cpu_options) -> ()

let yojson_of_cpu_options =
  (function
   | {
       amd_sev_snp = v_amd_sev_snp;
       core_count = v_core_count;
       threads_per_core = v_threads_per_core;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_core_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "core_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amd_sev_snp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amd_sev_snp", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cpu_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cpu_options

[@@@deriving.end]

type credit_specification = {
  cpu_credits : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : credit_specification) -> ()

let yojson_of_credit_specification =
  (function
   | { cpu_credits = v_cpu_credits } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cpu_credits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_credits", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : credit_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credit_specification

[@@@deriving.end]

type ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
  device_name : string prop;
  encrypted : bool prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  snapshot_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ebs_block_device) -> ()

let yojson_of_ebs_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       device_name = v_device_name;
       encrypted = v_encrypted;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       snapshot_id = v_snapshot_id;
       tags = v_tags;
       tags_all = v_tags_all;
       throughput = v_throughput;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       let bnds =
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ebs_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ebs_block_device

[@@@deriving.end]

type enclave_options = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : enclave_options) -> ()

let yojson_of_enclave_options =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : enclave_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enclave_options

[@@@deriving.end]

type ephemeral_block_device = {
  device_name : string prop;
  no_device : bool prop option; [@option]
  virtual_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ephemeral_block_device) -> ()

let yojson_of_ephemeral_block_device =
  (function
   | {
       device_name = v_device_name;
       no_device = v_no_device;
       virtual_name = v_virtual_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_virtual_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_device with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_device", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : ephemeral_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ephemeral_block_device

[@@@deriving.end]

type instance_market_options__spot_options = {
  instance_interruption_behavior : string prop option; [@option]
  max_price : string prop option; [@option]
  spot_instance_type : string prop option; [@option]
  valid_until : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_market_options__spot_options) -> ()

let yojson_of_instance_market_options__spot_options =
  (function
   | {
       instance_interruption_behavior =
         v_instance_interruption_behavior;
       max_price = v_max_price;
       spot_instance_type = v_spot_instance_type;
       valid_until = v_valid_until;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_valid_until with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "valid_until", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spot_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spot_instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_interruption_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_interruption_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_market_options__spot_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_market_options__spot_options

[@@@deriving.end]

type instance_market_options = {
  market_type : string prop option; [@option]
  spot_options : instance_market_options__spot_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_market_options) -> ()

let yojson_of_instance_market_options =
  (function
   | { market_type = v_market_type; spot_options = v_spot_options }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spot_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_market_options__spot_options)
               v_spot_options
           in
           let bnd = "spot_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_market_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "market_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_market_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_market_options

[@@@deriving.end]

type launch_template = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_template) -> ()

let yojson_of_launch_template =
  (function
   | { id = v_id; name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template

[@@@deriving.end]

type maintenance_options = {
  auto_recovery : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_options) -> ()

let yojson_of_maintenance_options =
  (function
   | { auto_recovery = v_auto_recovery } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_auto_recovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_recovery", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_options

[@@@deriving.end]

type metadata_options = {
  http_endpoint : string prop option; [@option]
  http_protocol_ipv6 : string prop option; [@option]
  http_put_response_hop_limit : float prop option; [@option]
  http_tokens : string prop option; [@option]
  instance_metadata_tags : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata_options) -> ()

let yojson_of_metadata_options =
  (function
   | {
       http_endpoint = v_http_endpoint;
       http_protocol_ipv6 = v_http_protocol_ipv6;
       http_put_response_hop_limit = v_http_put_response_hop_limit;
       http_tokens = v_http_tokens;
       instance_metadata_tags = v_instance_metadata_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_instance_metadata_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_metadata_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_tokens with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_tokens", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_put_response_hop_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_put_response_hop_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_protocol_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_protocol_ipv6", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_options

[@@@deriving.end]

type network_interface = {
  delete_on_termination : bool prop option; [@option]
  device_index : float prop;
  network_card_index : float prop option; [@option]
  network_interface_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       device_index = v_device_index;
       network_card_index = v_network_card_index;
       network_interface_id = v_network_interface_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         match v_network_card_index with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "network_card_index", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_device_index in
         ("device_index", arg) :: bnds
       in
       let bnds =
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface

[@@@deriving.end]

type private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop option; [@option]
  enable_resource_name_dns_aaaa_record : bool prop option; [@option]
  hostname_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_dns_name_options) -> ()

let yojson_of_private_dns_name_options =
  (function
   | {
       enable_resource_name_dns_a_record =
         v_enable_resource_name_dns_a_record;
       enable_resource_name_dns_aaaa_record =
         v_enable_resource_name_dns_aaaa_record;
       hostname_type = v_hostname_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_hostname_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_resource_name_dns_aaaa_record with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_resource_name_dns_aaaa_record", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_resource_name_dns_a_record with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_resource_name_dns_a_record", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : private_dns_name_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_dns_name_options

[@@@deriving.end]

type root_block_device = {
  delete_on_termination : bool prop option; [@option]
  encrypted : bool prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_block_device) -> ()

let yojson_of_root_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       encrypted = v_encrypted;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       tags = v_tags;
       tags_all = v_tags_all;
       throughput = v_throughput;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : root_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_block_device

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type aws_instance = {
  ami : string prop option; [@option]
  associate_public_ip_address : bool prop option; [@option]
  availability_zone : string prop option; [@option]
  cpu_core_count : float prop option; [@option]
  cpu_threads_per_core : float prop option; [@option]
  disable_api_stop : bool prop option; [@option]
  disable_api_termination : bool prop option; [@option]
  ebs_optimized : bool prop option; [@option]
  get_password_data : bool prop option; [@option]
  hibernation : bool prop option; [@option]
  host_id : string prop option; [@option]
  host_resource_group_arn : string prop option; [@option]
  iam_instance_profile : string prop option; [@option]
  id : string prop option; [@option]
  instance_initiated_shutdown_behavior : string prop option;
      [@option]
  instance_type : string prop option; [@option]
  ipv6_address_count : float prop option; [@option]
  ipv6_addresses : string prop list option; [@option]
  key_name : string prop option; [@option]
  monitoring : bool prop option; [@option]
  placement_group : string prop option; [@option]
  placement_partition_number : float prop option; [@option]
  private_ip : string prop option; [@option]
  secondary_private_ips : string prop list option; [@option]
  security_groups : string prop list option; [@option]
  source_dest_check : bool prop option; [@option]
  subnet_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  tenancy : string prop option; [@option]
  user_data : string prop option; [@option]
  user_data_base64 : string prop option; [@option]
  user_data_replace_on_change : bool prop option; [@option]
  volume_tags : string prop Tf_core.assoc option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  capacity_reservation_specification :
    capacity_reservation_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cpu_options : cpu_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  credit_specification : credit_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ebs_block_device : ebs_block_device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enclave_options : enclave_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_block_device : ephemeral_block_device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_market_options : instance_market_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_template : launch_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_options : maintenance_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metadata_options : metadata_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interface : network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  private_dns_name_options : private_dns_name_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  root_block_device : root_block_device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_instance) -> ()

let yojson_of_aws_instance =
  (function
   | {
       ami = v_ami;
       associate_public_ip_address = v_associate_public_ip_address;
       availability_zone = v_availability_zone;
       cpu_core_count = v_cpu_core_count;
       cpu_threads_per_core = v_cpu_threads_per_core;
       disable_api_stop = v_disable_api_stop;
       disable_api_termination = v_disable_api_termination;
       ebs_optimized = v_ebs_optimized;
       get_password_data = v_get_password_data;
       hibernation = v_hibernation;
       host_id = v_host_id;
       host_resource_group_arn = v_host_resource_group_arn;
       iam_instance_profile = v_iam_instance_profile;
       id = v_id;
       instance_initiated_shutdown_behavior =
         v_instance_initiated_shutdown_behavior;
       instance_type = v_instance_type;
       ipv6_address_count = v_ipv6_address_count;
       ipv6_addresses = v_ipv6_addresses;
       key_name = v_key_name;
       monitoring = v_monitoring;
       placement_group = v_placement_group;
       placement_partition_number = v_placement_partition_number;
       private_ip = v_private_ip;
       secondary_private_ips = v_secondary_private_ips;
       security_groups = v_security_groups;
       source_dest_check = v_source_dest_check;
       subnet_id = v_subnet_id;
       tags = v_tags;
       tags_all = v_tags_all;
       tenancy = v_tenancy;
       user_data = v_user_data;
       user_data_base64 = v_user_data_base64;
       user_data_replace_on_change = v_user_data_replace_on_change;
       volume_tags = v_volume_tags;
       vpc_security_group_ids = v_vpc_security_group_ids;
       capacity_reservation_specification =
         v_capacity_reservation_specification;
       cpu_options = v_cpu_options;
       credit_specification = v_credit_specification;
       ebs_block_device = v_ebs_block_device;
       enclave_options = v_enclave_options;
       ephemeral_block_device = v_ephemeral_block_device;
       instance_market_options = v_instance_market_options;
       launch_template = v_launch_template;
       maintenance_options = v_maintenance_options;
       metadata_options = v_metadata_options;
       network_interface = v_network_interface;
       private_dns_name_options = v_private_dns_name_options;
       root_block_device = v_root_block_device;
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
         if Stdlib.( = ) [] v_root_block_device then bnds
         else
           let arg =
             (yojson_of_list yojson_of_root_block_device)
               v_root_block_device
           in
           let bnd = "root_block_device", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_dns_name_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_dns_name_options)
               v_private_dns_name_options
           in
           let bnd = "private_dns_name_options", arg in
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
         if Stdlib.( = ) [] v_metadata_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata_options)
               v_metadata_options
           in
           let bnd = "metadata_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_options)
               v_maintenance_options
           in
           let bnd = "maintenance_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_launch_template)
               v_launch_template
           in
           let bnd = "launch_template", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_market_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_market_options)
               v_instance_market_options
           in
           let bnd = "instance_market_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ephemeral_block_device then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ephemeral_block_device)
               v_ephemeral_block_device
           in
           let bnd = "ephemeral_block_device", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_enclave_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_enclave_options)
               v_enclave_options
           in
           let bnd = "enclave_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_block_device then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ebs_block_device)
               v_ebs_block_device
           in
           let bnd = "ebs_block_device", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_credit_specification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_credit_specification)
               v_credit_specification
           in
           let bnd = "credit_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cpu_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cpu_options) v_cpu_options
           in
           let bnd = "cpu_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_capacity_reservation_specification then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_capacity_reservation_specification)
               v_capacity_reservation_specification
           in
           let bnd = "capacity_reservation_specification", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "volume_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_data_replace_on_change with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_data_replace_on_change", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_data_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tenancy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenancy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_dest_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "source_dest_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_private_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "secondary_private_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_placement_partition_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "placement_partition_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_placement_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "placement_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "monitoring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_address_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv6_address_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_initiated_shutdown_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_initiated_shutdown_behavior", arg in
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
         match v_iam_instance_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_instance_profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_resource_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_resource_group_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hibernation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hibernation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_get_password_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "get_password_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebs_optimized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ebs_optimized", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_api_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_api_termination", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_api_stop with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_api_stop", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_threads_per_core with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_threads_per_core", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_core_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_core_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_associate_public_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "associate_public_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ami with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ami", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_instance

[@@@deriving.end]

let capacity_reservation_specification__capacity_reservation_target
    ?capacity_reservation_id ?capacity_reservation_resource_group_arn
    () :
    capacity_reservation_specification__capacity_reservation_target =
  {
    capacity_reservation_id;
    capacity_reservation_resource_group_arn;
  }

let capacity_reservation_specification
    ?capacity_reservation_preference
    ?(capacity_reservation_target = []) () :
    capacity_reservation_specification =
  { capacity_reservation_preference; capacity_reservation_target }

let cpu_options ?amd_sev_snp ?core_count ?threads_per_core () :
    cpu_options =
  { amd_sev_snp; core_count; threads_per_core }

let credit_specification ?cpu_credits () : credit_specification =
  { cpu_credits }

let ebs_block_device ?delete_on_termination ?encrypted ?iops
    ?kms_key_id ?snapshot_id ?tags ?tags_all ?throughput ?volume_size
    ?volume_type ~device_name () : ebs_block_device =
  {
    delete_on_termination;
    device_name;
    encrypted;
    iops;
    kms_key_id;
    snapshot_id;
    tags;
    tags_all;
    throughput;
    volume_size;
    volume_type;
  }

let enclave_options ?enabled () : enclave_options = { enabled }

let ephemeral_block_device ?no_device ?virtual_name ~device_name () :
    ephemeral_block_device =
  { device_name; no_device; virtual_name }

let instance_market_options__spot_options
    ?instance_interruption_behavior ?max_price ?spot_instance_type
    ?valid_until () : instance_market_options__spot_options =
  {
    instance_interruption_behavior;
    max_price;
    spot_instance_type;
    valid_until;
  }

let instance_market_options ?market_type ?(spot_options = []) () :
    instance_market_options =
  { market_type; spot_options }

let launch_template ?id ?name ?version () : launch_template =
  { id; name; version }

let maintenance_options ?auto_recovery () : maintenance_options =
  { auto_recovery }

let metadata_options ?http_endpoint ?http_protocol_ipv6
    ?http_put_response_hop_limit ?http_tokens ?instance_metadata_tags
    () : metadata_options =
  {
    http_endpoint;
    http_protocol_ipv6;
    http_put_response_hop_limit;
    http_tokens;
    instance_metadata_tags;
  }

let network_interface ?delete_on_termination ?network_card_index
    ~device_index ~network_interface_id () : network_interface =
  {
    delete_on_termination;
    device_index;
    network_card_index;
    network_interface_id;
  }

let private_dns_name_options ?enable_resource_name_dns_a_record
    ?enable_resource_name_dns_aaaa_record ?hostname_type () :
    private_dns_name_options =
  {
    enable_resource_name_dns_a_record;
    enable_resource_name_dns_aaaa_record;
    hostname_type;
  }

let root_block_device ?delete_on_termination ?encrypted ?iops
    ?kms_key_id ?tags ?tags_all ?throughput ?volume_size ?volume_type
    () : root_block_device =
  {
    delete_on_termination;
    encrypted;
    iops;
    kms_key_id;
    tags;
    tags_all;
    throughput;
    volume_size;
    volume_type;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_instance ?ami ?associate_public_ip_address ?availability_zone
    ?cpu_core_count ?cpu_threads_per_core ?disable_api_stop
    ?disable_api_termination ?ebs_optimized ?get_password_data
    ?hibernation ?host_id ?host_resource_group_arn
    ?iam_instance_profile ?id ?instance_initiated_shutdown_behavior
    ?instance_type ?ipv6_address_count ?ipv6_addresses ?key_name
    ?monitoring ?placement_group ?placement_partition_number
    ?private_ip ?secondary_private_ips ?security_groups
    ?source_dest_check ?subnet_id ?tags ?tags_all ?tenancy ?user_data
    ?user_data_base64 ?user_data_replace_on_change ?volume_tags
    ?vpc_security_group_ids
    ?(capacity_reservation_specification = []) ?(cpu_options = [])
    ?(credit_specification = []) ?(enclave_options = [])
    ?(instance_market_options = []) ?(launch_template = [])
    ?(maintenance_options = []) ?(metadata_options = [])
    ?(private_dns_name_options = []) ?(root_block_device = [])
    ?timeouts ~ebs_block_device ~ephemeral_block_device
    ~network_interface () : aws_instance =
  {
    ami;
    associate_public_ip_address;
    availability_zone;
    cpu_core_count;
    cpu_threads_per_core;
    disable_api_stop;
    disable_api_termination;
    ebs_optimized;
    get_password_data;
    hibernation;
    host_id;
    host_resource_group_arn;
    iam_instance_profile;
    id;
    instance_initiated_shutdown_behavior;
    instance_type;
    ipv6_address_count;
    ipv6_addresses;
    key_name;
    monitoring;
    placement_group;
    placement_partition_number;
    private_ip;
    secondary_private_ips;
    security_groups;
    source_dest_check;
    subnet_id;
    tags;
    tags_all;
    tenancy;
    user_data;
    user_data_base64;
    user_data_replace_on_change;
    volume_tags;
    vpc_security_group_ids;
    capacity_reservation_specification;
    cpu_options;
    credit_specification;
    ebs_block_device;
    enclave_options;
    ephemeral_block_device;
    instance_market_options;
    launch_template;
    maintenance_options;
    metadata_options;
    network_interface;
    private_dns_name_options;
    root_block_device;
    timeouts;
  }

type t = {
  tf_name : string;
  ami : string prop;
  arn : string prop;
  associate_public_ip_address : bool prop;
  availability_zone : string prop;
  cpu_core_count : float prop;
  cpu_threads_per_core : float prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_optimized : bool prop;
  get_password_data : bool prop;
  hibernation : bool prop;
  host_id : string prop;
  host_resource_group_arn : string prop;
  iam_instance_profile : string prop;
  id : string prop;
  instance_initiated_shutdown_behavior : string prop;
  instance_lifecycle : string prop;
  instance_state : string prop;
  instance_type : string prop;
  ipv6_address_count : float prop;
  ipv6_addresses : string list prop;
  key_name : string prop;
  monitoring : bool prop;
  outpost_arn : string prop;
  password_data : string prop;
  placement_group : string prop;
  placement_partition_number : float prop;
  primary_network_interface_id : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  secondary_private_ips : string list prop;
  security_groups : string list prop;
  source_dest_check : bool prop;
  spot_instance_request_id : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tenancy : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
  user_data_replace_on_change : bool prop;
  volume_tags : string Tf_core.assoc prop;
  vpc_security_group_ids : string list prop;
}

let make ?ami ?associate_public_ip_address ?availability_zone
    ?cpu_core_count ?cpu_threads_per_core ?disable_api_stop
    ?disable_api_termination ?ebs_optimized ?get_password_data
    ?hibernation ?host_id ?host_resource_group_arn
    ?iam_instance_profile ?id ?instance_initiated_shutdown_behavior
    ?instance_type ?ipv6_address_count ?ipv6_addresses ?key_name
    ?monitoring ?placement_group ?placement_partition_number
    ?private_ip ?secondary_private_ips ?security_groups
    ?source_dest_check ?subnet_id ?tags ?tags_all ?tenancy ?user_data
    ?user_data_base64 ?user_data_replace_on_change ?volume_tags
    ?vpc_security_group_ids
    ?(capacity_reservation_specification = []) ?(cpu_options = [])
    ?(credit_specification = []) ?(enclave_options = [])
    ?(instance_market_options = []) ?(launch_template = [])
    ?(maintenance_options = []) ?(metadata_options = [])
    ?(private_dns_name_options = []) ?(root_block_device = [])
    ?timeouts ~ebs_block_device ~ephemeral_block_device
    ~network_interface __id =
  let __type = "aws_instance" in
  let __attrs =
    ({
       tf_name = __id;
       ami = Prop.computed __type __id "ami";
       arn = Prop.computed __type __id "arn";
       associate_public_ip_address =
         Prop.computed __type __id "associate_public_ip_address";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       cpu_core_count = Prop.computed __type __id "cpu_core_count";
       cpu_threads_per_core =
         Prop.computed __type __id "cpu_threads_per_core";
       disable_api_stop =
         Prop.computed __type __id "disable_api_stop";
       disable_api_termination =
         Prop.computed __type __id "disable_api_termination";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       get_password_data =
         Prop.computed __type __id "get_password_data";
       hibernation = Prop.computed __type __id "hibernation";
       host_id = Prop.computed __type __id "host_id";
       host_resource_group_arn =
         Prop.computed __type __id "host_resource_group_arn";
       iam_instance_profile =
         Prop.computed __type __id "iam_instance_profile";
       id = Prop.computed __type __id "id";
       instance_initiated_shutdown_behavior =
         Prop.computed __type __id
           "instance_initiated_shutdown_behavior";
       instance_lifecycle =
         Prop.computed __type __id "instance_lifecycle";
       instance_state = Prop.computed __type __id "instance_state";
       instance_type = Prop.computed __type __id "instance_type";
       ipv6_address_count =
         Prop.computed __type __id "ipv6_address_count";
       ipv6_addresses = Prop.computed __type __id "ipv6_addresses";
       key_name = Prop.computed __type __id "key_name";
       monitoring = Prop.computed __type __id "monitoring";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       password_data = Prop.computed __type __id "password_data";
       placement_group = Prop.computed __type __id "placement_group";
       placement_partition_number =
         Prop.computed __type __id "placement_partition_number";
       primary_network_interface_id =
         Prop.computed __type __id "primary_network_interface_id";
       private_dns = Prop.computed __type __id "private_dns";
       private_ip = Prop.computed __type __id "private_ip";
       public_dns = Prop.computed __type __id "public_dns";
       public_ip = Prop.computed __type __id "public_ip";
       secondary_private_ips =
         Prop.computed __type __id "secondary_private_ips";
       security_groups = Prop.computed __type __id "security_groups";
       source_dest_check =
         Prop.computed __type __id "source_dest_check";
       spot_instance_request_id =
         Prop.computed __type __id "spot_instance_request_id";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tenancy = Prop.computed __type __id "tenancy";
       user_data = Prop.computed __type __id "user_data";
       user_data_base64 =
         Prop.computed __type __id "user_data_base64";
       user_data_replace_on_change =
         Prop.computed __type __id "user_data_replace_on_change";
       volume_tags = Prop.computed __type __id "volume_tags";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_instance
        (aws_instance ?ami ?associate_public_ip_address
           ?availability_zone ?cpu_core_count ?cpu_threads_per_core
           ?disable_api_stop ?disable_api_termination ?ebs_optimized
           ?get_password_data ?hibernation ?host_id
           ?host_resource_group_arn ?iam_instance_profile ?id
           ?instance_initiated_shutdown_behavior ?instance_type
           ?ipv6_address_count ?ipv6_addresses ?key_name ?monitoring
           ?placement_group ?placement_partition_number ?private_ip
           ?secondary_private_ips ?security_groups ?source_dest_check
           ?subnet_id ?tags ?tags_all ?tenancy ?user_data
           ?user_data_base64 ?user_data_replace_on_change
           ?volume_tags ?vpc_security_group_ids
           ~capacity_reservation_specification ~cpu_options
           ~credit_specification ~enclave_options
           ~instance_market_options ~launch_template
           ~maintenance_options ~metadata_options
           ~private_dns_name_options ~root_block_device ?timeouts
           ~ebs_block_device ~ephemeral_block_device
           ~network_interface ());
    attrs = __attrs;
  }

let register ?tf_module ?ami ?associate_public_ip_address
    ?availability_zone ?cpu_core_count ?cpu_threads_per_core
    ?disable_api_stop ?disable_api_termination ?ebs_optimized
    ?get_password_data ?hibernation ?host_id ?host_resource_group_arn
    ?iam_instance_profile ?id ?instance_initiated_shutdown_behavior
    ?instance_type ?ipv6_address_count ?ipv6_addresses ?key_name
    ?monitoring ?placement_group ?placement_partition_number
    ?private_ip ?secondary_private_ips ?security_groups
    ?source_dest_check ?subnet_id ?tags ?tags_all ?tenancy ?user_data
    ?user_data_base64 ?user_data_replace_on_change ?volume_tags
    ?vpc_security_group_ids
    ?(capacity_reservation_specification = []) ?(cpu_options = [])
    ?(credit_specification = []) ?(enclave_options = [])
    ?(instance_market_options = []) ?(launch_template = [])
    ?(maintenance_options = []) ?(metadata_options = [])
    ?(private_dns_name_options = []) ?(root_block_device = [])
    ?timeouts ~ebs_block_device ~ephemeral_block_device
    ~network_interface __id =
  let (r : _ Tf_core.resource) =
    make ?ami ?associate_public_ip_address ?availability_zone
      ?cpu_core_count ?cpu_threads_per_core ?disable_api_stop
      ?disable_api_termination ?ebs_optimized ?get_password_data
      ?hibernation ?host_id ?host_resource_group_arn
      ?iam_instance_profile ?id ?instance_initiated_shutdown_behavior
      ?instance_type ?ipv6_address_count ?ipv6_addresses ?key_name
      ?monitoring ?placement_group ?placement_partition_number
      ?private_ip ?secondary_private_ips ?security_groups
      ?source_dest_check ?subnet_id ?tags ?tags_all ?tenancy
      ?user_data ?user_data_base64 ?user_data_replace_on_change
      ?volume_tags ?vpc_security_group_ids
      ~capacity_reservation_specification ~cpu_options
      ~credit_specification ~enclave_options ~instance_market_options
      ~launch_template ~maintenance_options ~metadata_options
      ~private_dns_name_options ~root_block_device ?timeouts
      ~ebs_block_device ~ephemeral_block_device ~network_interface
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
