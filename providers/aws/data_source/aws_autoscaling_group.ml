(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_maintenance_policy = {
  max_healthy_percentage : float prop;
  min_healthy_percentage : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_maintenance_policy) -> ()

let yojson_of_instance_maintenance_policy =
  (function
   | {
       max_healthy_percentage = v_max_healthy_percentage;
       min_healthy_percentage = v_min_healthy_percentage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_healthy_percentage
         in
         ("min_healthy_percentage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_healthy_percentage
         in
         ("max_healthy_percentage", arg) :: bnds
       in
       `Assoc bnds
    : instance_maintenance_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_maintenance_policy

[@@@deriving.end]

type launch_template = {
  id : string prop;
  name : string prop;
  version : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : launch_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__launch_template_specification = {
  launch_template_id : string prop;
  launch_template_name : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__launch_template_specification) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__launch_template_specification
    =
  (function
   | {
       launch_template_id = v_launch_template_id;
       launch_template_name = v_launch_template_name;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_launch_template_name
         in
         ("launch_template_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_launch_template_id
         in
         ("launch_template_id", arg) :: bnds
       in
       `Assoc bnds
    : mixed_instances_policy__launch_template__override__launch_template_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__launch_template_specification

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__memory_mib = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__memory_mib) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__memory_mib
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__memory_mib

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count
    =
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
    : mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements = {
  accelerator_count :
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  accelerator_manufacturers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  accelerator_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  accelerator_total_memory_mib :
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  accelerator_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_instance_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bare_metal : string prop;
  baseline_ebs_bandwidth_mbps :
    mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  burstable_performance : string prop;
  cpu_manufacturers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  excluded_instance_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_generations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  local_storage : string prop;
  local_storage_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_spot_price_as_percentage_of_optimal_on_demand_price :
    float prop;
  memory_gib_per_vcpu :
    mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  memory_mib :
    mixed_instances_policy__launch_template__override__instance_requirements__memory_mib
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_bandwidth_gbps :
    mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interface_count :
    mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  on_demand_max_price_percentage_over_lowest_price : float prop;
  require_hibernate_support : bool prop;
  spot_max_price_percentage_over_lowest_price : float prop;
  total_local_storage_gb :
    mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vcpu_count :
    mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__override__instance_requirements) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__override__instance_requirements
    =
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
       max_spot_price_as_percentage_of_optimal_on_demand_price =
         v_max_spot_price_as_percentage_of_optimal_on_demand_price;
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
         if Stdlib.( = ) [] v_vcpu_count then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count)
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
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb)
               v_total_local_storage_gb
           in
           let bnd = "total_local_storage_gb", arg in
           bnd :: bnds
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
         if Stdlib.( = ) [] v_network_interface_count then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count)
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
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps)
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
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__memory_mib)
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
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu)
               v_memory_gib_per_vcpu
           in
           let bnd = "memory_gib_per_vcpu", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_spot_price_as_percentage_of_optimal_on_demand_price
         in
         ( "max_spot_price_as_percentage_of_optimal_on_demand_price",
           arg )
         :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_storage_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_local_storage_types
           in
           let bnd = "local_storage_types", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_local_storage in
         ("local_storage", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_generations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_instance_generations
           in
           let bnd = "instance_generations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_excluded_instance_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_excluded_instance_types
           in
           let bnd = "excluded_instance_types", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cpu_manufacturers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cpu_manufacturers
           in
           let bnd = "cpu_manufacturers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_burstable_performance
         in
         ("burstable_performance", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_baseline_ebs_bandwidth_mbps then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps)
               v_baseline_ebs_bandwidth_mbps
           in
           let bnd = "baseline_ebs_bandwidth_mbps", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bare_metal in
         ("bare_metal", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_instance_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_instance_types
           in
           let bnd = "allowed_instance_types", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerator_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_accelerator_types
           in
           let bnd = "accelerator_types", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerator_total_memory_mib then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib)
               v_accelerator_total_memory_mib
           in
           let bnd = "accelerator_total_memory_mib", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerator_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_accelerator_names
           in
           let bnd = "accelerator_names", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerator_manufacturers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_accelerator_manufacturers
           in
           let bnd = "accelerator_manufacturers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerator_count then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count)
               v_accelerator_count
           in
           let bnd = "accelerator_count", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : mixed_instances_policy__launch_template__override__instance_requirements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements

[@@@deriving.end]

type mixed_instances_policy__launch_template__override = {
  instance_requirements :
    mixed_instances_policy__launch_template__override__instance_requirements
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_type : string prop;
  launch_template_specification :
    mixed_instances_policy__launch_template__override__launch_template_specification
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  weighted_capacity : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : mixed_instances_policy__launch_template__override) -> ()

let yojson_of_mixed_instances_policy__launch_template__override =
  (function
   | {
       instance_requirements = v_instance_requirements;
       instance_type = v_instance_type;
       launch_template_specification =
         v_launch_template_specification;
       weighted_capacity = v_weighted_capacity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_weighted_capacity
         in
         ("weighted_capacity", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__launch_template_specification)
               v_launch_template_specification
           in
           let bnd = "launch_template_specification", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_requirements then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements)
               v_instance_requirements
           in
           let bnd = "instance_requirements", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : mixed_instances_policy__launch_template__override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mixed_instances_policy__launch_template__override

[@@@deriving.end]

type mixed_instances_policy__launch_template__launch_template_specification = {
  launch_template_id : string prop;
  launch_template_name : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       mixed_instances_policy__launch_template__launch_template_specification) ->
  ()

let yojson_of_mixed_instances_policy__launch_template__launch_template_specification
    =
  (function
   | {
       launch_template_id = v_launch_template_id;
       launch_template_name = v_launch_template_name;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_launch_template_name
         in
         ("launch_template_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_launch_template_id
         in
         ("launch_template_id", arg) :: bnds
       in
       `Assoc bnds
    : mixed_instances_policy__launch_template__launch_template_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__launch_template_specification

[@@@deriving.end]

type mixed_instances_policy__launch_template = {
  launch_template_specification :
    mixed_instances_policy__launch_template__launch_template_specification
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  override : mixed_instances_policy__launch_template__override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mixed_instances_policy__launch_template) -> ()

let yojson_of_mixed_instances_policy__launch_template =
  (function
   | {
       launch_template_specification =
         v_launch_template_specification;
       override = v_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_override then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override)
               v_override
           in
           let bnd = "override", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__launch_template_specification)
               v_launch_template_specification
           in
           let bnd = "launch_template_specification", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : mixed_instances_policy__launch_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mixed_instances_policy__launch_template

[@@@deriving.end]

type mixed_instances_policy__instances_distribution = {
  on_demand_allocation_strategy : string prop;
  on_demand_base_capacity : float prop;
  on_demand_percentage_above_base_capacity : float prop;
  spot_allocation_strategy : string prop;
  spot_instance_pools : float prop;
  spot_max_price : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : mixed_instances_policy__instances_distribution) -> ()

let yojson_of_mixed_instances_policy__instances_distribution =
  (function
   | {
       on_demand_allocation_strategy =
         v_on_demand_allocation_strategy;
       on_demand_base_capacity = v_on_demand_base_capacity;
       on_demand_percentage_above_base_capacity =
         v_on_demand_percentage_above_base_capacity;
       spot_allocation_strategy = v_spot_allocation_strategy;
       spot_instance_pools = v_spot_instance_pools;
       spot_max_price = v_spot_max_price;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spot_max_price
         in
         ("spot_max_price", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_spot_instance_pools
         in
         ("spot_instance_pools", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spot_allocation_strategy
         in
         ("spot_allocation_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_on_demand_percentage_above_base_capacity
         in
         ("on_demand_percentage_above_base_capacity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_on_demand_base_capacity
         in
         ("on_demand_base_capacity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_on_demand_allocation_strategy
         in
         ("on_demand_allocation_strategy", arg) :: bnds
       in
       `Assoc bnds
    : mixed_instances_policy__instances_distribution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mixed_instances_policy__instances_distribution

[@@@deriving.end]

type mixed_instances_policy = {
  instances_distribution :
    mixed_instances_policy__instances_distribution list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_template : mixed_instances_policy__launch_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mixed_instances_policy) -> ()

let yojson_of_mixed_instances_policy =
  (function
   | {
       instances_distribution = v_instances_distribution;
       launch_template = v_launch_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template)
               v_launch_template
           in
           let bnd = "launch_template", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instances_distribution then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__instances_distribution)
               v_instances_distribution
           in
           let bnd = "instances_distribution", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : mixed_instances_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mixed_instances_policy

[@@@deriving.end]

type tag = {
  key : string prop;
  propagate_at_launch : bool prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tag) -> ()

let yojson_of_tag =
  (function
   | {
       key = v_key;
       propagate_at_launch = v_propagate_at_launch;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_propagate_at_launch
         in
         ("propagate_at_launch", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tag

[@@@deriving.end]

type traffic_source = {
  identifier : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_source) -> ()

let yojson_of_traffic_source =
  (function
   | { identifier = v_identifier; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
       in
       `Assoc bnds
    : traffic_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_source

[@@@deriving.end]

type warm_pool__instance_reuse_policy = {
  reuse_on_scale_in : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : warm_pool__instance_reuse_policy) -> ()

let yojson_of_warm_pool__instance_reuse_policy =
  (function
   | { reuse_on_scale_in = v_reuse_on_scale_in } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_reuse_on_scale_in
         in
         ("reuse_on_scale_in", arg) :: bnds
       in
       `Assoc bnds
    : warm_pool__instance_reuse_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_warm_pool__instance_reuse_policy

[@@@deriving.end]

type warm_pool = {
  instance_reuse_policy : warm_pool__instance_reuse_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_group_prepared_capacity : float prop;
  min_size : float prop;
  pool_state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : warm_pool) -> ()

let yojson_of_warm_pool =
  (function
   | {
       instance_reuse_policy = v_instance_reuse_policy;
       max_group_prepared_capacity = v_max_group_prepared_capacity;
       min_size = v_min_size;
       pool_state = v_pool_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pool_state in
         ("pool_state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_size in
         ("min_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_group_prepared_capacity
         in
         ("max_group_prepared_capacity", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_reuse_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_warm_pool__instance_reuse_policy)
               v_instance_reuse_policy
           in
           let bnd = "instance_reuse_policy", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : warm_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_warm_pool

[@@@deriving.end]

type aws_autoscaling_group = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_group) -> ()

let yojson_of_aws_autoscaling_group =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_autoscaling_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_group

[@@@deriving.end]

let aws_autoscaling_group ?id ~name () : aws_autoscaling_group =
  { id; name }

type t = {
  tf_name : string;
  arn : string prop;
  availability_zones : string list prop;
  default_cooldown : float prop;
  desired_capacity : float prop;
  desired_capacity_type : string prop;
  enabled_metrics : string list prop;
  health_check_grace_period : float prop;
  health_check_type : string prop;
  id : string prop;
  instance_maintenance_policy :
    instance_maintenance_policy list prop;
  launch_configuration : string prop;
  launch_template : launch_template list prop;
  load_balancers : string list prop;
  max_instance_lifetime : float prop;
  max_size : float prop;
  min_size : float prop;
  mixed_instances_policy : mixed_instances_policy list prop;
  name : string prop;
  new_instances_protected_from_scale_in : bool prop;
  placement_group : string prop;
  predicted_capacity : float prop;
  service_linked_role_arn : string prop;
  status : string prop;
  suspended_processes : string list prop;
  tag : tag list prop;
  target_group_arns : string list prop;
  termination_policies : string list prop;
  traffic_source : traffic_source list prop;
  vpc_zone_identifier : string prop;
  warm_pool : warm_pool list prop;
  warm_pool_size : float prop;
}

let make ?id ~name __id =
  let __type = "aws_autoscaling_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       default_cooldown =
         Prop.computed __type __id "default_cooldown";
       desired_capacity =
         Prop.computed __type __id "desired_capacity";
       desired_capacity_type =
         Prop.computed __type __id "desired_capacity_type";
       enabled_metrics = Prop.computed __type __id "enabled_metrics";
       health_check_grace_period =
         Prop.computed __type __id "health_check_grace_period";
       health_check_type =
         Prop.computed __type __id "health_check_type";
       id = Prop.computed __type __id "id";
       instance_maintenance_policy =
         Prop.computed __type __id "instance_maintenance_policy";
       launch_configuration =
         Prop.computed __type __id "launch_configuration";
       launch_template = Prop.computed __type __id "launch_template";
       load_balancers = Prop.computed __type __id "load_balancers";
       max_instance_lifetime =
         Prop.computed __type __id "max_instance_lifetime";
       max_size = Prop.computed __type __id "max_size";
       min_size = Prop.computed __type __id "min_size";
       mixed_instances_policy =
         Prop.computed __type __id "mixed_instances_policy";
       name = Prop.computed __type __id "name";
       new_instances_protected_from_scale_in =
         Prop.computed __type __id
           "new_instances_protected_from_scale_in";
       placement_group = Prop.computed __type __id "placement_group";
       predicted_capacity =
         Prop.computed __type __id "predicted_capacity";
       service_linked_role_arn =
         Prop.computed __type __id "service_linked_role_arn";
       status = Prop.computed __type __id "status";
       suspended_processes =
         Prop.computed __type __id "suspended_processes";
       tag = Prop.computed __type __id "tag";
       target_group_arns =
         Prop.computed __type __id "target_group_arns";
       termination_policies =
         Prop.computed __type __id "termination_policies";
       traffic_source = Prop.computed __type __id "traffic_source";
       vpc_zone_identifier =
         Prop.computed __type __id "vpc_zone_identifier";
       warm_pool = Prop.computed __type __id "warm_pool";
       warm_pool_size = Prop.computed __type __id "warm_pool_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_group
        (aws_autoscaling_group ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
