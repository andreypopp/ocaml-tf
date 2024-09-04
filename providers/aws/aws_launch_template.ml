(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type block_device_mappings__ebs = {
  delete_on_termination : string prop option; [@option]
  encrypted : string prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  snapshot_id : string prop option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : block_device_mappings__ebs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_block_device_mappings__ebs

[@@@deriving.end]

type block_device_mappings = {
  device_name : string prop option; [@option]
  no_device : string prop option; [@option]
  virtual_name : string prop option; [@option]
  ebs : block_device_mappings__ebs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : block_device_mappings) -> ()

let yojson_of_block_device_mappings =
  (function
   | {
       device_name = v_device_name;
       no_device = v_no_device;
       virtual_name = v_virtual_name;
       ebs = v_ebs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_block_device_mappings__ebs)
               v_ebs
           in
           let bnd = "ebs", arg in
           bnd :: bnds
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "no_device", arg in
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
       `Assoc bnds
    : block_device_mappings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_block_device_mappings

[@@@deriving.end]

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

type iam_instance_profile = {
  arn : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : iam_instance_profile) -> ()

let yojson_of_iam_instance_profile =
  (function
   | { arn = v_arn; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : iam_instance_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_iam_instance_profile

[@@@deriving.end]

type instance_market_options__spot_options = {
  block_duration_minutes : float prop option; [@option]
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
       let bnds =
         match v_block_duration_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "block_duration_minutes", arg in
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

type instance_requirements__accelerator_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__accelerator_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__accelerator_count

[@@@deriving.end]

type instance_requirements__accelerator_total_memory_mib = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__accelerator_total_memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__accelerator_total_memory_mib

[@@@deriving.end]

type instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__baseline_ebs_bandwidth_mbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__baseline_ebs_bandwidth_mbps

[@@@deriving.end]

type instance_requirements__memory_gib_per_vcpu = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__memory_gib_per_vcpu ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__memory_gib_per_vcpu

[@@@deriving.end]

type instance_requirements__memory_mib = {
  max : float prop option; [@option]
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
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__memory_mib

[@@@deriving.end]

type instance_requirements__network_bandwidth_gbps = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__network_bandwidth_gbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__network_bandwidth_gbps

[@@@deriving.end]

type instance_requirements__network_interface_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__network_interface_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__network_interface_count

[@@@deriving.end]

type instance_requirements__total_local_storage_gb = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__total_local_storage_gb ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__total_local_storage_gb

[@@@deriving.end]

type instance_requirements__vcpu_count = {
  max : float prop option; [@option]
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
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_requirements__vcpu_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_requirements__vcpu_count

[@@@deriving.end]

type instance_requirements = {
  accelerator_manufacturers : string prop list option; [@option]
  accelerator_names : string prop list option; [@option]
  accelerator_types : string prop list option; [@option]
  allowed_instance_types : string prop list option; [@option]
  bare_metal : string prop option; [@option]
  burstable_performance : string prop option; [@option]
  cpu_manufacturers : string prop list option; [@option]
  excluded_instance_types : string prop list option; [@option]
  instance_generations : string prop list option; [@option]
  local_storage : string prop option; [@option]
  local_storage_types : string prop list option; [@option]
  max_spot_price_as_percentage_of_optimal_on_demand_price :
    float prop option;
      [@option]
  on_demand_max_price_percentage_over_lowest_price :
    float prop option;
      [@option]
  require_hibernate_support : bool prop option; [@option]
  spot_max_price_percentage_over_lowest_price : float prop option;
      [@option]
  accelerator_count : instance_requirements__accelerator_count list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  accelerator_total_memory_mib :
    instance_requirements__accelerator_total_memory_mib list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  baseline_ebs_bandwidth_mbps :
    instance_requirements__baseline_ebs_bandwidth_mbps list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  memory_gib_per_vcpu :
    instance_requirements__memory_gib_per_vcpu list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  memory_mib : instance_requirements__memory_mib list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_bandwidth_gbps :
    instance_requirements__network_bandwidth_gbps list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interface_count :
    instance_requirements__network_interface_count list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  total_local_storage_gb :
    instance_requirements__total_local_storage_gb list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vcpu_count : instance_requirements__vcpu_count list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_requirements) -> ()

let yojson_of_instance_requirements =
  (function
   | {
       accelerator_manufacturers = v_accelerator_manufacturers;
       accelerator_names = v_accelerator_names;
       accelerator_types = v_accelerator_types;
       allowed_instance_types = v_allowed_instance_types;
       bare_metal = v_bare_metal;
       burstable_performance = v_burstable_performance;
       cpu_manufacturers = v_cpu_manufacturers;
       excluded_instance_types = v_excluded_instance_types;
       instance_generations = v_instance_generations;
       local_storage = v_local_storage;
       local_storage_types = v_local_storage_types;
       max_spot_price_as_percentage_of_optimal_on_demand_price =
         v_max_spot_price_as_percentage_of_optimal_on_demand_price;
       on_demand_max_price_percentage_over_lowest_price =
         v_on_demand_max_price_percentage_over_lowest_price;
       require_hibernate_support = v_require_hibernate_support;
       spot_max_price_percentage_over_lowest_price =
         v_spot_max_price_percentage_over_lowest_price;
       accelerator_count = v_accelerator_count;
       accelerator_total_memory_mib = v_accelerator_total_memory_mib;
       baseline_ebs_bandwidth_mbps = v_baseline_ebs_bandwidth_mbps;
       memory_gib_per_vcpu = v_memory_gib_per_vcpu;
       memory_mib = v_memory_mib;
       network_bandwidth_gbps = v_network_bandwidth_gbps;
       network_interface_count = v_network_interface_count;
       total_local_storage_gb = v_total_local_storage_gb;
       vcpu_count = v_vcpu_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vcpu_count then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__vcpu_count)
               v_vcpu_count
           in
           let bnd = "vcpu_count", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_total_local_storage_gb then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__total_local_storage_gb)
               v_total_local_storage_gb
           in
           let bnd = "total_local_storage_gb", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_interface_count then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__network_interface_count)
               v_network_interface_count
           in
           let bnd = "network_interface_count", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_bandwidth_gbps then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__network_bandwidth_gbps)
               v_network_bandwidth_gbps
           in
           let bnd = "network_bandwidth_gbps", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_memory_mib then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__memory_mib)
               v_memory_mib
           in
           let bnd = "memory_mib", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_memory_gib_per_vcpu then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__memory_gib_per_vcpu)
               v_memory_gib_per_vcpu
           in
           let bnd = "memory_gib_per_vcpu", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_baseline_ebs_bandwidth_mbps then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__baseline_ebs_bandwidth_mbps)
               v_baseline_ebs_bandwidth_mbps
           in
           let bnd = "baseline_ebs_bandwidth_mbps", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerator_total_memory_mib then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__accelerator_total_memory_mib)
               v_accelerator_total_memory_mib
           in
           let bnd = "accelerator_total_memory_mib", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerator_count then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_requirements__accelerator_count)
               v_accelerator_count
           in
           let bnd = "accelerator_count", arg in
           bnd :: bnds
       in
       let bnds =
         match v_spot_max_price_percentage_over_lowest_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "spot_max_price_percentage_over_lowest_price", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_require_hibernate_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_hibernate_support", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_on_demand_max_price_percentage_over_lowest_price
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "on_demand_max_price_percentage_over_lowest_price",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_max_spot_price_as_percentage_of_optimal_on_demand_price
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "max_spot_price_as_percentage_of_optimal_on_demand_price",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_local_storage_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "local_storage_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_storage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_generations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_generations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_instance_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_instance_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_manufacturers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cpu_manufacturers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_burstable_performance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "burstable_performance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bare_metal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bare_metal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_instance_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_instance_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accelerator_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accelerator_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_manufacturers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accelerator_manufacturers", arg in
             bnd :: bnds
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

type monitoring = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring) -> ()

let yojson_of_monitoring =
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
    : monitoring -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring

[@@@deriving.end]

type network_interfaces = {
  associate_carrier_ip_address : string prop option; [@option]
  associate_public_ip_address : string prop option; [@option]
  delete_on_termination : string prop option; [@option]
  description : string prop option; [@option]
  device_index : float prop option; [@option]
  interface_type : string prop option; [@option]
  ipv4_address_count : float prop option; [@option]
  ipv4_addresses : string prop list option; [@option]
  ipv4_prefix_count : float prop option; [@option]
  ipv4_prefixes : string prop list option; [@option]
  ipv6_address_count : float prop option; [@option]
  ipv6_addresses : string prop list option; [@option]
  ipv6_prefix_count : float prop option; [@option]
  ipv6_prefixes : string prop list option; [@option]
  network_card_index : float prop option; [@option]
  network_interface_id : string prop option; [@option]
  primary_ipv6 : string prop option; [@option]
  private_ip_address : string prop option; [@option]
  security_groups : string prop list option; [@option]
  subnet_id : string prop option; [@option]
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
       primary_ipv6 = v_primary_ipv6;
       private_ip_address = v_private_ip_address;
       security_groups = v_security_groups;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_ipv6", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_interface_id", arg in
             bnd :: bnds
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
         match v_ipv6_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_prefix_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv6_prefix_count", arg in
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
         match v_ipv4_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv4_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_prefix_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv4_prefix_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv4_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_address_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv4_address_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interface_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interface_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_index with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "device_index", arg in
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
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       let bnds =
         match v_associate_public_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "associate_public_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_associate_carrier_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "associate_carrier_ip_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interfaces -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interfaces

[@@@deriving.end]

type placement = {
  affinity : string prop option; [@option]
  availability_zone : string prop option; [@option]
  group_name : string prop option; [@option]
  host_id : string prop option; [@option]
  host_resource_group_arn : string prop option; [@option]
  partition_number : float prop option; [@option]
  spread_domain : string prop option; [@option]
  tenancy : string prop option; [@option]
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
         match v_tenancy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenancy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spread_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spread_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition_number", arg in
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
         match v_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_name", arg in
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
         match v_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "affinity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : placement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement

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

type tag_specifications = {
  resource_type : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
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
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tag_specifications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tag_specifications

[@@@deriving.end]

type aws_launch_template = {
  default_version : float prop option; [@option]
  description : string prop option; [@option]
  disable_api_stop : bool prop option; [@option]
  disable_api_termination : bool prop option; [@option]
  ebs_optimized : string prop option; [@option]
  id : string prop option; [@option]
  image_id : string prop option; [@option]
  instance_initiated_shutdown_behavior : string prop option;
      [@option]
  instance_type : string prop option; [@option]
  kernel_id : string prop option; [@option]
  key_name : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  ram_disk_id : string prop option; [@option]
  security_group_names : string prop list option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  update_default_version : bool prop option; [@option]
  user_data : string prop option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  block_device_mappings : block_device_mappings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  capacity_reservation_specification :
    capacity_reservation_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cpu_options : cpu_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  credit_specification : credit_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  elastic_gpu_specifications : elastic_gpu_specifications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  elastic_inference_accelerator : elastic_inference_accelerator list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enclave_options : enclave_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hibernation_options : hibernation_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  iam_instance_profile : iam_instance_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_market_options : instance_market_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_requirements : instance_requirements list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  license_specification : license_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_options : maintenance_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metadata_options : metadata_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monitoring : monitoring list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interfaces : network_interfaces list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  placement : placement list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  private_dns_name_options : private_dns_name_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag_specifications : tag_specifications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_launch_template) -> ()

let yojson_of_aws_launch_template =
  (function
   | {
       default_version = v_default_version;
       description = v_description;
       disable_api_stop = v_disable_api_stop;
       disable_api_termination = v_disable_api_termination;
       ebs_optimized = v_ebs_optimized;
       id = v_id;
       image_id = v_image_id;
       instance_initiated_shutdown_behavior =
         v_instance_initiated_shutdown_behavior;
       instance_type = v_instance_type;
       kernel_id = v_kernel_id;
       key_name = v_key_name;
       name = v_name;
       name_prefix = v_name_prefix;
       ram_disk_id = v_ram_disk_id;
       security_group_names = v_security_group_names;
       tags = v_tags;
       tags_all = v_tags_all;
       update_default_version = v_update_default_version;
       user_data = v_user_data;
       vpc_security_group_ids = v_vpc_security_group_ids;
       block_device_mappings = v_block_device_mappings;
       capacity_reservation_specification =
         v_capacity_reservation_specification;
       cpu_options = v_cpu_options;
       credit_specification = v_credit_specification;
       elastic_gpu_specifications = v_elastic_gpu_specifications;
       elastic_inference_accelerator =
         v_elastic_inference_accelerator;
       enclave_options = v_enclave_options;
       hibernation_options = v_hibernation_options;
       iam_instance_profile = v_iam_instance_profile;
       instance_market_options = v_instance_market_options;
       instance_requirements = v_instance_requirements;
       license_specification = v_license_specification;
       maintenance_options = v_maintenance_options;
       metadata_options = v_metadata_options;
       monitoring = v_monitoring;
       network_interfaces = v_network_interfaces;
       placement = v_placement;
       private_dns_name_options = v_private_dns_name_options;
       tag_specifications = v_tag_specifications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_specifications then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tag_specifications)
               v_tag_specifications
           in
           let bnd = "tag_specifications", arg in
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
         if Stdlib.( = ) [] v_placement then bnds
         else
           let arg =
             (yojson_of_list yojson_of_placement) v_placement
           in
           let bnd = "placement", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_interfaces then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_interfaces)
               v_network_interfaces
           in
           let bnd = "network_interfaces", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monitoring then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitoring) v_monitoring
           in
           let bnd = "monitoring", arg in
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
         if Stdlib.( = ) [] v_license_specification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_license_specification)
               v_license_specification
           in
           let bnd = "license_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_requirements then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_requirements)
               v_instance_requirements
           in
           let bnd = "instance_requirements", arg in
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
         if Stdlib.( = ) [] v_iam_instance_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_iam_instance_profile)
               v_iam_instance_profile
           in
           let bnd = "iam_instance_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hibernation_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hibernation_options)
               v_hibernation_options
           in
           let bnd = "hibernation_options", arg in
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
         if Stdlib.( = ) [] v_elastic_inference_accelerator then bnds
         else
           let arg =
             (yojson_of_list yojson_of_elastic_inference_accelerator)
               v_elastic_inference_accelerator
           in
           let bnd = "elastic_inference_accelerator", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_elastic_gpu_specifications then bnds
         else
           let arg =
             (yojson_of_list yojson_of_elastic_gpu_specifications)
               v_elastic_gpu_specifications
           in
           let bnd = "elastic_gpu_specifications", arg in
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
         if Stdlib.( = ) [] v_block_device_mappings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_block_device_mappings)
               v_block_device_mappings
           in
           let bnd = "block_device_mappings", arg in
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
         match v_user_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_update_default_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "update_default_version", arg in
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
         match v_security_group_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ram_disk_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ram_disk_id", arg in
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
         match v_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kernel_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kernel_id", arg in
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
         match v_image_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_id", arg in
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
         match v_ebs_optimized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_launch_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_launch_template

[@@@deriving.end]

let block_device_mappings__ebs ?delete_on_termination ?encrypted
    ?iops ?kms_key_id ?snapshot_id ?throughput ?volume_size
    ?volume_type () : block_device_mappings__ebs =
  {
    delete_on_termination;
    encrypted;
    iops;
    kms_key_id;
    snapshot_id;
    throughput;
    volume_size;
    volume_type;
  }

let block_device_mappings ?device_name ?no_device ?virtual_name
    ?(ebs = []) () : block_device_mappings =
  { device_name; no_device; virtual_name; ebs }

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

let elastic_gpu_specifications ~type_ () : elastic_gpu_specifications
    =
  { type_ }

let elastic_inference_accelerator ~type_ () :
    elastic_inference_accelerator =
  { type_ }

let enclave_options ?enabled () : enclave_options = { enabled }

let hibernation_options ~configured () : hibernation_options =
  { configured }

let iam_instance_profile ?arn ?name () : iam_instance_profile =
  { arn; name }

let instance_market_options__spot_options ?block_duration_minutes
    ?instance_interruption_behavior ?max_price ?spot_instance_type
    ?valid_until () : instance_market_options__spot_options =
  {
    block_duration_minutes;
    instance_interruption_behavior;
    max_price;
    spot_instance_type;
    valid_until;
  }

let instance_market_options ?market_type ?(spot_options = []) () :
    instance_market_options =
  { market_type; spot_options }

let instance_requirements__accelerator_count ?max ?min () :
    instance_requirements__accelerator_count =
  { max; min }

let instance_requirements__accelerator_total_memory_mib ?max ?min ()
    : instance_requirements__accelerator_total_memory_mib =
  { max; min }

let instance_requirements__baseline_ebs_bandwidth_mbps ?max ?min () :
    instance_requirements__baseline_ebs_bandwidth_mbps =
  { max; min }

let instance_requirements__memory_gib_per_vcpu ?max ?min () :
    instance_requirements__memory_gib_per_vcpu =
  { max; min }

let instance_requirements__memory_mib ?max ~min () :
    instance_requirements__memory_mib =
  { max; min }

let instance_requirements__network_bandwidth_gbps ?max ?min () :
    instance_requirements__network_bandwidth_gbps =
  { max; min }

let instance_requirements__network_interface_count ?max ?min () :
    instance_requirements__network_interface_count =
  { max; min }

let instance_requirements__total_local_storage_gb ?max ?min () :
    instance_requirements__total_local_storage_gb =
  { max; min }

let instance_requirements__vcpu_count ?max ~min () :
    instance_requirements__vcpu_count =
  { max; min }

let instance_requirements ?accelerator_manufacturers
    ?accelerator_names ?accelerator_types ?allowed_instance_types
    ?bare_metal ?burstable_performance ?cpu_manufacturers
    ?excluded_instance_types ?instance_generations ?local_storage
    ?local_storage_types
    ?max_spot_price_as_percentage_of_optimal_on_demand_price
    ?on_demand_max_price_percentage_over_lowest_price
    ?require_hibernate_support
    ?spot_max_price_percentage_over_lowest_price
    ?(accelerator_count = []) ?(accelerator_total_memory_mib = [])
    ?(baseline_ebs_bandwidth_mbps = []) ?(memory_gib_per_vcpu = [])
    ?(network_bandwidth_gbps = []) ?(network_interface_count = [])
    ?(total_local_storage_gb = []) ~memory_mib ~vcpu_count () :
    instance_requirements =
  {
    accelerator_manufacturers;
    accelerator_names;
    accelerator_types;
    allowed_instance_types;
    bare_metal;
    burstable_performance;
    cpu_manufacturers;
    excluded_instance_types;
    instance_generations;
    local_storage;
    local_storage_types;
    max_spot_price_as_percentage_of_optimal_on_demand_price;
    on_demand_max_price_percentage_over_lowest_price;
    require_hibernate_support;
    spot_max_price_percentage_over_lowest_price;
    accelerator_count;
    accelerator_total_memory_mib;
    baseline_ebs_bandwidth_mbps;
    memory_gib_per_vcpu;
    memory_mib;
    network_bandwidth_gbps;
    network_interface_count;
    total_local_storage_gb;
    vcpu_count;
  }

let license_specification ~license_configuration_arn () :
    license_specification =
  { license_configuration_arn }

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

let monitoring ?enabled () : monitoring = { enabled }

let network_interfaces ?associate_carrier_ip_address
    ?associate_public_ip_address ?delete_on_termination ?description
    ?device_index ?interface_type ?ipv4_address_count ?ipv4_addresses
    ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
    ?ipv6_addresses ?ipv6_prefix_count ?ipv6_prefixes
    ?network_card_index ?network_interface_id ?primary_ipv6
    ?private_ip_address ?security_groups ?subnet_id () :
    network_interfaces =
  {
    associate_carrier_ip_address;
    associate_public_ip_address;
    delete_on_termination;
    description;
    device_index;
    interface_type;
    ipv4_address_count;
    ipv4_addresses;
    ipv4_prefix_count;
    ipv4_prefixes;
    ipv6_address_count;
    ipv6_addresses;
    ipv6_prefix_count;
    ipv6_prefixes;
    network_card_index;
    network_interface_id;
    primary_ipv6;
    private_ip_address;
    security_groups;
    subnet_id;
  }

let placement ?affinity ?availability_zone ?group_name ?host_id
    ?host_resource_group_arn ?partition_number ?spread_domain
    ?tenancy () : placement =
  {
    affinity;
    availability_zone;
    group_name;
    host_id;
    host_resource_group_arn;
    partition_number;
    spread_domain;
    tenancy;
  }

let private_dns_name_options ?enable_resource_name_dns_a_record
    ?enable_resource_name_dns_aaaa_record ?hostname_type () :
    private_dns_name_options =
  {
    enable_resource_name_dns_a_record;
    enable_resource_name_dns_aaaa_record;
    hostname_type;
  }

let tag_specifications ?resource_type ?tags () : tag_specifications =
  { resource_type; tags }

let aws_launch_template ?default_version ?description
    ?disable_api_stop ?disable_api_termination ?ebs_optimized ?id
    ?image_id ?instance_initiated_shutdown_behavior ?instance_type
    ?kernel_id ?key_name ?name ?name_prefix ?ram_disk_id
    ?security_group_names ?tags ?tags_all ?update_default_version
    ?user_data ?vpc_security_group_ids ?(block_device_mappings = [])
    ?(capacity_reservation_specification = []) ?(cpu_options = [])
    ?(credit_specification = []) ?(elastic_gpu_specifications = [])
    ?(elastic_inference_accelerator = []) ?(enclave_options = [])
    ?(hibernation_options = []) ?(iam_instance_profile = [])
    ?(instance_market_options = []) ?(instance_requirements = [])
    ?(maintenance_options = []) ?(metadata_options = [])
    ?(monitoring = []) ?(network_interfaces = []) ?(placement = [])
    ?(private_dns_name_options = []) ?(tag_specifications = [])
    ~license_specification () : aws_launch_template =
  {
    default_version;
    description;
    disable_api_stop;
    disable_api_termination;
    ebs_optimized;
    id;
    image_id;
    instance_initiated_shutdown_behavior;
    instance_type;
    kernel_id;
    key_name;
    name;
    name_prefix;
    ram_disk_id;
    security_group_names;
    tags;
    tags_all;
    update_default_version;
    user_data;
    vpc_security_group_ids;
    block_device_mappings;
    capacity_reservation_specification;
    cpu_options;
    credit_specification;
    elastic_gpu_specifications;
    elastic_inference_accelerator;
    enclave_options;
    hibernation_options;
    iam_instance_profile;
    instance_market_options;
    instance_requirements;
    license_specification;
    maintenance_options;
    metadata_options;
    monitoring;
    network_interfaces;
    placement;
    private_dns_name_options;
    tag_specifications;
  }

type t = {
  tf_name : string;
  arn : string prop;
  default_version : float prop;
  description : string prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_optimized : string prop;
  id : string prop;
  image_id : string prop;
  instance_initiated_shutdown_behavior : string prop;
  instance_type : string prop;
  kernel_id : string prop;
  key_name : string prop;
  latest_version : float prop;
  name : string prop;
  name_prefix : string prop;
  ram_disk_id : string prop;
  security_group_names : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_default_version : bool prop;
  user_data : string prop;
  vpc_security_group_ids : string list prop;
}

let make ?default_version ?description ?disable_api_stop
    ?disable_api_termination ?ebs_optimized ?id ?image_id
    ?instance_initiated_shutdown_behavior ?instance_type ?kernel_id
    ?key_name ?name ?name_prefix ?ram_disk_id ?security_group_names
    ?tags ?tags_all ?update_default_version ?user_data
    ?vpc_security_group_ids ?(block_device_mappings = [])
    ?(capacity_reservation_specification = []) ?(cpu_options = [])
    ?(credit_specification = []) ?(elastic_gpu_specifications = [])
    ?(elastic_inference_accelerator = []) ?(enclave_options = [])
    ?(hibernation_options = []) ?(iam_instance_profile = [])
    ?(instance_market_options = []) ?(instance_requirements = [])
    ?(maintenance_options = []) ?(metadata_options = [])
    ?(monitoring = []) ?(network_interfaces = []) ?(placement = [])
    ?(private_dns_name_options = []) ?(tag_specifications = [])
    ~license_specification __id =
  let __type = "aws_launch_template" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       default_version = Prop.computed __type __id "default_version";
       description = Prop.computed __type __id "description";
       disable_api_stop =
         Prop.computed __type __id "disable_api_stop";
       disable_api_termination =
         Prop.computed __type __id "disable_api_termination";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       instance_initiated_shutdown_behavior =
         Prop.computed __type __id
           "instance_initiated_shutdown_behavior";
       instance_type = Prop.computed __type __id "instance_type";
       kernel_id = Prop.computed __type __id "kernel_id";
       key_name = Prop.computed __type __id "key_name";
       latest_version = Prop.computed __type __id "latest_version";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       ram_disk_id = Prop.computed __type __id "ram_disk_id";
       security_group_names =
         Prop.computed __type __id "security_group_names";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       update_default_version =
         Prop.computed __type __id "update_default_version";
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
        (aws_launch_template ?default_version ?description
           ?disable_api_stop ?disable_api_termination ?ebs_optimized
           ?id ?image_id ?instance_initiated_shutdown_behavior
           ?instance_type ?kernel_id ?key_name ?name ?name_prefix
           ?ram_disk_id ?security_group_names ?tags ?tags_all
           ?update_default_version ?user_data ?vpc_security_group_ids
           ~block_device_mappings ~capacity_reservation_specification
           ~cpu_options ~credit_specification
           ~elastic_gpu_specifications ~elastic_inference_accelerator
           ~enclave_options ~hibernation_options
           ~iam_instance_profile ~instance_market_options
           ~instance_requirements ~maintenance_options
           ~metadata_options ~monitoring ~network_interfaces
           ~placement ~private_dns_name_options ~tag_specifications
           ~license_specification ());
    attrs = __attrs;
  }

let register ?tf_module ?default_version ?description
    ?disable_api_stop ?disable_api_termination ?ebs_optimized ?id
    ?image_id ?instance_initiated_shutdown_behavior ?instance_type
    ?kernel_id ?key_name ?name ?name_prefix ?ram_disk_id
    ?security_group_names ?tags ?tags_all ?update_default_version
    ?user_data ?vpc_security_group_ids ?(block_device_mappings = [])
    ?(capacity_reservation_specification = []) ?(cpu_options = [])
    ?(credit_specification = []) ?(elastic_gpu_specifications = [])
    ?(elastic_inference_accelerator = []) ?(enclave_options = [])
    ?(hibernation_options = []) ?(iam_instance_profile = [])
    ?(instance_market_options = []) ?(instance_requirements = [])
    ?(maintenance_options = []) ?(metadata_options = [])
    ?(monitoring = []) ?(network_interfaces = []) ?(placement = [])
    ?(private_dns_name_options = []) ?(tag_specifications = [])
    ~license_specification __id =
  let (r : _ Tf_core.resource) =
    make ?default_version ?description ?disable_api_stop
      ?disable_api_termination ?ebs_optimized ?id ?image_id
      ?instance_initiated_shutdown_behavior ?instance_type ?kernel_id
      ?key_name ?name ?name_prefix ?ram_disk_id ?security_group_names
      ?tags ?tags_all ?update_default_version ?user_data
      ?vpc_security_group_ids ~block_device_mappings
      ~capacity_reservation_specification ~cpu_options
      ~credit_specification ~elastic_gpu_specifications
      ~elastic_inference_accelerator ~enclave_options
      ~hibernation_options ~iam_instance_profile
      ~instance_market_options ~instance_requirements
      ~maintenance_options ~metadata_options ~monitoring
      ~network_interfaces ~placement ~private_dns_name_options
      ~tag_specifications ~license_specification __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
