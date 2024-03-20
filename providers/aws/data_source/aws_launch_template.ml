(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type block_device_mappings__ebs = {
  delete_on_termination : string prop;
  encrypted : string prop;
  iops : float prop;
  kms_key_id : string prop;
  snapshot_id : string prop;
  throughput : float prop;
  volume_size : float prop;
  volume_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : block_device_mappings__ebs) -> ()

let yojson_of_block_device_mappings__ebs =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       encrypted = v_encrypted;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       snapshot_id = v_snapshot_id;
       throughput = v_throughput;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_type in
         ("volume_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_volume_size in
         ("volume_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_throughput in
         ("throughput", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_snapshot_id in
         ("snapshot_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_iops in
         ("iops", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delete_on_termination
         in
         ("delete_on_termination", arg) :: bnds
       in
       `Assoc bnds
    : block_device_mappings__ebs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_block_device_mappings__ebs

[@@@deriving.end]

type block_device_mappings = {
  device_name : string prop;
  ebs : block_device_mappings__ebs list;
  no_device : string prop;
  virtual_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : block_device_mappings) -> ()

let yojson_of_block_device_mappings =
  (function
   | {
       device_name = v_device_name;
       ebs = v_ebs;
       no_device = v_no_device;
       virtual_name = v_virtual_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_name in
         ("virtual_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_no_device in
         ("no_device", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_block_device_mappings__ebs v_ebs
         in
         ("ebs", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : block_device_mappings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_block_device_mappings

[@@@deriving.end]

type capacity_reservation_specification__capacity_reservation_target = {
  capacity_reservation_id : string prop;
  capacity_reservation_resource_group_arn : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_capacity_reservation_resource_group_arn
         in
         ("capacity_reservation_resource_group_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_capacity_reservation_id
         in
         ("capacity_reservation_id", arg) :: bnds
       in
       `Assoc bnds
    : capacity_reservation_specification__capacity_reservation_target ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_capacity_reservation_specification__capacity_reservation_target

[@@@deriving.end]

type capacity_reservation_specification = {
  capacity_reservation_preference : string prop;
  capacity_reservation_target :
    capacity_reservation_specification__capacity_reservation_target
    list;
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
         let arg =
           yojson_of_list
             yojson_of_capacity_reservation_specification__capacity_reservation_target
             v_capacity_reservation_target
         in
         ("capacity_reservation_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_capacity_reservation_preference
         in
         ("capacity_reservation_preference", arg) :: bnds
       in
       `Assoc bnds
    : capacity_reservation_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity_reservation_specification

[@@@deriving.end]

type cpu_options = {
  amd_sev_snp : string prop;
  core_count : float prop;
  threads_per_core : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_threads_per_core
         in
         ("threads_per_core", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_core_count in
         ("core_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_amd_sev_snp in
         ("amd_sev_snp", arg) :: bnds
       in
       `Assoc bnds
    : cpu_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cpu_options

[@@@deriving.end]

type credit_specification = { cpu_credits : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : credit_specification) -> ()

let yojson_of_credit_specification =
  (function
   | { cpu_credits = v_cpu_credits } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cpu_credits in
         ("cpu_credits", arg) :: bnds
       in
       `Assoc bnds
    : credit_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credit_specification

[@@@deriving.end]

type elastic_gpu_specifications = {
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elastic_gpu_specifications) -> ()

let yojson_of_elastic_gpu_specifications =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : elastic_gpu_specifications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elastic_gpu_specifications

[@@@deriving.end]

type elastic_inference_accelerator = {
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elastic_inference_accelerator) -> ()

let yojson_of_elastic_inference_accelerator =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : elastic_inference_accelerator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elastic_inference_accelerator

[@@@deriving.end]

type enclave_options = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : enclave_options) -> ()

let yojson_of_enclave_options =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : enclave_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enclave_options

[@@@deriving.end]

type hibernation_options = { configured : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : hibernation_options) -> ()

let yojson_of_hibernation_options =
  (function
   | { configured = v_configured } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_configured in
         ("configured", arg) :: bnds
       in
       `Assoc bnds
    : hibernation_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hibernation_options

[@@@deriving.end]

type iam_instance_profile = { arn : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : iam_instance_profile) -> ()

let yojson_of_iam_instance_profile =
  (function
   | { arn = v_arn; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : iam_instance_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_iam_instance_profile

[@@@deriving.end]

type instance_market_options__spot_options = {
  block_duration_minutes : float prop;
  instance_interruption_behavior : string prop;
  max_price : string prop;
  spot_instance_type : string prop;
  valid_until : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_market_options__spot_options) -> ()

let yojson_of_instance_market_options__spot_options =
  (function
   | {
       block_duration_minutes = v_block_duration_minutes;
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
         let arg = yojson_of_prop yojson_of_string v_valid_until in
         ("valid_until", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spot_instance_type
         in
         ("spot_instance_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_price in
         ("max_price", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_instance_interruption_behavior
         in
         ("instance_interruption_behavior", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_block_duration_minutes
         in
         ("block_duration_minutes", arg) :: bnds
       in
       `Assoc bnds
    : instance_market_options__spot_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_market_options__spot_options

[@@@deriving.end]

type instance_market_options = {
  market_type : string prop;
  spot_options : instance_market_options__spot_options list;
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
         let arg =
           yojson_of_list
             yojson_of_instance_market_options__spot_options
             v_spot_options
         in
         ("spot_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_market_type in
         ("market_type", arg) :: bnds
       in
       `Assoc bnds
    : instance_market_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_market_options

[@@@deriving.end]

type instance_requirements__vcpu_count = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_requirements__vcpu_count) -> ()

let yojson_of_instance_requirements__vcpu_count =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__vcpu_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__vcpu_count

[@@@deriving.end]

type instance_requirements__total_local_storage_gb = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_requirements__total_local_storage_gb) -> ()

let yojson_of_instance_requirements__total_local_storage_gb =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__total_local_storage_gb ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__total_local_storage_gb

[@@@deriving.end]

type instance_requirements__network_interface_count = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : instance_requirements__network_interface_count) -> ()

let yojson_of_instance_requirements__network_interface_count =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__network_interface_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__network_interface_count

[@@@deriving.end]

type instance_requirements__network_bandwidth_gbps = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_requirements__network_bandwidth_gbps) -> ()

let yojson_of_instance_requirements__network_bandwidth_gbps =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__network_bandwidth_gbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__network_bandwidth_gbps

[@@@deriving.end]

type instance_requirements__memory_mib = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_requirements__memory_mib) -> ()

let yojson_of_instance_requirements__memory_mib =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__memory_mib

[@@@deriving.end]

type instance_requirements__memory_gib_per_vcpu = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_requirements__memory_gib_per_vcpu) -> ()

let yojson_of_instance_requirements__memory_gib_per_vcpu =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__memory_gib_per_vcpu ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__memory_gib_per_vcpu

[@@@deriving.end]

type instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : instance_requirements__baseline_ebs_bandwidth_mbps) -> ()

let yojson_of_instance_requirements__baseline_ebs_bandwidth_mbps =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__baseline_ebs_bandwidth_mbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__baseline_ebs_bandwidth_mbps

[@@@deriving.end]

type instance_requirements__accelerator_total_memory_mib = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : instance_requirements__accelerator_total_memory_mib) -> ()

let yojson_of_instance_requirements__accelerator_total_memory_mib =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__accelerator_total_memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__accelerator_total_memory_mib

[@@@deriving.end]

type instance_requirements__accelerator_count = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_requirements__accelerator_count) -> ()

let yojson_of_instance_requirements__accelerator_count =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements__accelerator_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__accelerator_count

[@@@deriving.end]

type instance_requirements = {
  accelerator_count : instance_requirements__accelerator_count list;
  accelerator_manufacturers : string prop list;
  accelerator_names : string prop list;
  accelerator_total_memory_mib :
    instance_requirements__accelerator_total_memory_mib list;
  accelerator_types : string prop list;
  allowed_instance_types : string prop list;
  bare_metal : string prop;
  baseline_ebs_bandwidth_mbps :
    instance_requirements__baseline_ebs_bandwidth_mbps list;
  burstable_performance : string prop;
  cpu_manufacturers : string prop list;
  excluded_instance_types : string prop list;
  instance_generations : string prop list;
  local_storage : string prop;
  local_storage_types : string prop list;
  memory_gib_per_vcpu :
    instance_requirements__memory_gib_per_vcpu list;
  memory_mib : instance_requirements__memory_mib list;
  network_bandwidth_gbps :
    instance_requirements__network_bandwidth_gbps list;
  network_interface_count :
    instance_requirements__network_interface_count list;
  on_demand_max_price_percentage_over_lowest_price : float prop;
  require_hibernate_support : bool prop;
  spot_max_price_percentage_over_lowest_price : float prop;
  total_local_storage_gb :
    instance_requirements__total_local_storage_gb list;
  vcpu_count : instance_requirements__vcpu_count list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_requirements) -> ()

let yojson_of_instance_requirements =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_manufacturers = v_accelerator_manufacturers;
       accelerator_names = v_accelerator_names;
       accelerator_total_memory_mib = v_accelerator_total_memory_mib;
       accelerator_types = v_accelerator_types;
       allowed_instance_types = v_allowed_instance_types;
       bare_metal = v_bare_metal;
       baseline_ebs_bandwidth_mbps = v_baseline_ebs_bandwidth_mbps;
       burstable_performance = v_burstable_performance;
       cpu_manufacturers = v_cpu_manufacturers;
       excluded_instance_types = v_excluded_instance_types;
       instance_generations = v_instance_generations;
       local_storage = v_local_storage;
       local_storage_types = v_local_storage_types;
       memory_gib_per_vcpu = v_memory_gib_per_vcpu;
       memory_mib = v_memory_mib;
       network_bandwidth_gbps = v_network_bandwidth_gbps;
       network_interface_count = v_network_interface_count;
       on_demand_max_price_percentage_over_lowest_price =
         v_on_demand_max_price_percentage_over_lowest_price;
       require_hibernate_support = v_require_hibernate_support;
       spot_max_price_percentage_over_lowest_price =
         v_spot_max_price_percentage_over_lowest_price;
       total_local_storage_gb = v_total_local_storage_gb;
       vcpu_count = v_vcpu_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_instance_requirements__vcpu_count
             v_vcpu_count
         in
         ("vcpu_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_instance_requirements__total_local_storage_gb
             v_total_local_storage_gb
         in
         ("total_local_storage_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_spot_max_price_percentage_over_lowest_price
         in
         ("spot_max_price_percentage_over_lowest_price", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_require_hibernate_support
         in
         ("require_hibernate_support", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_on_demand_max_price_percentage_over_lowest_price
         in
         ("on_demand_max_price_percentage_over_lowest_price", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_instance_requirements__network_interface_count
             v_network_interface_count
         in
         ("network_interface_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_instance_requirements__network_bandwidth_gbps
             v_network_bandwidth_gbps
         in
         ("network_bandwidth_gbps", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_instance_requirements__memory_mib
             v_memory_mib
         in
         ("memory_mib", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_instance_requirements__memory_gib_per_vcpu
             v_memory_gib_per_vcpu
         in
         ("memory_gib_per_vcpu", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_local_storage_types
         in
         ("local_storage_types", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_local_storage in
         ("local_storage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_instance_generations
         in
         ("instance_generations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_excluded_instance_types
         in
         ("excluded_instance_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_cpu_manufacturers
         in
         ("cpu_manufacturers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_burstable_performance
         in
         ("burstable_performance", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_instance_requirements__baseline_ebs_bandwidth_mbps
             v_baseline_ebs_bandwidth_mbps
         in
         ("baseline_ebs_bandwidth_mbps", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bare_metal in
         ("bare_metal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_instance_types
         in
         ("allowed_instance_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_accelerator_types
         in
         ("accelerator_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_instance_requirements__accelerator_total_memory_mib
             v_accelerator_total_memory_mib
         in
         ("accelerator_total_memory_mib", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_accelerator_names
         in
         ("accelerator_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_accelerator_manufacturers
         in
         ("accelerator_manufacturers", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_instance_requirements__accelerator_count
             v_accelerator_count
         in
         ("accelerator_count", arg) :: bnds
       in
       `Assoc bnds
    : instance_requirements -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements

[@@@deriving.end]

type license_specification = {
  license_configuration_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : license_specification) -> ()

let yojson_of_license_specification =
  (function
   | { license_configuration_arn = v_license_configuration_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_license_configuration_arn
         in
         ("license_configuration_arn", arg) :: bnds
       in
       `Assoc bnds
    : license_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_license_specification

[@@@deriving.end]

type maintenance_options = { auto_recovery : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_options) -> ()

let yojson_of_maintenance_options =
  (function
   | { auto_recovery = v_auto_recovery } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auto_recovery in
         ("auto_recovery", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_options

[@@@deriving.end]

type metadata_options = {
  http_endpoint : string prop;
  http_protocol_ipv6 : string prop;
  http_put_response_hop_limit : float prop;
  http_tokens : string prop;
  instance_metadata_tags : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_instance_metadata_tags
         in
         ("instance_metadata_tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_tokens in
         ("http_tokens", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_http_put_response_hop_limit
         in
         ("http_put_response_hop_limit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_http_protocol_ipv6
         in
         ("http_protocol_ipv6", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_endpoint in
         ("http_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : metadata_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_options

[@@@deriving.end]

type monitoring = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring) -> ()

let yojson_of_monitoring =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : monitoring -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring

[@@@deriving.end]

type network_interfaces = {
  associate_carrier_ip_address : string prop;
  associate_public_ip_address : string prop;
  delete_on_termination : string prop;
  description : string prop;
  device_index : float prop;
  interface_type : string prop;
  ipv4_address_count : float prop;
  ipv4_addresses : string prop list;
  ipv4_prefix_count : float prop;
  ipv4_prefixes : string prop list;
  ipv6_address_count : float prop;
  ipv6_addresses : string prop list;
  ipv6_prefix_count : float prop;
  ipv6_prefixes : string prop list;
  network_card_index : float prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  security_groups : string prop list;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interfaces) -> ()

let yojson_of_network_interfaces =
  (function
   | {
       associate_carrier_ip_address = v_associate_carrier_ip_address;
       associate_public_ip_address = v_associate_public_ip_address;
       delete_on_termination = v_delete_on_termination;
       description = v_description;
       device_index = v_device_index;
       interface_type = v_interface_type;
       ipv4_address_count = v_ipv4_address_count;
       ipv4_addresses = v_ipv4_addresses;
       ipv4_prefix_count = v_ipv4_prefix_count;
       ipv4_prefixes = v_ipv4_prefixes;
       ipv6_address_count = v_ipv6_address_count;
       ipv6_addresses = v_ipv6_addresses;
       ipv6_prefix_count = v_ipv6_prefix_count;
       ipv6_prefixes = v_ipv6_prefixes;
       network_card_index = v_network_card_index;
       network_interface_id = v_network_interface_id;
       private_ip_address = v_private_ip_address;
       security_groups = v_security_groups;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_groups
         in
         ("security_groups", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_network_card_index
         in
         ("network_card_index", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ipv6_prefixes
         in
         ("ipv6_prefixes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_ipv6_prefix_count
         in
         ("ipv6_prefix_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ipv6_addresses
         in
         ("ipv6_addresses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_ipv6_address_count
         in
         ("ipv6_address_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ipv4_prefixes
         in
         ("ipv4_prefixes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_ipv4_prefix_count
         in
         ("ipv4_prefix_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ipv4_addresses
         in
         ("ipv4_addresses", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_ipv4_address_count
         in
         ("ipv4_address_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_interface_type
         in
         ("interface_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_device_index in
         ("device_index", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delete_on_termination
         in
         ("delete_on_termination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_associate_public_ip_address
         in
         ("associate_public_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_associate_carrier_ip_address
         in
         ("associate_carrier_ip_address", arg) :: bnds
       in
       `Assoc bnds
    : network_interfaces -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interfaces

[@@@deriving.end]

type placement = {
  affinity : string prop;
  availability_zone : string prop;
  group_name : string prop;
  host_id : string prop;
  host_resource_group_arn : string prop;
  partition_number : float prop;
  spread_domain : string prop;
  tenancy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement) -> ()

let yojson_of_placement =
  (function
   | {
       affinity = v_affinity;
       availability_zone = v_availability_zone;
       group_name = v_group_name;
       host_id = v_host_id;
       host_resource_group_arn = v_host_resource_group_arn;
       partition_number = v_partition_number;
       spread_domain = v_spread_domain;
       tenancy = v_tenancy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenancy in
         ("tenancy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_spread_domain in
         ("spread_domain", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_partition_number
         in
         ("partition_number", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_host_resource_group_arn
         in
         ("host_resource_group_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_id in
         ("host_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_affinity in
         ("affinity", arg) :: bnds
       in
       `Assoc bnds
    : placement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement

[@@@deriving.end]

type private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop;
  enable_resource_name_dns_aaaa_record : bool prop;
  hostname_type : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_hostname_type in
         ("hostname_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_resource_name_dns_aaaa_record
         in
         ("enable_resource_name_dns_aaaa_record", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_resource_name_dns_a_record
         in
         ("enable_resource_name_dns_a_record", arg) :: bnds
       in
       `Assoc bnds
    : private_dns_name_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_dns_name_options

[@@@deriving.end]

type tag_specifications = {
  resource_type : string prop;
  tags : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tag_specifications) -> ()

let yojson_of_tag_specifications =
  (function
   | { resource_type = v_resource_type; tags = v_tags } ->
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
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       `Assoc bnds
    : tag_specifications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tag_specifications

[@@@deriving.end]

type aws_launch_template = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_launch_template) -> ()

let yojson_of_aws_launch_template =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
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
    : aws_launch_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_launch_template

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_launch_template ?id ?name ?tags ?timeouts ~filter () :
    aws_launch_template =
  { id; name; tags; filter; timeouts }

type t = {
  arn : string prop;
  block_device_mappings : block_device_mappings list prop;
  capacity_reservation_specification :
    capacity_reservation_specification list prop;
  cpu_options : cpu_options list prop;
  credit_specification : credit_specification list prop;
  default_version : float prop;
  description : string prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_optimized : string prop;
  elastic_gpu_specifications : elastic_gpu_specifications list prop;
  elastic_inference_accelerator :
    elastic_inference_accelerator list prop;
  enclave_options : enclave_options list prop;
  hibernation_options : hibernation_options list prop;
  iam_instance_profile : iam_instance_profile list prop;
  id : string prop;
  image_id : string prop;
  instance_initiated_shutdown_behavior : string prop;
  instance_market_options : instance_market_options list prop;
  instance_requirements : instance_requirements list prop;
  instance_type : string prop;
  kernel_id : string prop;
  key_name : string prop;
  latest_version : float prop;
  license_specification : license_specification list prop;
  maintenance_options : maintenance_options list prop;
  metadata_options : metadata_options list prop;
  monitoring : monitoring list prop;
  name : string prop;
  network_interfaces : network_interfaces list prop;
  placement : placement list prop;
  private_dns_name_options : private_dns_name_options list prop;
  ram_disk_id : string prop;
  security_group_names : string list prop;
  tag_specifications : tag_specifications list prop;
  tags : (string * string) list prop;
  user_data : string prop;
  vpc_security_group_ids : string list prop;
}

let make ?id ?name ?tags ?timeouts ~filter __id =
  let __type = "aws_launch_template" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       block_device_mappings =
         Prop.computed __type __id "block_device_mappings";
       capacity_reservation_specification =
         Prop.computed __type __id
           "capacity_reservation_specification";
       cpu_options = Prop.computed __type __id "cpu_options";
       credit_specification =
         Prop.computed __type __id "credit_specification";
       default_version = Prop.computed __type __id "default_version";
       description = Prop.computed __type __id "description";
       disable_api_stop =
         Prop.computed __type __id "disable_api_stop";
       disable_api_termination =
         Prop.computed __type __id "disable_api_termination";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       elastic_gpu_specifications =
         Prop.computed __type __id "elastic_gpu_specifications";
       elastic_inference_accelerator =
         Prop.computed __type __id "elastic_inference_accelerator";
       enclave_options = Prop.computed __type __id "enclave_options";
       hibernation_options =
         Prop.computed __type __id "hibernation_options";
       iam_instance_profile =
         Prop.computed __type __id "iam_instance_profile";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       instance_initiated_shutdown_behavior =
         Prop.computed __type __id
           "instance_initiated_shutdown_behavior";
       instance_market_options =
         Prop.computed __type __id "instance_market_options";
       instance_requirements =
         Prop.computed __type __id "instance_requirements";
       instance_type = Prop.computed __type __id "instance_type";
       kernel_id = Prop.computed __type __id "kernel_id";
       key_name = Prop.computed __type __id "key_name";
       latest_version = Prop.computed __type __id "latest_version";
       license_specification =
         Prop.computed __type __id "license_specification";
       maintenance_options =
         Prop.computed __type __id "maintenance_options";
       metadata_options =
         Prop.computed __type __id "metadata_options";
       monitoring = Prop.computed __type __id "monitoring";
       name = Prop.computed __type __id "name";
       network_interfaces =
         Prop.computed __type __id "network_interfaces";
       placement = Prop.computed __type __id "placement";
       private_dns_name_options =
         Prop.computed __type __id "private_dns_name_options";
       ram_disk_id = Prop.computed __type __id "ram_disk_id";
       security_group_names =
         Prop.computed __type __id "security_group_names";
       tag_specifications =
         Prop.computed __type __id "tag_specifications";
       tags = Prop.computed __type __id "tags";
       user_data = Prop.computed __type __id "user_data";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_launch_template
        (aws_launch_template ?id ?name ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
