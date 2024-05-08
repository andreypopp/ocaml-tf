(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type initial_lifecycle_hook = {
  default_result : string prop option; [@option]
  heartbeat_timeout : float prop option; [@option]
  lifecycle_transition : string prop;
  name : string prop;
  notification_metadata : string prop option; [@option]
  notification_target_arn : string prop option; [@option]
  role_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_lifecycle_hook) -> ()

let yojson_of_initial_lifecycle_hook =
  (function
   | {
       default_result = v_default_result;
       heartbeat_timeout = v_heartbeat_timeout;
       lifecycle_transition = v_lifecycle_transition;
       name = v_name;
       notification_metadata = v_notification_metadata;
       notification_target_arn = v_notification_target_arn;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_target_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_target_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lifecycle_transition
         in
         ("lifecycle_transition", arg) :: bnds
       in
       let bnds =
         match v_heartbeat_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "heartbeat_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_result with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_result", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : initial_lifecycle_hook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_lifecycle_hook

[@@@deriving.end]

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

type instance_refresh__preferences = {
  auto_rollback : bool prop option; [@option]
  checkpoint_delay : string prop option; [@option]
  checkpoint_percentages : float prop list option; [@option]
  instance_warmup : string prop option; [@option]
  max_healthy_percentage : float prop option; [@option]
  min_healthy_percentage : float prop option; [@option]
  scale_in_protected_instances : string prop option; [@option]
  skip_matching : bool prop option; [@option]
  standby_instances : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_refresh__preferences) -> ()

let yojson_of_instance_refresh__preferences =
  (function
   | {
       auto_rollback = v_auto_rollback;
       checkpoint_delay = v_checkpoint_delay;
       checkpoint_percentages = v_checkpoint_percentages;
       instance_warmup = v_instance_warmup;
       max_healthy_percentage = v_max_healthy_percentage;
       min_healthy_percentage = v_min_healthy_percentage;
       scale_in_protected_instances = v_scale_in_protected_instances;
       skip_matching = v_skip_matching;
       standby_instances = v_standby_instances;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_standby_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "standby_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_matching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_matching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_in_protected_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_in_protected_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_healthy_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_healthy_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_healthy_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_healthy_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_warmup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_warmup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_checkpoint_percentages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "checkpoint_percentages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_checkpoint_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "checkpoint_delay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_rollback with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_rollback", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_refresh__preferences ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_refresh__preferences

[@@@deriving.end]

type instance_refresh = {
  strategy : string prop;
  triggers : string prop list option; [@option]
  preferences : instance_refresh__preferences list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_refresh) -> ()

let yojson_of_instance_refresh =
  (function
   | {
       strategy = v_strategy;
       triggers = v_triggers;
       preferences = v_preferences;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_preferences then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_refresh__preferences)
               v_preferences
           in
           let bnd = "preferences", arg in
           bnd :: bnds
       in
       let bnds =
         match v_triggers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "triggers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_strategy in
         ("strategy", arg) :: bnds
       in
       `Assoc bnds
    : instance_refresh -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_refresh

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

type mixed_instances_policy__instances_distribution = {
  on_demand_allocation_strategy : string prop option; [@option]
  on_demand_base_capacity : float prop option; [@option]
  on_demand_percentage_above_base_capacity : float prop option;
      [@option]
  spot_allocation_strategy : string prop option; [@option]
  spot_instance_pools : float prop option; [@option]
  spot_max_price : string prop option; [@option]
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
         match v_spot_max_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spot_max_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spot_instance_pools with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "spot_instance_pools", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spot_allocation_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spot_allocation_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_demand_percentage_above_base_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "on_demand_percentage_above_base_capacity", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_on_demand_base_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "on_demand_base_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_demand_allocation_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_demand_allocation_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mixed_instances_policy__instances_distribution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mixed_instances_policy__instances_distribution

[@@@deriving.end]

type mixed_instances_policy__launch_template__launch_template_specification = {
  launch_template_id : string prop option; [@option]
  launch_template_name : string prop option; [@option]
  version : string prop option; [@option]
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
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
    : mixed_instances_policy__launch_template__launch_template_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__launch_template_specification

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__memory_mib = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__memory_mib

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
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
    : mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__instance_requirements = {
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
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count
    list;
      [@default []] [@yojson_drop_default ( = )]
  accelerator_total_memory_mib :
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib
    list;
      [@default []] [@yojson_drop_default ( = )]
  baseline_ebs_bandwidth_mbps :
    mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
      [@default []] [@yojson_drop_default ( = )]
  memory_gib_per_vcpu :
    mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu
    list;
      [@default []] [@yojson_drop_default ( = )]
  memory_mib :
    mixed_instances_policy__launch_template__override__instance_requirements__memory_mib
    list;
      [@default []] [@yojson_drop_default ( = )]
  network_bandwidth_gbps :
    mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps
    list;
      [@default []] [@yojson_drop_default ( = )]
  network_interface_count :
    mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count
    list;
      [@default []] [@yojson_drop_default ( = )]
  total_local_storage_gb :
    mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb
    list;
      [@default []] [@yojson_drop_default ( = )]
  vcpu_count :
    mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count
    list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_vcpu_count then bnds
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
         if [] = v_total_local_storage_gb then bnds
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
         if [] = v_network_interface_count then bnds
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
         if [] = v_network_bandwidth_gbps then bnds
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
         if [] = v_memory_mib then bnds
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
         if [] = v_memory_gib_per_vcpu then bnds
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
         if [] = v_baseline_ebs_bandwidth_mbps then bnds
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
         if [] = v_accelerator_total_memory_mib then bnds
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
         if [] = v_accelerator_count then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count)
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
    : mixed_instances_policy__launch_template__override__instance_requirements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__instance_requirements

[@@@deriving.end]

type mixed_instances_policy__launch_template__override__launch_template_specification = {
  launch_template_id : string prop option; [@option]
  launch_template_name : string prop option; [@option]
  version : string prop option; [@option]
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
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
    : mixed_instances_policy__launch_template__override__launch_template_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_mixed_instances_policy__launch_template__override__launch_template_specification

[@@@deriving.end]

type mixed_instances_policy__launch_template__override = {
  instance_type : string prop option; [@option]
  weighted_capacity : string prop option; [@option]
  instance_requirements :
    mixed_instances_policy__launch_template__override__instance_requirements
    list;
      [@default []] [@yojson_drop_default ( = )]
  launch_template_specification :
    mixed_instances_policy__launch_template__override__launch_template_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : mixed_instances_policy__launch_template__override) -> ()

let yojson_of_mixed_instances_policy__launch_template__override =
  (function
   | {
       instance_type = v_instance_type;
       weighted_capacity = v_weighted_capacity;
       instance_requirements = v_instance_requirements;
       launch_template_specification =
         v_launch_template_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_launch_template_specification then bnds
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
         if [] = v_instance_requirements then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mixed_instances_policy__launch_template__override__instance_requirements)
               v_instance_requirements
           in
           let bnd = "instance_requirements", arg in
           bnd :: bnds
       in
       let bnds =
         match v_weighted_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weighted_capacity", arg in
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
       `Assoc bnds
    : mixed_instances_policy__launch_template__override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mixed_instances_policy__launch_template__override

[@@@deriving.end]

type mixed_instances_policy__launch_template = {
  launch_template_specification :
    mixed_instances_policy__launch_template__launch_template_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
  override : mixed_instances_policy__launch_template__override list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_override then bnds
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
         if [] = v_launch_template_specification then bnds
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

type mixed_instances_policy = {
  instances_distribution :
    mixed_instances_policy__instances_distribution list;
      [@default []] [@yojson_drop_default ( = )]
  launch_template : mixed_instances_policy__launch_template list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_launch_template then bnds
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
         if [] = v_instances_distribution then bnds
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

type timeouts = {
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete; update = v_update } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type traffic_source = {
  identifier : string prop;
  type_ : string prop option; [@option] [@key "type"]
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
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
  reuse_on_scale_in : bool prop option; [@option]
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
         match v_reuse_on_scale_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reuse_on_scale_in", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : warm_pool__instance_reuse_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_warm_pool__instance_reuse_policy

[@@@deriving.end]

type warm_pool = {
  max_group_prepared_capacity : float prop option; [@option]
  min_size : float prop option; [@option]
  pool_state : string prop option; [@option]
  instance_reuse_policy : warm_pool__instance_reuse_policy list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : warm_pool) -> ()

let yojson_of_warm_pool =
  (function
   | {
       max_group_prepared_capacity = v_max_group_prepared_capacity;
       min_size = v_min_size;
       pool_state = v_pool_state;
       instance_reuse_policy = v_instance_reuse_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_instance_reuse_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_warm_pool__instance_reuse_policy)
               v_instance_reuse_policy
           in
           let bnd = "instance_reuse_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_pool_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pool_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_group_prepared_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_group_prepared_capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : warm_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_warm_pool

[@@@deriving.end]

type aws_autoscaling_group = {
  availability_zones : string prop list option; [@option]
  capacity_rebalance : bool prop option; [@option]
  context : string prop option; [@option]
  default_cooldown : float prop option; [@option]
  default_instance_warmup : float prop option; [@option]
  desired_capacity : float prop option; [@option]
  desired_capacity_type : string prop option; [@option]
  enabled_metrics : string prop list option; [@option]
  force_delete : bool prop option; [@option]
  force_delete_warm_pool : bool prop option; [@option]
  health_check_grace_period : float prop option; [@option]
  health_check_type : string prop option; [@option]
  id : string prop option; [@option]
  ignore_failed_scaling_activities : bool prop option; [@option]
  launch_configuration : string prop option; [@option]
  load_balancers : string prop list option; [@option]
  max_instance_lifetime : float prop option; [@option]
  max_size : float prop;
  metrics_granularity : string prop option; [@option]
  min_elb_capacity : float prop option; [@option]
  min_size : float prop;
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  placement_group : string prop option; [@option]
  protect_from_scale_in : bool prop option; [@option]
  service_linked_role_arn : string prop option; [@option]
  suspended_processes : string prop list option; [@option]
  target_group_arns : string prop list option; [@option]
  termination_policies : string prop list option; [@option]
  vpc_zone_identifier : string prop list option; [@option]
  wait_for_capacity_timeout : string prop option; [@option]
  wait_for_elb_capacity : float prop option; [@option]
  initial_lifecycle_hook : initial_lifecycle_hook list;
      [@default []] [@yojson_drop_default ( = )]
  instance_maintenance_policy : instance_maintenance_policy list;
      [@default []] [@yojson_drop_default ( = )]
  instance_refresh : instance_refresh list;
      [@default []] [@yojson_drop_default ( = )]
  launch_template : launch_template list;
      [@default []] [@yojson_drop_default ( = )]
  mixed_instances_policy : mixed_instances_policy list;
      [@default []] [@yojson_drop_default ( = )]
  tag : tag list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  traffic_source : traffic_source list;
      [@default []] [@yojson_drop_default ( = )]
  warm_pool : warm_pool list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_group) -> ()

let yojson_of_aws_autoscaling_group =
  (function
   | {
       availability_zones = v_availability_zones;
       capacity_rebalance = v_capacity_rebalance;
       context = v_context;
       default_cooldown = v_default_cooldown;
       default_instance_warmup = v_default_instance_warmup;
       desired_capacity = v_desired_capacity;
       desired_capacity_type = v_desired_capacity_type;
       enabled_metrics = v_enabled_metrics;
       force_delete = v_force_delete;
       force_delete_warm_pool = v_force_delete_warm_pool;
       health_check_grace_period = v_health_check_grace_period;
       health_check_type = v_health_check_type;
       id = v_id;
       ignore_failed_scaling_activities =
         v_ignore_failed_scaling_activities;
       launch_configuration = v_launch_configuration;
       load_balancers = v_load_balancers;
       max_instance_lifetime = v_max_instance_lifetime;
       max_size = v_max_size;
       metrics_granularity = v_metrics_granularity;
       min_elb_capacity = v_min_elb_capacity;
       min_size = v_min_size;
       name = v_name;
       name_prefix = v_name_prefix;
       placement_group = v_placement_group;
       protect_from_scale_in = v_protect_from_scale_in;
       service_linked_role_arn = v_service_linked_role_arn;
       suspended_processes = v_suspended_processes;
       target_group_arns = v_target_group_arns;
       termination_policies = v_termination_policies;
       vpc_zone_identifier = v_vpc_zone_identifier;
       wait_for_capacity_timeout = v_wait_for_capacity_timeout;
       wait_for_elb_capacity = v_wait_for_elb_capacity;
       initial_lifecycle_hook = v_initial_lifecycle_hook;
       instance_maintenance_policy = v_instance_maintenance_policy;
       instance_refresh = v_instance_refresh;
       launch_template = v_launch_template;
       mixed_instances_policy = v_mixed_instances_policy;
       tag = v_tag;
       timeouts = v_timeouts;
       traffic_source = v_traffic_source;
       warm_pool = v_warm_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_warm_pool then bnds
         else
           let arg =
             (yojson_of_list yojson_of_warm_pool) v_warm_pool
           in
           let bnd = "warm_pool", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_traffic_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_traffic_source)
               v_traffic_source
           in
           let bnd = "traffic_source", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_tag then bnds
         else
           let arg = (yojson_of_list yojson_of_tag) v_tag in
           let bnd = "tag", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_mixed_instances_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mixed_instances_policy)
               v_mixed_instances_policy
           in
           let bnd = "mixed_instances_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_launch_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_launch_template)
               v_launch_template
           in
           let bnd = "launch_template", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_instance_refresh then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_refresh)
               v_instance_refresh
           in
           let bnd = "instance_refresh", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_instance_maintenance_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_maintenance_policy)
               v_instance_maintenance_policy
           in
           let bnd = "instance_maintenance_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_initial_lifecycle_hook then bnds
         else
           let arg =
             (yojson_of_list yojson_of_initial_lifecycle_hook)
               v_initial_lifecycle_hook
           in
           let bnd = "initial_lifecycle_hook", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wait_for_elb_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "wait_for_elb_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wait_for_capacity_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wait_for_capacity_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_zone_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_zone_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_termination_policies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "termination_policies", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_group_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_group_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_suspended_processes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "suspended_processes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_linked_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_linked_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protect_from_scale_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "protect_from_scale_in", arg in
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
         let arg = yojson_of_prop yojson_of_float v_min_size in
         ("min_size", arg) :: bnds
       in
       let bnds =
         match v_min_elb_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_elb_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metrics_granularity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metrics_granularity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_size in
         ("max_size", arg) :: bnds
       in
       let bnds =
         match v_max_instance_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instance_lifetime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "load_balancers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_failed_scaling_activities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_failed_scaling_activities", arg in
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
         match v_health_check_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_grace_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "health_check_grace_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_delete_warm_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete_warm_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled_metrics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enabled_metrics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_capacity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desired_capacity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_instance_warmup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_instance_warmup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_cooldown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_cooldown", arg in
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
       let bnds =
         match v_capacity_rebalance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "capacity_rebalance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "availability_zones", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_autoscaling_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_group

[@@@deriving.end]

let initial_lifecycle_hook ?default_result ?heartbeat_timeout
    ?notification_metadata ?notification_target_arn ?role_arn
    ~lifecycle_transition ~name () : initial_lifecycle_hook =
  {
    default_result;
    heartbeat_timeout;
    lifecycle_transition;
    name;
    notification_metadata;
    notification_target_arn;
    role_arn;
  }

let instance_maintenance_policy ~max_healthy_percentage
    ~min_healthy_percentage () : instance_maintenance_policy =
  { max_healthy_percentage; min_healthy_percentage }

let instance_refresh__preferences ?auto_rollback ?checkpoint_delay
    ?checkpoint_percentages ?instance_warmup ?max_healthy_percentage
    ?min_healthy_percentage ?scale_in_protected_instances
    ?skip_matching ?standby_instances () :
    instance_refresh__preferences =
  {
    auto_rollback;
    checkpoint_delay;
    checkpoint_percentages;
    instance_warmup;
    max_healthy_percentage;
    min_healthy_percentage;
    scale_in_protected_instances;
    skip_matching;
    standby_instances;
  }

let instance_refresh ?triggers ?(preferences = []) ~strategy () :
    instance_refresh =
  { strategy; triggers; preferences }

let launch_template ?id ?name ?version () : launch_template =
  { id; name; version }

let mixed_instances_policy__instances_distribution
    ?on_demand_allocation_strategy ?on_demand_base_capacity
    ?on_demand_percentage_above_base_capacity
    ?spot_allocation_strategy ?spot_instance_pools ?spot_max_price ()
    : mixed_instances_policy__instances_distribution =
  {
    on_demand_allocation_strategy;
    on_demand_base_capacity;
    on_demand_percentage_above_base_capacity;
    spot_allocation_strategy;
    spot_instance_pools;
    spot_max_price;
  }

let mixed_instances_policy__launch_template__launch_template_specification
    ?launch_template_id ?launch_template_name ?version () :
    mixed_instances_policy__launch_template__launch_template_specification
    =
  { launch_template_id; launch_template_name; version }

let mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_count
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__accelerator_total_memory_mib
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__baseline_ebs_bandwidth_mbps
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__memory_gib_per_vcpu
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements__memory_mib
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__memory_mib
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__network_bandwidth_gbps
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__network_interface_count
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__total_local_storage_gb
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count
    ?max ?min () :
    mixed_instances_policy__launch_template__override__instance_requirements__vcpu_count
    =
  { max; min }

let mixed_instances_policy__launch_template__override__instance_requirements
    ?accelerator_manufacturers ?accelerator_names ?accelerator_types
    ?allowed_instance_types ?bare_metal ?burstable_performance
    ?cpu_manufacturers ?excluded_instance_types ?instance_generations
    ?local_storage ?local_storage_types
    ?on_demand_max_price_percentage_over_lowest_price
    ?require_hibernate_support
    ?spot_max_price_percentage_over_lowest_price
    ?(accelerator_count = []) ?(accelerator_total_memory_mib = [])
    ?(baseline_ebs_bandwidth_mbps = []) ?(memory_gib_per_vcpu = [])
    ?(memory_mib = []) ?(network_bandwidth_gbps = [])
    ?(network_interface_count = []) ?(total_local_storage_gb = [])
    ?(vcpu_count = []) () :
    mixed_instances_policy__launch_template__override__instance_requirements
    =
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

let mixed_instances_policy__launch_template__override__launch_template_specification
    ?launch_template_id ?launch_template_name ?version () :
    mixed_instances_policy__launch_template__override__launch_template_specification
    =
  { launch_template_id; launch_template_name; version }

let mixed_instances_policy__launch_template__override ?instance_type
    ?weighted_capacity ?(instance_requirements = [])
    ?(launch_template_specification = []) () :
    mixed_instances_policy__launch_template__override =
  {
    instance_type;
    weighted_capacity;
    instance_requirements;
    launch_template_specification;
  }

let mixed_instances_policy__launch_template ?(override = [])
    ~launch_template_specification () :
    mixed_instances_policy__launch_template =
  { launch_template_specification; override }

let mixed_instances_policy ?(instances_distribution = [])
    ~launch_template () : mixed_instances_policy =
  { instances_distribution; launch_template }

let tag ~key ~propagate_at_launch ~value () : tag =
  { key; propagate_at_launch; value }

let timeouts ?delete ?update () : timeouts = { delete; update }

let traffic_source ?type_ ~identifier () : traffic_source =
  { identifier; type_ }

let warm_pool__instance_reuse_policy ?reuse_on_scale_in () :
    warm_pool__instance_reuse_policy =
  { reuse_on_scale_in }

let warm_pool ?max_group_prepared_capacity ?min_size ?pool_state
    ?(instance_reuse_policy = []) () : warm_pool =
  {
    max_group_prepared_capacity;
    min_size;
    pool_state;
    instance_reuse_policy;
  }

let aws_autoscaling_group ?availability_zones ?capacity_rebalance
    ?context ?default_cooldown ?default_instance_warmup
    ?desired_capacity ?desired_capacity_type ?enabled_metrics
    ?force_delete ?force_delete_warm_pool ?health_check_grace_period
    ?health_check_type ?id ?ignore_failed_scaling_activities
    ?launch_configuration ?load_balancers ?max_instance_lifetime
    ?metrics_granularity ?min_elb_capacity ?name ?name_prefix
    ?placement_group ?protect_from_scale_in ?service_linked_role_arn
    ?suspended_processes ?target_group_arns ?termination_policies
    ?vpc_zone_identifier ?wait_for_capacity_timeout
    ?wait_for_elb_capacity ?(instance_maintenance_policy = [])
    ?(instance_refresh = []) ?(launch_template = [])
    ?(mixed_instances_policy = []) ?timeouts ?(warm_pool = [])
    ~max_size ~min_size ~initial_lifecycle_hook ~tag ~traffic_source
    () : aws_autoscaling_group =
  {
    availability_zones;
    capacity_rebalance;
    context;
    default_cooldown;
    default_instance_warmup;
    desired_capacity;
    desired_capacity_type;
    enabled_metrics;
    force_delete;
    force_delete_warm_pool;
    health_check_grace_period;
    health_check_type;
    id;
    ignore_failed_scaling_activities;
    launch_configuration;
    load_balancers;
    max_instance_lifetime;
    max_size;
    metrics_granularity;
    min_elb_capacity;
    min_size;
    name;
    name_prefix;
    placement_group;
    protect_from_scale_in;
    service_linked_role_arn;
    suspended_processes;
    target_group_arns;
    termination_policies;
    vpc_zone_identifier;
    wait_for_capacity_timeout;
    wait_for_elb_capacity;
    initial_lifecycle_hook;
    instance_maintenance_policy;
    instance_refresh;
    launch_template;
    mixed_instances_policy;
    tag;
    timeouts;
    traffic_source;
    warm_pool;
  }

type t = {
  tf_name : string;
  arn : string prop;
  availability_zones : string list prop;
  capacity_rebalance : bool prop;
  context : string prop;
  default_cooldown : float prop;
  default_instance_warmup : float prop;
  desired_capacity : float prop;
  desired_capacity_type : string prop;
  enabled_metrics : string list prop;
  force_delete : bool prop;
  force_delete_warm_pool : bool prop;
  health_check_grace_period : float prop;
  health_check_type : string prop;
  id : string prop;
  ignore_failed_scaling_activities : bool prop;
  launch_configuration : string prop;
  load_balancers : string list prop;
  max_instance_lifetime : float prop;
  max_size : float prop;
  metrics_granularity : string prop;
  min_elb_capacity : float prop;
  min_size : float prop;
  name : string prop;
  name_prefix : string prop;
  placement_group : string prop;
  predicted_capacity : float prop;
  protect_from_scale_in : bool prop;
  service_linked_role_arn : string prop;
  suspended_processes : string list prop;
  target_group_arns : string list prop;
  termination_policies : string list prop;
  vpc_zone_identifier : string list prop;
  wait_for_capacity_timeout : string prop;
  wait_for_elb_capacity : float prop;
  warm_pool_size : float prop;
}

let make ?availability_zones ?capacity_rebalance ?context
    ?default_cooldown ?default_instance_warmup ?desired_capacity
    ?desired_capacity_type ?enabled_metrics ?force_delete
    ?force_delete_warm_pool ?health_check_grace_period
    ?health_check_type ?id ?ignore_failed_scaling_activities
    ?launch_configuration ?load_balancers ?max_instance_lifetime
    ?metrics_granularity ?min_elb_capacity ?name ?name_prefix
    ?placement_group ?protect_from_scale_in ?service_linked_role_arn
    ?suspended_processes ?target_group_arns ?termination_policies
    ?vpc_zone_identifier ?wait_for_capacity_timeout
    ?wait_for_elb_capacity ?(instance_maintenance_policy = [])
    ?(instance_refresh = []) ?(launch_template = [])
    ?(mixed_instances_policy = []) ?timeouts ?(warm_pool = [])
    ~max_size ~min_size ~initial_lifecycle_hook ~tag ~traffic_source
    __id =
  let __type = "aws_autoscaling_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       availability_zones =
         Prop.computed __type __id "availability_zones";
       capacity_rebalance =
         Prop.computed __type __id "capacity_rebalance";
       context = Prop.computed __type __id "context";
       default_cooldown =
         Prop.computed __type __id "default_cooldown";
       default_instance_warmup =
         Prop.computed __type __id "default_instance_warmup";
       desired_capacity =
         Prop.computed __type __id "desired_capacity";
       desired_capacity_type =
         Prop.computed __type __id "desired_capacity_type";
       enabled_metrics = Prop.computed __type __id "enabled_metrics";
       force_delete = Prop.computed __type __id "force_delete";
       force_delete_warm_pool =
         Prop.computed __type __id "force_delete_warm_pool";
       health_check_grace_period =
         Prop.computed __type __id "health_check_grace_period";
       health_check_type =
         Prop.computed __type __id "health_check_type";
       id = Prop.computed __type __id "id";
       ignore_failed_scaling_activities =
         Prop.computed __type __id "ignore_failed_scaling_activities";
       launch_configuration =
         Prop.computed __type __id "launch_configuration";
       load_balancers = Prop.computed __type __id "load_balancers";
       max_instance_lifetime =
         Prop.computed __type __id "max_instance_lifetime";
       max_size = Prop.computed __type __id "max_size";
       metrics_granularity =
         Prop.computed __type __id "metrics_granularity";
       min_elb_capacity =
         Prop.computed __type __id "min_elb_capacity";
       min_size = Prop.computed __type __id "min_size";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       placement_group = Prop.computed __type __id "placement_group";
       predicted_capacity =
         Prop.computed __type __id "predicted_capacity";
       protect_from_scale_in =
         Prop.computed __type __id "protect_from_scale_in";
       service_linked_role_arn =
         Prop.computed __type __id "service_linked_role_arn";
       suspended_processes =
         Prop.computed __type __id "suspended_processes";
       target_group_arns =
         Prop.computed __type __id "target_group_arns";
       termination_policies =
         Prop.computed __type __id "termination_policies";
       vpc_zone_identifier =
         Prop.computed __type __id "vpc_zone_identifier";
       wait_for_capacity_timeout =
         Prop.computed __type __id "wait_for_capacity_timeout";
       wait_for_elb_capacity =
         Prop.computed __type __id "wait_for_elb_capacity";
       warm_pool_size = Prop.computed __type __id "warm_pool_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_group
        (aws_autoscaling_group ?availability_zones
           ?capacity_rebalance ?context ?default_cooldown
           ?default_instance_warmup ?desired_capacity
           ?desired_capacity_type ?enabled_metrics ?force_delete
           ?force_delete_warm_pool ?health_check_grace_period
           ?health_check_type ?id ?ignore_failed_scaling_activities
           ?launch_configuration ?load_balancers
           ?max_instance_lifetime ?metrics_granularity
           ?min_elb_capacity ?name ?name_prefix ?placement_group
           ?protect_from_scale_in ?service_linked_role_arn
           ?suspended_processes ?target_group_arns
           ?termination_policies ?vpc_zone_identifier
           ?wait_for_capacity_timeout ?wait_for_elb_capacity
           ~instance_maintenance_policy ~instance_refresh
           ~launch_template ~mixed_instances_policy ?timeouts
           ~warm_pool ~max_size ~min_size ~initial_lifecycle_hook
           ~tag ~traffic_source ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zones ?capacity_rebalance
    ?context ?default_cooldown ?default_instance_warmup
    ?desired_capacity ?desired_capacity_type ?enabled_metrics
    ?force_delete ?force_delete_warm_pool ?health_check_grace_period
    ?health_check_type ?id ?ignore_failed_scaling_activities
    ?launch_configuration ?load_balancers ?max_instance_lifetime
    ?metrics_granularity ?min_elb_capacity ?name ?name_prefix
    ?placement_group ?protect_from_scale_in ?service_linked_role_arn
    ?suspended_processes ?target_group_arns ?termination_policies
    ?vpc_zone_identifier ?wait_for_capacity_timeout
    ?wait_for_elb_capacity ?(instance_maintenance_policy = [])
    ?(instance_refresh = []) ?(launch_template = [])
    ?(mixed_instances_policy = []) ?timeouts ?(warm_pool = [])
    ~max_size ~min_size ~initial_lifecycle_hook ~tag ~traffic_source
    __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zones ?capacity_rebalance ?context
      ?default_cooldown ?default_instance_warmup ?desired_capacity
      ?desired_capacity_type ?enabled_metrics ?force_delete
      ?force_delete_warm_pool ?health_check_grace_period
      ?health_check_type ?id ?ignore_failed_scaling_activities
      ?launch_configuration ?load_balancers ?max_instance_lifetime
      ?metrics_granularity ?min_elb_capacity ?name ?name_prefix
      ?placement_group ?protect_from_scale_in
      ?service_linked_role_arn ?suspended_processes
      ?target_group_arns ?termination_policies ?vpc_zone_identifier
      ?wait_for_capacity_timeout ?wait_for_elb_capacity
      ~instance_maintenance_policy ~instance_refresh ~launch_template
      ~mixed_instances_policy ?timeouts ~warm_pool ~max_size
      ~min_size ~initial_lifecycle_hook ~tag ~traffic_source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
