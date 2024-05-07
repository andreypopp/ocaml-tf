(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type fpgas = {
  count : float prop;
  manufacturer : string prop;
  memory_size : float prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fpgas) -> ()

let yojson_of_fpgas =
  (function
   | {
       count = v_count;
       manufacturer = v_manufacturer;
       memory_size = v_memory_size;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_size in
         ("memory_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_manufacturer in
         ("manufacturer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : fpgas -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fpgas

[@@@deriving.end]

type gpus = {
  count : float prop;
  manufacturer : string prop;
  memory_size : float prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gpus) -> ()

let yojson_of_gpus =
  (function
   | {
       count = v_count;
       manufacturer = v_manufacturer;
       memory_size = v_memory_size;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_size in
         ("memory_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_manufacturer in
         ("manufacturer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : gpus -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gpus

[@@@deriving.end]

type inference_accelerators = {
  count : float prop;
  manufacturer : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inference_accelerators) -> ()

let yojson_of_inference_accelerators =
  (function
   | {
       count = v_count;
       manufacturer = v_manufacturer;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_manufacturer in
         ("manufacturer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : inference_accelerators -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inference_accelerators

[@@@deriving.end]

type instance_disks = {
  count : float prop;
  size : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_disks) -> ()

let yojson_of_instance_disks =
  (function
   | { count = v_count; size = v_size; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : instance_disks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_disks

[@@@deriving.end]

type aws_ec2_instance_type = {
  id : string prop option; [@option]
  instance_type : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_instance_type) -> ()

let yojson_of_aws_ec2_instance_type =
  (function
   | {
       id = v_id;
       instance_type = v_instance_type;
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
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
    : aws_ec2_instance_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_instance_type

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_ec2_instance_type ?id ?timeouts ~instance_type () :
    aws_ec2_instance_type =
  { id; instance_type; timeouts }

type t = {
  tf_name : string;
  auto_recovery_supported : bool prop;
  bare_metal : bool prop;
  burstable_performance_supported : bool prop;
  current_generation : bool prop;
  dedicated_hosts_supported : bool prop;
  default_cores : float prop;
  default_threads_per_core : float prop;
  default_vcpus : float prop;
  ebs_encryption_support : string prop;
  ebs_nvme_support : string prop;
  ebs_optimized_support : string prop;
  ebs_performance_baseline_bandwidth : float prop;
  ebs_performance_baseline_iops : float prop;
  ebs_performance_baseline_throughput : float prop;
  ebs_performance_maximum_bandwidth : float prop;
  ebs_performance_maximum_iops : float prop;
  ebs_performance_maximum_throughput : float prop;
  efa_supported : bool prop;
  ena_support : string prop;
  encryption_in_transit_supported : bool prop;
  fpgas : fpgas list prop;
  free_tier_eligible : bool prop;
  gpus : gpus list prop;
  hibernation_supported : bool prop;
  hypervisor : string prop;
  id : string prop;
  inference_accelerators : inference_accelerators list prop;
  instance_disks : instance_disks list prop;
  instance_storage_supported : bool prop;
  instance_type : string prop;
  ipv6_supported : bool prop;
  maximum_ipv4_addresses_per_interface : float prop;
  maximum_ipv6_addresses_per_interface : float prop;
  maximum_network_cards : float prop;
  maximum_network_interfaces : float prop;
  memory_size : float prop;
  network_performance : string prop;
  supported_architectures : string list prop;
  supported_placement_strategies : string list prop;
  supported_root_device_types : string list prop;
  supported_usages_classes : string list prop;
  supported_virtualization_types : string list prop;
  sustained_clock_speed : float prop;
  total_fpga_memory : float prop;
  total_gpu_memory : float prop;
  total_instance_storage : float prop;
  valid_cores : float list prop;
  valid_threads_per_core : float list prop;
}

let make ?id ?timeouts ~instance_type __id =
  let __type = "aws_ec2_instance_type" in
  let __attrs =
    ({
       tf_name = __id;
       auto_recovery_supported =
         Prop.computed __type __id "auto_recovery_supported";
       bare_metal = Prop.computed __type __id "bare_metal";
       burstable_performance_supported =
         Prop.computed __type __id "burstable_performance_supported";
       current_generation =
         Prop.computed __type __id "current_generation";
       dedicated_hosts_supported =
         Prop.computed __type __id "dedicated_hosts_supported";
       default_cores = Prop.computed __type __id "default_cores";
       default_threads_per_core =
         Prop.computed __type __id "default_threads_per_core";
       default_vcpus = Prop.computed __type __id "default_vcpus";
       ebs_encryption_support =
         Prop.computed __type __id "ebs_encryption_support";
       ebs_nvme_support =
         Prop.computed __type __id "ebs_nvme_support";
       ebs_optimized_support =
         Prop.computed __type __id "ebs_optimized_support";
       ebs_performance_baseline_bandwidth =
         Prop.computed __type __id
           "ebs_performance_baseline_bandwidth";
       ebs_performance_baseline_iops =
         Prop.computed __type __id "ebs_performance_baseline_iops";
       ebs_performance_baseline_throughput =
         Prop.computed __type __id
           "ebs_performance_baseline_throughput";
       ebs_performance_maximum_bandwidth =
         Prop.computed __type __id
           "ebs_performance_maximum_bandwidth";
       ebs_performance_maximum_iops =
         Prop.computed __type __id "ebs_performance_maximum_iops";
       ebs_performance_maximum_throughput =
         Prop.computed __type __id
           "ebs_performance_maximum_throughput";
       efa_supported = Prop.computed __type __id "efa_supported";
       ena_support = Prop.computed __type __id "ena_support";
       encryption_in_transit_supported =
         Prop.computed __type __id "encryption_in_transit_supported";
       fpgas = Prop.computed __type __id "fpgas";
       free_tier_eligible =
         Prop.computed __type __id "free_tier_eligible";
       gpus = Prop.computed __type __id "gpus";
       hibernation_supported =
         Prop.computed __type __id "hibernation_supported";
       hypervisor = Prop.computed __type __id "hypervisor";
       id = Prop.computed __type __id "id";
       inference_accelerators =
         Prop.computed __type __id "inference_accelerators";
       instance_disks = Prop.computed __type __id "instance_disks";
       instance_storage_supported =
         Prop.computed __type __id "instance_storage_supported";
       instance_type = Prop.computed __type __id "instance_type";
       ipv6_supported = Prop.computed __type __id "ipv6_supported";
       maximum_ipv4_addresses_per_interface =
         Prop.computed __type __id
           "maximum_ipv4_addresses_per_interface";
       maximum_ipv6_addresses_per_interface =
         Prop.computed __type __id
           "maximum_ipv6_addresses_per_interface";
       maximum_network_cards =
         Prop.computed __type __id "maximum_network_cards";
       maximum_network_interfaces =
         Prop.computed __type __id "maximum_network_interfaces";
       memory_size = Prop.computed __type __id "memory_size";
       network_performance =
         Prop.computed __type __id "network_performance";
       supported_architectures =
         Prop.computed __type __id "supported_architectures";
       supported_placement_strategies =
         Prop.computed __type __id "supported_placement_strategies";
       supported_root_device_types =
         Prop.computed __type __id "supported_root_device_types";
       supported_usages_classes =
         Prop.computed __type __id "supported_usages_classes";
       supported_virtualization_types =
         Prop.computed __type __id "supported_virtualization_types";
       sustained_clock_speed =
         Prop.computed __type __id "sustained_clock_speed";
       total_fpga_memory =
         Prop.computed __type __id "total_fpga_memory";
       total_gpu_memory =
         Prop.computed __type __id "total_gpu_memory";
       total_instance_storage =
         Prop.computed __type __id "total_instance_storage";
       valid_cores = Prop.computed __type __id "valid_cores";
       valid_threads_per_core =
         Prop.computed __type __id "valid_threads_per_core";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_instance_type
        (aws_ec2_instance_type ?id ?timeouts ~instance_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~instance_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~instance_type __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
