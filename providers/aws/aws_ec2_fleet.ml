(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fleet_instance_set = {
  instance_ids : string prop list option; [@option]
  instance_type : string prop option; [@option]
  lifecycle : string prop option; [@option]
  platform : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet_instance_set) -> ()

let yojson_of_fleet_instance_set =
  (function
   | {
       instance_ids = v_instance_ids;
       instance_type = v_instance_type;
       lifecycle = v_lifecycle;
       platform = v_platform;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lifecycle with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lifecycle", arg in
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
         match v_instance_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fleet_instance_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet_instance_set

[@@@deriving.end]

type launch_template_config__launch_template_specification = {
  launch_template_id : string prop option; [@option]
  launch_template_name : string prop option; [@option]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : launch_template_config__launch_template_specification) ->
  ()

let yojson_of_launch_template_config__launch_template_specification =
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
         match v_launch_template_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_template_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_template_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_template_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__launch_template_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__launch_template_specification

[@@@deriving.end]

type launch_template_config__override__instance_requirements__accelerator_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__accelerator_count) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__accelerator_count
    =
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
    : launch_template_config__override__instance_requirements__accelerator_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__accelerator_count

[@@@deriving.end]

type launch_template_config__override__instance_requirements__accelerator_total_memory_mib = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__accelerator_total_memory_mib) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    =
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
    : launch_template_config__override__instance_requirements__accelerator_total_memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__accelerator_total_memory_mib

[@@@deriving.end]

type launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    =
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
    : launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps

[@@@deriving.end]

type launch_template_config__override__instance_requirements__memory_gib_per_vcpu = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__memory_gib_per_vcpu) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    =
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
    : launch_template_config__override__instance_requirements__memory_gib_per_vcpu ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__memory_gib_per_vcpu

[@@@deriving.end]

type launch_template_config__override__instance_requirements__memory_mib = {
  max : float prop option; [@option]
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__memory_mib) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__memory_mib
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
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__override__instance_requirements__memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__memory_mib

[@@@deriving.end]

type launch_template_config__override__instance_requirements__network_bandwidth_gbps = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__network_bandwidth_gbps) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__network_bandwidth_gbps
    =
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
    : launch_template_config__override__instance_requirements__network_bandwidth_gbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__network_bandwidth_gbps

[@@@deriving.end]

type launch_template_config__override__instance_requirements__network_interface_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__network_interface_count) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__network_interface_count
    =
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
    : launch_template_config__override__instance_requirements__network_interface_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__network_interface_count

[@@@deriving.end]

type launch_template_config__override__instance_requirements__total_local_storage_gb = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__total_local_storage_gb) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__total_local_storage_gb
    =
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
    : launch_template_config__override__instance_requirements__total_local_storage_gb ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__total_local_storage_gb

[@@@deriving.end]

type launch_template_config__override__instance_requirements__vcpu_count = {
  max : float prop option; [@option]
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__override__instance_requirements__vcpu_count) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements__vcpu_count
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
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__override__instance_requirements__vcpu_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements__vcpu_count

[@@@deriving.end]

type launch_template_config__override__instance_requirements = {
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
  on_demand_max_price_percentage_over_lowest_price :
    float prop option;
      [@option]
  require_hibernate_support : bool prop option; [@option]
  spot_max_price_percentage_over_lowest_price : float prop option;
      [@option]
  accelerator_count :
    launch_template_config__override__instance_requirements__accelerator_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  accelerator_total_memory_mib :
    launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  baseline_ebs_bandwidth_mbps :
    launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  memory_gib_per_vcpu :
    launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  memory_mib :
    launch_template_config__override__instance_requirements__memory_mib
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_bandwidth_gbps :
    launch_template_config__override__instance_requirements__network_bandwidth_gbps
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interface_count :
    launch_template_config__override__instance_requirements__network_interface_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  total_local_storage_gb :
    launch_template_config__override__instance_requirements__total_local_storage_gb
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vcpu_count :
    launch_template_config__override__instance_requirements__vcpu_count
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : launch_template_config__override__instance_requirements) ->
  ()

let yojson_of_launch_template_config__override__instance_requirements
    =
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
                yojson_of_launch_template_config__override__instance_requirements__vcpu_count)
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
                yojson_of_launch_template_config__override__instance_requirements__total_local_storage_gb)
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
                yojson_of_launch_template_config__override__instance_requirements__network_interface_count)
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
                yojson_of_launch_template_config__override__instance_requirements__network_bandwidth_gbps)
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
                yojson_of_launch_template_config__override__instance_requirements__memory_mib)
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
                yojson_of_launch_template_config__override__instance_requirements__memory_gib_per_vcpu)
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
                yojson_of_launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps)
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
                yojson_of_launch_template_config__override__instance_requirements__accelerator_total_memory_mib)
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
                yojson_of_launch_template_config__override__instance_requirements__accelerator_count)
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
    : launch_template_config__override__instance_requirements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__override__instance_requirements

[@@@deriving.end]

type launch_template_config__override = {
  availability_zone : string prop option; [@option]
  instance_type : string prop option; [@option]
  max_price : string prop option; [@option]
  priority : float prop option; [@option]
  subnet_id : string prop option; [@option]
  weighted_capacity : float prop option; [@option]
  instance_requirements :
    launch_template_config__override__instance_requirements list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_template_config__override) -> ()

let yojson_of_launch_template_config__override =
  (function
   | {
       availability_zone = v_availability_zone;
       instance_type = v_instance_type;
       max_price = v_max_price;
       priority = v_priority;
       subnet_id = v_subnet_id;
       weighted_capacity = v_weighted_capacity;
       instance_requirements = v_instance_requirements;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_requirements then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_launch_template_config__override__instance_requirements)
               v_instance_requirements
           in
           let bnd = "instance_requirements", arg in
           bnd :: bnds
       in
       let bnds =
         match v_weighted_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weighted_capacity", arg in
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
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
       `Assoc bnds
    : launch_template_config__override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template_config__override

[@@@deriving.end]

type launch_template_config = {
  launch_template_specification :
    launch_template_config__launch_template_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  override : launch_template_config__override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_template_config) -> ()

let yojson_of_launch_template_config =
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
                yojson_of_launch_template_config__override)
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
                yojson_of_launch_template_config__launch_template_specification)
               v_launch_template_specification
           in
           let bnd = "launch_template_specification", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template_config

[@@@deriving.end]

type on_demand_options = {
  allocation_strategy : string prop option; [@option]
  max_total_price : string prop option; [@option]
  min_target_capacity : float prop option; [@option]
  single_availability_zone : bool prop option; [@option]
  single_instance_type : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_demand_options) -> ()

let yojson_of_on_demand_options =
  (function
   | {
       allocation_strategy = v_allocation_strategy;
       max_total_price = v_max_total_price;
       min_target_capacity = v_min_target_capacity;
       single_availability_zone = v_single_availability_zone;
       single_instance_type = v_single_instance_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_single_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "single_instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_single_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "single_availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_target_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_target_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_total_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_total_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : on_demand_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_demand_options

[@@@deriving.end]

type spot_options__maintenance_strategies__capacity_rebalance = {
  replacement_strategy : string prop option; [@option]
  termination_delay : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spot_options__maintenance_strategies__capacity_rebalance) ->
  ()

let yojson_of_spot_options__maintenance_strategies__capacity_rebalance
    =
  (function
   | {
       replacement_strategy = v_replacement_strategy;
       termination_delay = v_termination_delay;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_termination_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "termination_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replacement_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replacement_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spot_options__maintenance_strategies__capacity_rebalance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spot_options__maintenance_strategies__capacity_rebalance

[@@@deriving.end]

type spot_options__maintenance_strategies = {
  capacity_rebalance :
    spot_options__maintenance_strategies__capacity_rebalance list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spot_options__maintenance_strategies) -> ()

let yojson_of_spot_options__maintenance_strategies =
  (function
   | { capacity_rebalance = v_capacity_rebalance } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_capacity_rebalance then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spot_options__maintenance_strategies__capacity_rebalance)
               v_capacity_rebalance
           in
           let bnd = "capacity_rebalance", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spot_options__maintenance_strategies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spot_options__maintenance_strategies

[@@@deriving.end]

type spot_options = {
  allocation_strategy : string prop option; [@option]
  instance_interruption_behavior : string prop option; [@option]
  instance_pools_to_use_count : float prop option; [@option]
  maintenance_strategies : spot_options__maintenance_strategies list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spot_options) -> ()

let yojson_of_spot_options =
  (function
   | {
       allocation_strategy = v_allocation_strategy;
       instance_interruption_behavior =
         v_instance_interruption_behavior;
       instance_pools_to_use_count = v_instance_pools_to_use_count;
       maintenance_strategies = v_maintenance_strategies;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_strategies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spot_options__maintenance_strategies)
               v_maintenance_strategies
           in
           let bnd = "maintenance_strategies", arg in
           bnd :: bnds
       in
       let bnds =
         match v_instance_pools_to_use_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_pools_to_use_count", arg in
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
         match v_allocation_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spot_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spot_options

[@@@deriving.end]

type target_capacity_specification = {
  default_target_capacity_type : string prop;
  on_demand_target_capacity : float prop option; [@option]
  spot_target_capacity : float prop option; [@option]
  target_capacity_unit_type : string prop option; [@option]
  total_target_capacity : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_capacity_specification) -> ()

let yojson_of_target_capacity_specification =
  (function
   | {
       default_target_capacity_type = v_default_target_capacity_type;
       on_demand_target_capacity = v_on_demand_target_capacity;
       spot_target_capacity = v_spot_target_capacity;
       target_capacity_unit_type = v_target_capacity_unit_type;
       total_target_capacity = v_total_target_capacity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_total_target_capacity
         in
         ("total_target_capacity", arg) :: bnds
       in
       let bnds =
         match v_target_capacity_unit_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_capacity_unit_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spot_target_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "spot_target_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_demand_target_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "on_demand_target_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_target_capacity_type
         in
         ("default_target_capacity_type", arg) :: bnds
       in
       `Assoc bnds
    : target_capacity_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_capacity_specification

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

type aws_ec2_fleet = {
  context : string prop option; [@option]
  excess_capacity_termination_policy : string prop option; [@option]
  fleet_state : string prop option; [@option]
  fulfilled_capacity : float prop option; [@option]
  fulfilled_on_demand_capacity : float prop option; [@option]
  id : string prop option; [@option]
  replace_unhealthy_instances : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  terminate_instances : bool prop option; [@option]
  terminate_instances_with_expiration : bool prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  valid_from : string prop option; [@option]
  valid_until : string prop option; [@option]
  fleet_instance_set : fleet_instance_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_template_config : launch_template_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  on_demand_options : on_demand_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spot_options : spot_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_capacity_specification : target_capacity_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_fleet) -> ()

let yojson_of_aws_ec2_fleet =
  (function
   | {
       context = v_context;
       excess_capacity_termination_policy =
         v_excess_capacity_termination_policy;
       fleet_state = v_fleet_state;
       fulfilled_capacity = v_fulfilled_capacity;
       fulfilled_on_demand_capacity = v_fulfilled_on_demand_capacity;
       id = v_id;
       replace_unhealthy_instances = v_replace_unhealthy_instances;
       tags = v_tags;
       tags_all = v_tags_all;
       terminate_instances = v_terminate_instances;
       terminate_instances_with_expiration =
         v_terminate_instances_with_expiration;
       type_ = v_type_;
       valid_from = v_valid_from;
       valid_until = v_valid_until;
       fleet_instance_set = v_fleet_instance_set;
       launch_template_config = v_launch_template_config;
       on_demand_options = v_on_demand_options;
       spot_options = v_spot_options;
       target_capacity_specification =
         v_target_capacity_specification;
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
         if Stdlib.( = ) [] v_target_capacity_specification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_capacity_specification)
               v_target_capacity_specification
           in
           let bnd = "target_capacity_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_spot_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spot_options) v_spot_options
           in
           let bnd = "spot_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_on_demand_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_on_demand_options)
               v_on_demand_options
           in
           let bnd = "on_demand_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_launch_template_config)
               v_launch_template_config
           in
           let bnd = "launch_template_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fleet_instance_set then bnds
         else
           let arg =
             (yojson_of_list yojson_of_fleet_instance_set)
               v_fleet_instance_set
           in
           let bnd = "fleet_instance_set", arg in
           bnd :: bnds
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
         match v_valid_from with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "valid_from", arg in
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
         match v_terminate_instances_with_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "terminate_instances_with_expiration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_terminate_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "terminate_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         match v_replace_unhealthy_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace_unhealthy_instances", arg in
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
         match v_fulfilled_on_demand_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fulfilled_on_demand_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fulfilled_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fulfilled_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fleet_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fleet_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excess_capacity_termination_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "excess_capacity_termination_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_fleet

[@@@deriving.end]

let fleet_instance_set ?instance_ids ?instance_type ?lifecycle
    ?platform () : fleet_instance_set =
  { instance_ids; instance_type; lifecycle; platform }

let launch_template_config__launch_template_specification
    ?launch_template_id ?launch_template_name ~version () :
    launch_template_config__launch_template_specification =
  { launch_template_id; launch_template_name; version }

let launch_template_config__override__instance_requirements__accelerator_count
    ?max ?min () :
    launch_template_config__override__instance_requirements__accelerator_count
    =
  { max; min }

let launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    ?max ?min () :
    launch_template_config__override__instance_requirements__accelerator_total_memory_mib
    =
  { max; min }

let launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    ?max ?min () :
    launch_template_config__override__instance_requirements__baseline_ebs_bandwidth_mbps
    =
  { max; min }

let launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    ?max ?min () :
    launch_template_config__override__instance_requirements__memory_gib_per_vcpu
    =
  { max; min }

let launch_template_config__override__instance_requirements__memory_mib
    ?max ~min () :
    launch_template_config__override__instance_requirements__memory_mib
    =
  { max; min }

let launch_template_config__override__instance_requirements__network_bandwidth_gbps
    ?max ?min () :
    launch_template_config__override__instance_requirements__network_bandwidth_gbps
    =
  { max; min }

let launch_template_config__override__instance_requirements__network_interface_count
    ?max ?min () :
    launch_template_config__override__instance_requirements__network_interface_count
    =
  { max; min }

let launch_template_config__override__instance_requirements__total_local_storage_gb
    ?max ?min () :
    launch_template_config__override__instance_requirements__total_local_storage_gb
    =
  { max; min }

let launch_template_config__override__instance_requirements__vcpu_count
    ?max ~min () :
    launch_template_config__override__instance_requirements__vcpu_count
    =
  { max; min }

let launch_template_config__override__instance_requirements
    ?accelerator_manufacturers ?accelerator_names ?accelerator_types
    ?allowed_instance_types ?bare_metal ?burstable_performance
    ?cpu_manufacturers ?excluded_instance_types ?instance_generations
    ?local_storage ?local_storage_types
    ?on_demand_max_price_percentage_over_lowest_price
    ?require_hibernate_support
    ?spot_max_price_percentage_over_lowest_price
    ?(accelerator_count = []) ?(accelerator_total_memory_mib = [])
    ?(baseline_ebs_bandwidth_mbps = []) ?(memory_gib_per_vcpu = [])
    ?(network_bandwidth_gbps = []) ?(network_interface_count = [])
    ?(total_local_storage_gb = []) ~memory_mib ~vcpu_count () :
    launch_template_config__override__instance_requirements =
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

let launch_template_config__override ?availability_zone
    ?instance_type ?max_price ?priority ?subnet_id ?weighted_capacity
    ?(instance_requirements = []) () :
    launch_template_config__override =
  {
    availability_zone;
    instance_type;
    max_price;
    priority;
    subnet_id;
    weighted_capacity;
    instance_requirements;
  }

let launch_template_config ?(launch_template_specification = [])
    ?(override = []) () : launch_template_config =
  { launch_template_specification; override }

let on_demand_options ?allocation_strategy ?max_total_price
    ?min_target_capacity ?single_availability_zone
    ?single_instance_type () : on_demand_options =
  {
    allocation_strategy;
    max_total_price;
    min_target_capacity;
    single_availability_zone;
    single_instance_type;
  }

let spot_options__maintenance_strategies__capacity_rebalance
    ?replacement_strategy ?termination_delay () :
    spot_options__maintenance_strategies__capacity_rebalance =
  { replacement_strategy; termination_delay }

let spot_options__maintenance_strategies ?(capacity_rebalance = [])
    () : spot_options__maintenance_strategies =
  { capacity_rebalance }

let spot_options ?allocation_strategy ?instance_interruption_behavior
    ?instance_pools_to_use_count ?(maintenance_strategies = []) () :
    spot_options =
  {
    allocation_strategy;
    instance_interruption_behavior;
    instance_pools_to_use_count;
    maintenance_strategies;
  }

let target_capacity_specification ?on_demand_target_capacity
    ?spot_target_capacity ?target_capacity_unit_type
    ~default_target_capacity_type ~total_target_capacity () :
    target_capacity_specification =
  {
    default_target_capacity_type;
    on_demand_target_capacity;
    spot_target_capacity;
    target_capacity_unit_type;
    total_target_capacity;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ec2_fleet ?context ?excess_capacity_termination_policy
    ?fleet_state ?fulfilled_capacity ?fulfilled_on_demand_capacity
    ?id ?replace_unhealthy_instances ?tags ?tags_all
    ?terminate_instances ?terminate_instances_with_expiration ?type_
    ?valid_from ?valid_until ?(fleet_instance_set = [])
    ?(on_demand_options = []) ?(spot_options = []) ?timeouts
    ~launch_template_config ~target_capacity_specification () :
    aws_ec2_fleet =
  {
    context;
    excess_capacity_termination_policy;
    fleet_state;
    fulfilled_capacity;
    fulfilled_on_demand_capacity;
    id;
    replace_unhealthy_instances;
    tags;
    tags_all;
    terminate_instances;
    terminate_instances_with_expiration;
    type_;
    valid_from;
    valid_until;
    fleet_instance_set;
    launch_template_config;
    on_demand_options;
    spot_options;
    target_capacity_specification;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  context : string prop;
  excess_capacity_termination_policy : string prop;
  fleet_state : string prop;
  fulfilled_capacity : float prop;
  fulfilled_on_demand_capacity : float prop;
  id : string prop;
  replace_unhealthy_instances : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  terminate_instances : bool prop;
  terminate_instances_with_expiration : bool prop;
  type_ : string prop;
  valid_from : string prop;
  valid_until : string prop;
}

let make ?context ?excess_capacity_termination_policy ?fleet_state
    ?fulfilled_capacity ?fulfilled_on_demand_capacity ?id
    ?replace_unhealthy_instances ?tags ?tags_all ?terminate_instances
    ?terminate_instances_with_expiration ?type_ ?valid_from
    ?valid_until ?(fleet_instance_set = []) ?(on_demand_options = [])
    ?(spot_options = []) ?timeouts ~launch_template_config
    ~target_capacity_specification __id =
  let __type = "aws_ec2_fleet" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       context = Prop.computed __type __id "context";
       excess_capacity_termination_policy =
         Prop.computed __type __id
           "excess_capacity_termination_policy";
       fleet_state = Prop.computed __type __id "fleet_state";
       fulfilled_capacity =
         Prop.computed __type __id "fulfilled_capacity";
       fulfilled_on_demand_capacity =
         Prop.computed __type __id "fulfilled_on_demand_capacity";
       id = Prop.computed __type __id "id";
       replace_unhealthy_instances =
         Prop.computed __type __id "replace_unhealthy_instances";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       terminate_instances =
         Prop.computed __type __id "terminate_instances";
       terminate_instances_with_expiration =
         Prop.computed __type __id
           "terminate_instances_with_expiration";
       type_ = Prop.computed __type __id "type";
       valid_from = Prop.computed __type __id "valid_from";
       valid_until = Prop.computed __type __id "valid_until";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_fleet
        (aws_ec2_fleet ?context ?excess_capacity_termination_policy
           ?fleet_state ?fulfilled_capacity
           ?fulfilled_on_demand_capacity ?id
           ?replace_unhealthy_instances ?tags ?tags_all
           ?terminate_instances ?terminate_instances_with_expiration
           ?type_ ?valid_from ?valid_until ~fleet_instance_set
           ~on_demand_options ~spot_options ?timeouts
           ~launch_template_config ~target_capacity_specification ());
    attrs = __attrs;
  }

let register ?tf_module ?context ?excess_capacity_termination_policy
    ?fleet_state ?fulfilled_capacity ?fulfilled_on_demand_capacity
    ?id ?replace_unhealthy_instances ?tags ?tags_all
    ?terminate_instances ?terminate_instances_with_expiration ?type_
    ?valid_from ?valid_until ?(fleet_instance_set = [])
    ?(on_demand_options = []) ?(spot_options = []) ?timeouts
    ~launch_template_config ~target_capacity_specification __id =
  let (r : _ Tf_core.resource) =
    make ?context ?excess_capacity_termination_policy ?fleet_state
      ?fulfilled_capacity ?fulfilled_on_demand_capacity ?id
      ?replace_unhealthy_instances ?tags ?tags_all
      ?terminate_instances ?terminate_instances_with_expiration
      ?type_ ?valid_from ?valid_until ~fleet_instance_set
      ~on_demand_options ~spot_options ?timeouts
      ~launch_template_config ~target_capacity_specification __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
