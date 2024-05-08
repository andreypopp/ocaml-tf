(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type all_instances_config = {
  labels : (string * string prop) list option; [@option]
  metadata : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : all_instances_config) -> ()

let yojson_of_all_instances_config =
  (function
   | { labels = v_labels; metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : all_instances_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_all_instances_config

[@@@deriving.end]

type auto_healing_policies = {
  health_check : string prop;
  initial_delay_sec : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_healing_policies) -> ()

let yojson_of_auto_healing_policies =
  (function
   | {
       health_check = v_health_check;
       initial_delay_sec = v_initial_delay_sec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_sec
         in
         ("initial_delay_sec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_health_check in
         ("health_check", arg) :: bnds
       in
       `Assoc bnds
    : auto_healing_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_healing_policies

[@@@deriving.end]

type instance_lifecycle_policy = {
  default_action_on_failure : string prop option; [@option]
  force_update_on_repair : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_lifecycle_policy) -> ()

let yojson_of_instance_lifecycle_policy =
  (function
   | {
       default_action_on_failure = v_default_action_on_failure;
       force_update_on_repair = v_force_update_on_repair;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_force_update_on_repair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_update_on_repair", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_action_on_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_action_on_failure", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_lifecycle_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_lifecycle_policy

[@@@deriving.end]

type named_port = { name : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : named_port) -> ()

let yojson_of_named_port =
  (function
   | { name = v_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : named_port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_named_port

[@@@deriving.end]

type stateful_disk = {
  delete_rule : string prop option; [@option]
  device_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stateful_disk) -> ()

let yojson_of_stateful_disk =
  (function
   | { delete_rule = v_delete_rule; device_name = v_device_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       let bnds =
         match v_delete_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_rule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stateful_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stateful_disk

[@@@deriving.end]

type stateful_external_ip = {
  delete_rule : string prop option; [@option]
  interface_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stateful_external_ip) -> ()

let yojson_of_stateful_external_ip =
  (function
   | {
       delete_rule = v_delete_rule;
       interface_name = v_interface_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interface_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interface_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_rule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stateful_external_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stateful_external_ip

[@@@deriving.end]

type stateful_internal_ip = {
  delete_rule : string prop option; [@option]
  interface_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stateful_internal_ip) -> ()

let yojson_of_stateful_internal_ip =
  (function
   | {
       delete_rule = v_delete_rule;
       interface_name = v_interface_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interface_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interface_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_rule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : stateful_internal_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stateful_internal_ip

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

type update_policy = {
  instance_redistribution_type : string prop option; [@option]
  max_surge_fixed : float prop option; [@option]
  max_surge_percent : float prop option; [@option]
  max_unavailable_fixed : float prop option; [@option]
  max_unavailable_percent : float prop option; [@option]
  minimal_action : string prop;
  most_disruptive_allowed_action : string prop option; [@option]
  replacement_method : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : update_policy) -> ()

let yojson_of_update_policy =
  (function
   | {
       instance_redistribution_type = v_instance_redistribution_type;
       max_surge_fixed = v_max_surge_fixed;
       max_surge_percent = v_max_surge_percent;
       max_unavailable_fixed = v_max_unavailable_fixed;
       max_unavailable_percent = v_max_unavailable_percent;
       minimal_action = v_minimal_action;
       most_disruptive_allowed_action =
         v_most_disruptive_allowed_action;
       replacement_method = v_replacement_method;
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
         match v_replacement_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replacement_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_disruptive_allowed_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "most_disruptive_allowed_action", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_minimal_action
         in
         ("minimal_action", arg) :: bnds
       in
       let bnds =
         match v_max_unavailable_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unavailable_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unavailable_fixed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unavailable_fixed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_surge_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_surge_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_surge_fixed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_surge_fixed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_redistribution_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_redistribution_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : update_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_update_policy

[@@@deriving.end]

type version__target_size = {
  fixed : float prop option; [@option]
  percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : version__target_size) -> ()

let yojson_of_version__target_size =
  (function
   | { fixed = v_fixed; percent = v_percent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fixed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fixed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : version__target_size -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_version__target_size

[@@@deriving.end]

type version = {
  instance_template : string prop;
  name : string prop option; [@option]
  target_size : version__target_size list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : version) -> ()

let yojson_of_version =
  (function
   | {
       instance_template = v_instance_template;
       name = v_name;
       target_size = v_target_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_size then bnds
         else
           let arg =
             (yojson_of_list yojson_of_version__target_size)
               v_target_size
           in
           let bnd = "target_size", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_instance_template
         in
         ("instance_template", arg) :: bnds
       in
       `Assoc bnds
    : version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_version

[@@@deriving.end]

type status__version_target = { is_reached : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : status__version_target) -> ()

let yojson_of_status__version_target =
  (function
   | { is_reached = v_is_reached } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_reached in
         ("is_reached", arg) :: bnds
       in
       `Assoc bnds
    : status__version_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__version_target

[@@@deriving.end]

type status__stateful__per_instance_configs = {
  all_effective : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__stateful__per_instance_configs) -> ()

let yojson_of_status__stateful__per_instance_configs =
  (function
   | { all_effective = v_all_effective } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_all_effective in
         ("all_effective", arg) :: bnds
       in
       `Assoc bnds
    : status__stateful__per_instance_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__stateful__per_instance_configs

[@@@deriving.end]

type status__stateful = {
  has_stateful_config : bool prop;
  per_instance_configs : status__stateful__per_instance_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__stateful) -> ()

let yojson_of_status__stateful =
  (function
   | {
       has_stateful_config = v_has_stateful_config;
       per_instance_configs = v_per_instance_configs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_per_instance_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_status__stateful__per_instance_configs)
               v_per_instance_configs
           in
           let bnd = "per_instance_configs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_has_stateful_config
         in
         ("has_stateful_config", arg) :: bnds
       in
       `Assoc bnds
    : status__stateful -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__stateful

[@@@deriving.end]

type status__all_instances_config = { effective : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : status__all_instances_config) -> ()

let yojson_of_status__all_instances_config =
  (function
   | { effective = v_effective } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_effective in
         ("effective", arg) :: bnds
       in
       `Assoc bnds
    : status__all_instances_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__all_instances_config

[@@@deriving.end]

type status = {
  all_instances_config : status__all_instances_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  is_stable : bool prop;
  stateful : status__stateful list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  version_target : status__version_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       all_instances_config = v_all_instances_config;
       is_stable = v_is_stable;
       stateful = v_stateful;
       version_target = v_version_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_version_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__version_target)
               v_version_target
           in
           let bnd = "version_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateful then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__stateful) v_stateful
           in
           let bnd = "stateful", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_stable in
         ("is_stable", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_all_instances_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__all_instances_config)
               v_all_instances_config
           in
           let bnd = "all_instances_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type google_compute_region_instance_group_manager = {
  base_instance_name : string prop;
  description : string prop option; [@option]
  distribution_policy_target_shape : string prop option; [@option]
  distribution_policy_zones : string prop list option; [@option]
  id : string prop option; [@option]
  list_managed_instances_results : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  target_pools : string prop list option; [@option]
  target_size : float prop option; [@option]
  wait_for_instances : bool prop option; [@option]
  wait_for_instances_status : string prop option; [@option]
  all_instances_config : all_instances_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  auto_healing_policies : auto_healing_policies list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_lifecycle_policy : instance_lifecycle_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  named_port : named_port list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateful_disk : stateful_disk list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateful_external_ip : stateful_external_ip list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stateful_internal_ip : stateful_internal_ip list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  update_policy : update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  version : version list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_instance_group_manager) -> ()

let yojson_of_google_compute_region_instance_group_manager =
  (function
   | {
       base_instance_name = v_base_instance_name;
       description = v_description;
       distribution_policy_target_shape =
         v_distribution_policy_target_shape;
       distribution_policy_zones = v_distribution_policy_zones;
       id = v_id;
       list_managed_instances_results =
         v_list_managed_instances_results;
       name = v_name;
       project = v_project;
       region = v_region;
       target_pools = v_target_pools;
       target_size = v_target_size;
       wait_for_instances = v_wait_for_instances;
       wait_for_instances_status = v_wait_for_instances_status;
       all_instances_config = v_all_instances_config;
       auto_healing_policies = v_auto_healing_policies;
       instance_lifecycle_policy = v_instance_lifecycle_policy;
       named_port = v_named_port;
       stateful_disk = v_stateful_disk;
       stateful_external_ip = v_stateful_external_ip;
       stateful_internal_ip = v_stateful_internal_ip;
       timeouts = v_timeouts;
       update_policy = v_update_policy;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_version then bnds
         else
           let arg = (yojson_of_list yojson_of_version) v_version in
           let bnd = "version", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_update_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_update_policy) v_update_policy
           in
           let bnd = "update_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateful_internal_ip then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stateful_internal_ip)
               v_stateful_internal_ip
           in
           let bnd = "stateful_internal_ip", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateful_external_ip then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stateful_external_ip)
               v_stateful_external_ip
           in
           let bnd = "stateful_external_ip", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stateful_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stateful_disk) v_stateful_disk
           in
           let bnd = "stateful_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_named_port then bnds
         else
           let arg =
             (yojson_of_list yojson_of_named_port) v_named_port
           in
           let bnd = "named_port", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_lifecycle_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_lifecycle_policy)
               v_instance_lifecycle_policy
           in
           let bnd = "instance_lifecycle_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_healing_policies then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_healing_policies)
               v_auto_healing_policies
           in
           let bnd = "auto_healing_policies", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_all_instances_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_all_instances_config)
               v_all_instances_config
           in
           let bnd = "all_instances_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wait_for_instances_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "wait_for_instances_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_wait_for_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_pools with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_pools", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_list_managed_instances_results with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "list_managed_instances_results", arg in
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
         match v_distribution_policy_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "distribution_policy_zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_distribution_policy_target_shape with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "distribution_policy_target_shape", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_base_instance_name
         in
         ("base_instance_name", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_region_instance_group_manager ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_instance_group_manager

[@@@deriving.end]

let all_instances_config ?labels ?metadata () : all_instances_config
    =
  { labels; metadata }

let auto_healing_policies ~health_check ~initial_delay_sec () :
    auto_healing_policies =
  { health_check; initial_delay_sec }

let instance_lifecycle_policy ?default_action_on_failure
    ?force_update_on_repair () : instance_lifecycle_policy =
  { default_action_on_failure; force_update_on_repair }

let named_port ~name ~port () : named_port = { name; port }

let stateful_disk ?delete_rule ~device_name () : stateful_disk =
  { delete_rule; device_name }

let stateful_external_ip ?delete_rule ?interface_name () :
    stateful_external_ip =
  { delete_rule; interface_name }

let stateful_internal_ip ?delete_rule ?interface_name () :
    stateful_internal_ip =
  { delete_rule; interface_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let update_policy ?instance_redistribution_type ?max_surge_fixed
    ?max_surge_percent ?max_unavailable_fixed
    ?max_unavailable_percent ?most_disruptive_allowed_action
    ?replacement_method ~minimal_action ~type_ () : update_policy =
  {
    instance_redistribution_type;
    max_surge_fixed;
    max_surge_percent;
    max_unavailable_fixed;
    max_unavailable_percent;
    minimal_action;
    most_disruptive_allowed_action;
    replacement_method;
    type_;
  }

let version__target_size ?fixed ?percent () : version__target_size =
  { fixed; percent }

let version ?name ?(target_size = []) ~instance_template () : version
    =
  { instance_template; name; target_size }

let google_compute_region_instance_group_manager ?description
    ?distribution_policy_target_shape ?distribution_policy_zones ?id
    ?list_managed_instances_results ?project ?region ?target_pools
    ?target_size ?wait_for_instances ?wait_for_instances_status
    ?(all_instances_config = []) ?(auto_healing_policies = [])
    ?(instance_lifecycle_policy = []) ?(stateful_external_ip = [])
    ?(stateful_internal_ip = []) ?timeouts ?(update_policy = [])
    ~base_instance_name ~name ~named_port ~stateful_disk ~version ()
    : google_compute_region_instance_group_manager =
  {
    base_instance_name;
    description;
    distribution_policy_target_shape;
    distribution_policy_zones;
    id;
    list_managed_instances_results;
    name;
    project;
    region;
    target_pools;
    target_size;
    wait_for_instances;
    wait_for_instances_status;
    all_instances_config;
    auto_healing_policies;
    instance_lifecycle_policy;
    named_port;
    stateful_disk;
    stateful_external_ip;
    stateful_internal_ip;
    timeouts;
    update_policy;
    version;
  }

type t = {
  tf_name : string;
  base_instance_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  distribution_policy_target_shape : string prop;
  distribution_policy_zones : string list prop;
  fingerprint : string prop;
  id : string prop;
  instance_group : string prop;
  list_managed_instances_results : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  status : status list prop;
  target_pools : string list prop;
  target_size : float prop;
  wait_for_instances : bool prop;
  wait_for_instances_status : string prop;
}

let make ?description ?distribution_policy_target_shape
    ?distribution_policy_zones ?id ?list_managed_instances_results
    ?project ?region ?target_pools ?target_size ?wait_for_instances
    ?wait_for_instances_status ?(all_instances_config = [])
    ?(auto_healing_policies = []) ?(instance_lifecycle_policy = [])
    ?(stateful_external_ip = []) ?(stateful_internal_ip = [])
    ?timeouts ?(update_policy = []) ~base_instance_name ~name
    ~named_port ~stateful_disk ~version __id =
  let __type = "google_compute_region_instance_group_manager" in
  let __attrs =
    ({
       tf_name = __id;
       base_instance_name =
         Prop.computed __type __id "base_instance_name";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       distribution_policy_target_shape =
         Prop.computed __type __id "distribution_policy_target_shape";
       distribution_policy_zones =
         Prop.computed __type __id "distribution_policy_zones";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       instance_group = Prop.computed __type __id "instance_group";
       list_managed_instances_results =
         Prop.computed __type __id "list_managed_instances_results";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       status = Prop.computed __type __id "status";
       target_pools = Prop.computed __type __id "target_pools";
       target_size = Prop.computed __type __id "target_size";
       wait_for_instances =
         Prop.computed __type __id "wait_for_instances";
       wait_for_instances_status =
         Prop.computed __type __id "wait_for_instances_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_instance_group_manager
        (google_compute_region_instance_group_manager ?description
           ?distribution_policy_target_shape
           ?distribution_policy_zones ?id
           ?list_managed_instances_results ?project ?region
           ?target_pools ?target_size ?wait_for_instances
           ?wait_for_instances_status ~all_instances_config
           ~auto_healing_policies ~instance_lifecycle_policy
           ~stateful_external_ip ~stateful_internal_ip ?timeouts
           ~update_policy ~base_instance_name ~name ~named_port
           ~stateful_disk ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?description
    ?distribution_policy_target_shape ?distribution_policy_zones ?id
    ?list_managed_instances_results ?project ?region ?target_pools
    ?target_size ?wait_for_instances ?wait_for_instances_status
    ?(all_instances_config = []) ?(auto_healing_policies = [])
    ?(instance_lifecycle_policy = []) ?(stateful_external_ip = [])
    ?(stateful_internal_ip = []) ?timeouts ?(update_policy = [])
    ~base_instance_name ~name ~named_port ~stateful_disk ~version
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?distribution_policy_target_shape
      ?distribution_policy_zones ?id ?list_managed_instances_results
      ?project ?region ?target_pools ?target_size ?wait_for_instances
      ?wait_for_instances_status ~all_instances_config
      ~auto_healing_policies ~instance_lifecycle_policy
      ~stateful_external_ip ~stateful_internal_ip ?timeouts
      ~update_policy ~base_instance_name ~name ~named_port
      ~stateful_disk ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
