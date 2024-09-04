(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_termination_policy = {
  idle_timeout : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_termination_policy) -> ()

let yojson_of_auto_termination_policy =
  (function
   | { idle_timeout = v_idle_timeout } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_idle_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_termination_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_termination_policy

[@@@deriving.end]

type bootstrap_action = {
  args : string prop list option; [@option]
  name : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bootstrap_action) -> ()

let yojson_of_bootstrap_action =
  (function
   | { args = v_args; name = v_name; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bootstrap_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bootstrap_action

[@@@deriving.end]

type core_instance_fleet__instance_type_configs__configurations = {
  classification : string prop option; [@option]
  properties : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : core_instance_fleet__instance_type_configs__configurations) ->
  ()

let yojson_of_core_instance_fleet__instance_type_configs__configurations
    =
  (function
   | { classification = v_classification; properties = v_properties }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "classification", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : core_instance_fleet__instance_type_configs__configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_core_instance_fleet__instance_type_configs__configurations

[@@@deriving.end]

type core_instance_fleet__instance_type_configs__ebs_config = {
  iops : float prop option; [@option]
  size : float prop;
  type_ : string prop; [@key "type"]
  volumes_per_instance : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : core_instance_fleet__instance_type_configs__ebs_config) ->
  ()

let yojson_of_core_instance_fleet__instance_type_configs__ebs_config
    =
  (function
   | {
       iops = v_iops;
       size = v_size;
       type_ = v_type_;
       volumes_per_instance = v_volumes_per_instance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volumes_per_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volumes_per_instance", arg in
             bnd :: bnds
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
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : core_instance_fleet__instance_type_configs__ebs_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_core_instance_fleet__instance_type_configs__ebs_config

[@@@deriving.end]

type core_instance_fleet__instance_type_configs = {
  bid_price : string prop option; [@option]
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
  instance_type : string prop;
  weighted_capacity : float prop option; [@option]
  configurations :
    core_instance_fleet__instance_type_configs__configurations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ebs_config :
    core_instance_fleet__instance_type_configs__ebs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : core_instance_fleet__instance_type_configs) -> ()

let yojson_of_core_instance_fleet__instance_type_configs =
  (function
   | {
       bid_price = v_bid_price;
       bid_price_as_percentage_of_on_demand_price =
         v_bid_price_as_percentage_of_on_demand_price;
       instance_type = v_instance_type;
       weighted_capacity = v_weighted_capacity;
       configurations = v_configurations;
       ebs_config = v_ebs_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_core_instance_fleet__instance_type_configs__ebs_config)
               v_ebs_config
           in
           let bnd = "ebs_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_core_instance_fleet__instance_type_configs__configurations)
               v_configurations
           in
           let bnd = "configurations", arg in
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_bid_price_as_percentage_of_on_demand_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "bid_price_as_percentage_of_on_demand_price", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_bid_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bid_price", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : core_instance_fleet__instance_type_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_core_instance_fleet__instance_type_configs

[@@@deriving.end]

type core_instance_fleet__launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       core_instance_fleet__launch_specifications__on_demand_specification) ->
  ()

let yojson_of_core_instance_fleet__launch_specifications__on_demand_specification
    =
  (function
   | { allocation_strategy = v_allocation_strategy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocation_strategy
         in
         ("allocation_strategy", arg) :: bnds
       in
       `Assoc bnds
    : core_instance_fleet__launch_specifications__on_demand_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_core_instance_fleet__launch_specifications__on_demand_specification

[@@@deriving.end]

type core_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string prop;
  block_duration_minutes : float prop option; [@option]
  timeout_action : string prop;
  timeout_duration_minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       core_instance_fleet__launch_specifications__spot_specification) ->
  ()

let yojson_of_core_instance_fleet__launch_specifications__spot_specification
    =
  (function
   | {
       allocation_strategy = v_allocation_strategy;
       block_duration_minutes = v_block_duration_minutes;
       timeout_action = v_timeout_action;
       timeout_duration_minutes = v_timeout_duration_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_duration_minutes
         in
         ("timeout_duration_minutes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_timeout_action
         in
         ("timeout_action", arg) :: bnds
       in
       let bnds =
         match v_block_duration_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "block_duration_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocation_strategy
         in
         ("allocation_strategy", arg) :: bnds
       in
       `Assoc bnds
    : core_instance_fleet__launch_specifications__spot_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_core_instance_fleet__launch_specifications__spot_specification

[@@@deriving.end]

type core_instance_fleet__launch_specifications = {
  on_demand_specification :
    core_instance_fleet__launch_specifications__on_demand_specification
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spot_specification :
    core_instance_fleet__launch_specifications__spot_specification
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : core_instance_fleet__launch_specifications) -> ()

let yojson_of_core_instance_fleet__launch_specifications =
  (function
   | {
       on_demand_specification = v_on_demand_specification;
       spot_specification = v_spot_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spot_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_core_instance_fleet__launch_specifications__spot_specification)
               v_spot_specification
           in
           let bnd = "spot_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_on_demand_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_core_instance_fleet__launch_specifications__on_demand_specification)
               v_on_demand_specification
           in
           let bnd = "on_demand_specification", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : core_instance_fleet__launch_specifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_core_instance_fleet__launch_specifications

[@@@deriving.end]

type core_instance_fleet = {
  name : string prop option; [@option]
  target_on_demand_capacity : float prop option; [@option]
  target_spot_capacity : float prop option; [@option]
  instance_type_configs :
    core_instance_fleet__instance_type_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_specifications :
    core_instance_fleet__launch_specifications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : core_instance_fleet) -> ()

let yojson_of_core_instance_fleet =
  (function
   | {
       name = v_name;
       target_on_demand_capacity = v_target_on_demand_capacity;
       target_spot_capacity = v_target_spot_capacity;
       instance_type_configs = v_instance_type_configs;
       launch_specifications = v_launch_specifications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_specifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_core_instance_fleet__launch_specifications)
               v_launch_specifications
           in
           let bnd = "launch_specifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_type_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_core_instance_fleet__instance_type_configs)
               v_instance_type_configs
           in
           let bnd = "instance_type_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_spot_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_spot_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_on_demand_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_on_demand_capacity", arg in
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
       `Assoc bnds
    : core_instance_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_core_instance_fleet

[@@@deriving.end]

type core_instance_group__ebs_config = {
  iops : float prop option; [@option]
  size : float prop;
  throughput : float prop option; [@option]
  type_ : string prop; [@key "type"]
  volumes_per_instance : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : core_instance_group__ebs_config) -> ()

let yojson_of_core_instance_group__ebs_config =
  (function
   | {
       iops = v_iops;
       size = v_size;
       throughput = v_throughput;
       type_ = v_type_;
       volumes_per_instance = v_volumes_per_instance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volumes_per_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volumes_per_instance", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : core_instance_group__ebs_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_core_instance_group__ebs_config

[@@@deriving.end]

type core_instance_group = {
  autoscaling_policy : string prop option; [@option]
  bid_price : string prop option; [@option]
  instance_count : float prop option; [@option]
  instance_type : string prop;
  name : string prop option; [@option]
  ebs_config : core_instance_group__ebs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : core_instance_group) -> ()

let yojson_of_core_instance_group =
  (function
   | {
       autoscaling_policy = v_autoscaling_policy;
       bid_price = v_bid_price;
       instance_count = v_instance_count;
       instance_type = v_instance_type;
       name = v_name;
       ebs_config = v_ebs_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_core_instance_group__ebs_config)
               v_ebs_config
           in
           let bnd = "ebs_config", arg in
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bid_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bid_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autoscaling_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "autoscaling_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : core_instance_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_core_instance_group

[@@@deriving.end]

type ec2_attributes = {
  additional_master_security_groups : string prop option; [@option]
  additional_slave_security_groups : string prop option; [@option]
  emr_managed_master_security_group : string prop option; [@option]
  emr_managed_slave_security_group : string prop option; [@option]
  instance_profile : string prop;
  key_name : string prop option; [@option]
  service_access_security_group : string prop option; [@option]
  subnet_id : string prop option; [@option]
  subnet_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ec2_attributes) -> ()

let yojson_of_ec2_attributes =
  (function
   | {
       additional_master_security_groups =
         v_additional_master_security_groups;
       additional_slave_security_groups =
         v_additional_slave_security_groups;
       emr_managed_master_security_group =
         v_emr_managed_master_security_group;
       emr_managed_slave_security_group =
         v_emr_managed_slave_security_group;
       instance_profile = v_instance_profile;
       key_name = v_key_name;
       service_access_security_group =
         v_service_access_security_group;
       subnet_id = v_subnet_id;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
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
         match v_service_access_security_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_access_security_group", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_instance_profile
         in
         ("instance_profile", arg) :: bnds
       in
       let bnds =
         match v_emr_managed_slave_security_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "emr_managed_slave_security_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_emr_managed_master_security_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "emr_managed_master_security_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_slave_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_slave_security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_master_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_master_security_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ec2_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ec2_attributes

[@@@deriving.end]

type kerberos_attributes = {
  ad_domain_join_password : string prop option; [@option]
  ad_domain_join_user : string prop option; [@option]
  cross_realm_trust_principal_password : string prop option;
      [@option]
  kdc_admin_password : string prop;
  realm : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kerberos_attributes) -> ()

let yojson_of_kerberos_attributes =
  (function
   | {
       ad_domain_join_password = v_ad_domain_join_password;
       ad_domain_join_user = v_ad_domain_join_user;
       cross_realm_trust_principal_password =
         v_cross_realm_trust_principal_password;
       kdc_admin_password = v_kdc_admin_password;
       realm = v_realm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_realm in
         ("realm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kdc_admin_password
         in
         ("kdc_admin_password", arg) :: bnds
       in
       let bnds =
         match v_cross_realm_trust_principal_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_realm_trust_principal_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ad_domain_join_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ad_domain_join_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ad_domain_join_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ad_domain_join_password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kerberos_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kerberos_attributes

[@@@deriving.end]

type master_instance_fleet__instance_type_configs__configurations = {
  classification : string prop option; [@option]
  properties : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       master_instance_fleet__instance_type_configs__configurations) ->
  ()

let yojson_of_master_instance_fleet__instance_type_configs__configurations
    =
  (function
   | { classification = v_classification; properties = v_properties }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "classification", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : master_instance_fleet__instance_type_configs__configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_master_instance_fleet__instance_type_configs__configurations

[@@@deriving.end]

type master_instance_fleet__instance_type_configs__ebs_config = {
  iops : float prop option; [@option]
  size : float prop;
  type_ : string prop; [@key "type"]
  volumes_per_instance : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : master_instance_fleet__instance_type_configs__ebs_config) ->
  ()

let yojson_of_master_instance_fleet__instance_type_configs__ebs_config
    =
  (function
   | {
       iops = v_iops;
       size = v_size;
       type_ = v_type_;
       volumes_per_instance = v_volumes_per_instance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volumes_per_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volumes_per_instance", arg in
             bnd :: bnds
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
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : master_instance_fleet__instance_type_configs__ebs_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_master_instance_fleet__instance_type_configs__ebs_config

[@@@deriving.end]

type master_instance_fleet__instance_type_configs = {
  bid_price : string prop option; [@option]
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
  instance_type : string prop;
  weighted_capacity : float prop option; [@option]
  configurations :
    master_instance_fleet__instance_type_configs__configurations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ebs_config :
    master_instance_fleet__instance_type_configs__ebs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_instance_fleet__instance_type_configs) -> ()

let yojson_of_master_instance_fleet__instance_type_configs =
  (function
   | {
       bid_price = v_bid_price;
       bid_price_as_percentage_of_on_demand_price =
         v_bid_price_as_percentage_of_on_demand_price;
       instance_type = v_instance_type;
       weighted_capacity = v_weighted_capacity;
       configurations = v_configurations;
       ebs_config = v_ebs_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_instance_fleet__instance_type_configs__ebs_config)
               v_ebs_config
           in
           let bnd = "ebs_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_instance_fleet__instance_type_configs__configurations)
               v_configurations
           in
           let bnd = "configurations", arg in
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_bid_price_as_percentage_of_on_demand_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "bid_price_as_percentage_of_on_demand_price", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_bid_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bid_price", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : master_instance_fleet__instance_type_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_instance_fleet__instance_type_configs

[@@@deriving.end]

type master_instance_fleet__launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       master_instance_fleet__launch_specifications__on_demand_specification) ->
  ()

let yojson_of_master_instance_fleet__launch_specifications__on_demand_specification
    =
  (function
   | { allocation_strategy = v_allocation_strategy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocation_strategy
         in
         ("allocation_strategy", arg) :: bnds
       in
       `Assoc bnds
    : master_instance_fleet__launch_specifications__on_demand_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_master_instance_fleet__launch_specifications__on_demand_specification

[@@@deriving.end]

type master_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string prop;
  block_duration_minutes : float prop option; [@option]
  timeout_action : string prop;
  timeout_duration_minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       master_instance_fleet__launch_specifications__spot_specification) ->
  ()

let yojson_of_master_instance_fleet__launch_specifications__spot_specification
    =
  (function
   | {
       allocation_strategy = v_allocation_strategy;
       block_duration_minutes = v_block_duration_minutes;
       timeout_action = v_timeout_action;
       timeout_duration_minutes = v_timeout_duration_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_duration_minutes
         in
         ("timeout_duration_minutes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_timeout_action
         in
         ("timeout_action", arg) :: bnds
       in
       let bnds =
         match v_block_duration_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "block_duration_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocation_strategy
         in
         ("allocation_strategy", arg) :: bnds
       in
       `Assoc bnds
    : master_instance_fleet__launch_specifications__spot_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_master_instance_fleet__launch_specifications__spot_specification

[@@@deriving.end]

type master_instance_fleet__launch_specifications = {
  on_demand_specification :
    master_instance_fleet__launch_specifications__on_demand_specification
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spot_specification :
    master_instance_fleet__launch_specifications__spot_specification
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_instance_fleet__launch_specifications) -> ()

let yojson_of_master_instance_fleet__launch_specifications =
  (function
   | {
       on_demand_specification = v_on_demand_specification;
       spot_specification = v_spot_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spot_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_instance_fleet__launch_specifications__spot_specification)
               v_spot_specification
           in
           let bnd = "spot_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_on_demand_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_instance_fleet__launch_specifications__on_demand_specification)
               v_on_demand_specification
           in
           let bnd = "on_demand_specification", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : master_instance_fleet__launch_specifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_instance_fleet__launch_specifications

[@@@deriving.end]

type master_instance_fleet = {
  name : string prop option; [@option]
  target_on_demand_capacity : float prop option; [@option]
  target_spot_capacity : float prop option; [@option]
  instance_type_configs :
    master_instance_fleet__instance_type_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_specifications :
    master_instance_fleet__launch_specifications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_instance_fleet) -> ()

let yojson_of_master_instance_fleet =
  (function
   | {
       name = v_name;
       target_on_demand_capacity = v_target_on_demand_capacity;
       target_spot_capacity = v_target_spot_capacity;
       instance_type_configs = v_instance_type_configs;
       launch_specifications = v_launch_specifications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_specifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_instance_fleet__launch_specifications)
               v_launch_specifications
           in
           let bnd = "launch_specifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_type_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_instance_fleet__instance_type_configs)
               v_instance_type_configs
           in
           let bnd = "instance_type_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_spot_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_spot_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_on_demand_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_on_demand_capacity", arg in
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
       `Assoc bnds
    : master_instance_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_instance_fleet

[@@@deriving.end]

type master_instance_group__ebs_config = {
  iops : float prop option; [@option]
  size : float prop;
  throughput : float prop option; [@option]
  type_ : string prop; [@key "type"]
  volumes_per_instance : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_instance_group__ebs_config) -> ()

let yojson_of_master_instance_group__ebs_config =
  (function
   | {
       iops = v_iops;
       size = v_size;
       throughput = v_throughput;
       type_ = v_type_;
       volumes_per_instance = v_volumes_per_instance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volumes_per_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volumes_per_instance", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : master_instance_group__ebs_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_instance_group__ebs_config

[@@@deriving.end]

type master_instance_group = {
  bid_price : string prop option; [@option]
  instance_count : float prop option; [@option]
  instance_type : string prop;
  name : string prop option; [@option]
  ebs_config : master_instance_group__ebs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : master_instance_group) -> ()

let yojson_of_master_instance_group =
  (function
   | {
       bid_price = v_bid_price;
       instance_count = v_instance_count;
       instance_type = v_instance_type;
       name = v_name;
       ebs_config = v_ebs_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_master_instance_group__ebs_config)
               v_ebs_config
           in
           let bnd = "ebs_config", arg in
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bid_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bid_price", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : master_instance_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_master_instance_group

[@@@deriving.end]

type placement_group_config = {
  instance_role : string prop;
  placement_strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : placement_group_config) -> ()

let yojson_of_placement_group_config =
  (function
   | {
       instance_role = v_instance_role;
       placement_strategy = v_placement_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_placement_strategy
         in
         ("placement_strategy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_role in
         ("instance_role", arg) :: bnds
       in
       `Assoc bnds
    : placement_group_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement_group_config

[@@@deriving.end]

type step__hadoop_jar_step = {
  args : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  jar : string prop;
  main_class : string prop;
  properties : string prop Tf_core.assoc;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : step__hadoop_jar_step) -> ()

let yojson_of_step__hadoop_jar_step =
  (function
   | {
       args = v_args;
       jar = v_jar;
       main_class = v_main_class;
       properties = v_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_properties
         in
         ("properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_main_class in
         ("main_class", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_jar in
         ("jar", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_args then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_args
           in
           let bnd = "args", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : step__hadoop_jar_step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_step__hadoop_jar_step

[@@@deriving.end]

type step = {
  action_on_failure : string prop;
  hadoop_jar_step : step__hadoop_jar_step list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : step) -> ()

let yojson_of_step =
  (function
   | {
       action_on_failure = v_action_on_failure;
       hadoop_jar_step = v_hadoop_jar_step;
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
         if Stdlib.( = ) [] v_hadoop_jar_step then bnds
         else
           let arg =
             (yojson_of_list yojson_of_step__hadoop_jar_step)
               v_hadoop_jar_step
           in
           let bnd = "hadoop_jar_step", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_on_failure
         in
         ("action_on_failure", arg) :: bnds
       in
       `Assoc bnds
    : step -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_step

[@@@deriving.end]

type aws_emr_cluster = {
  additional_info : string prop option; [@option]
  applications : string prop list option; [@option]
  autoscaling_role : string prop option; [@option]
  configurations : string prop option; [@option]
  configurations_json : string prop option; [@option]
  custom_ami_id : string prop option; [@option]
  ebs_root_volume_size : float prop option; [@option]
  id : string prop option; [@option]
  keep_job_flow_alive_when_no_steps : bool prop option; [@option]
  list_steps_states : string prop list option; [@option]
  log_encryption_kms_key_id : string prop option; [@option]
  log_uri : string prop option; [@option]
  name : string prop;
  placement_group_config : placement_group_config list option;
      [@option]
  release_label : string prop;
  scale_down_behavior : string prop option; [@option]
  security_configuration : string prop option; [@option]
  service_role : string prop;
  step : step list option; [@option]
  step_concurrency_level : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  termination_protection : bool prop option; [@option]
  unhealthy_node_replacement : bool prop option; [@option]
  visible_to_all_users : bool prop option; [@option]
  auto_termination_policy : auto_termination_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bootstrap_action : bootstrap_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  core_instance_fleet : core_instance_fleet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  core_instance_group : core_instance_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ec2_attributes : ec2_attributes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kerberos_attributes : kerberos_attributes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  master_instance_fleet : master_instance_fleet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  master_instance_group : master_instance_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_cluster) -> ()

let yojson_of_aws_emr_cluster =
  (function
   | {
       additional_info = v_additional_info;
       applications = v_applications;
       autoscaling_role = v_autoscaling_role;
       configurations = v_configurations;
       configurations_json = v_configurations_json;
       custom_ami_id = v_custom_ami_id;
       ebs_root_volume_size = v_ebs_root_volume_size;
       id = v_id;
       keep_job_flow_alive_when_no_steps =
         v_keep_job_flow_alive_when_no_steps;
       list_steps_states = v_list_steps_states;
       log_encryption_kms_key_id = v_log_encryption_kms_key_id;
       log_uri = v_log_uri;
       name = v_name;
       placement_group_config = v_placement_group_config;
       release_label = v_release_label;
       scale_down_behavior = v_scale_down_behavior;
       security_configuration = v_security_configuration;
       service_role = v_service_role;
       step = v_step;
       step_concurrency_level = v_step_concurrency_level;
       tags = v_tags;
       tags_all = v_tags_all;
       termination_protection = v_termination_protection;
       unhealthy_node_replacement = v_unhealthy_node_replacement;
       visible_to_all_users = v_visible_to_all_users;
       auto_termination_policy = v_auto_termination_policy;
       bootstrap_action = v_bootstrap_action;
       core_instance_fleet = v_core_instance_fleet;
       core_instance_group = v_core_instance_group;
       ec2_attributes = v_ec2_attributes;
       kerberos_attributes = v_kerberos_attributes;
       master_instance_fleet = v_master_instance_fleet;
       master_instance_group = v_master_instance_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_master_instance_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_master_instance_group)
               v_master_instance_group
           in
           let bnd = "master_instance_group", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_master_instance_fleet then bnds
         else
           let arg =
             (yojson_of_list yojson_of_master_instance_fleet)
               v_master_instance_fleet
           in
           let bnd = "master_instance_fleet", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kerberos_attributes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kerberos_attributes)
               v_kerberos_attributes
           in
           let bnd = "kerberos_attributes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ec2_attributes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ec2_attributes)
               v_ec2_attributes
           in
           let bnd = "ec2_attributes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_core_instance_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_core_instance_group)
               v_core_instance_group
           in
           let bnd = "core_instance_group", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_core_instance_fleet then bnds
         else
           let arg =
             (yojson_of_list yojson_of_core_instance_fleet)
               v_core_instance_fleet
           in
           let bnd = "core_instance_fleet", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bootstrap_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bootstrap_action)
               v_bootstrap_action
           in
           let bnd = "bootstrap_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_termination_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_termination_policy)
               v_auto_termination_policy
           in
           let bnd = "auto_termination_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_visible_to_all_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "visible_to_all_users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unhealthy_node_replacement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "unhealthy_node_replacement", arg in
             bnd :: bnds
       in
       let bnds =
         match v_termination_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "termination_protection", arg in
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
         match v_step_concurrency_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "step_concurrency_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_step with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_step v in
             let bnd = "step", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_role in
         ("service_role", arg) :: bnds
       in
       let bnds =
         match v_security_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_release_label in
         ("release_label", arg) :: bnds
       in
       let bnds =
         match v_placement_group_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_placement_group_config v
             in
             let bnd = "placement_group_config", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_log_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_encryption_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_encryption_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_list_steps_states with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "list_steps_states", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_job_flow_alive_when_no_steps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "keep_job_flow_alive_when_no_steps", arg in
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
         match v_ebs_root_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ebs_root_volume_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_ami_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_ami_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configurations_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configurations_json", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configurations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configurations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autoscaling_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "autoscaling_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_applications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "applications", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_info with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "additional_info", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_emr_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_cluster

[@@@deriving.end]

let auto_termination_policy ?idle_timeout () :
    auto_termination_policy =
  { idle_timeout }

let bootstrap_action ?args ~name ~path () : bootstrap_action =
  { args; name; path }

let core_instance_fleet__instance_type_configs__configurations
    ?classification ?properties () :
    core_instance_fleet__instance_type_configs__configurations =
  { classification; properties }

let core_instance_fleet__instance_type_configs__ebs_config ?iops
    ?volumes_per_instance ~size ~type_ () :
    core_instance_fleet__instance_type_configs__ebs_config =
  { iops; size; type_; volumes_per_instance }

let core_instance_fleet__instance_type_configs ?bid_price
    ?bid_price_as_percentage_of_on_demand_price ?weighted_capacity
    ~instance_type ~configurations ~ebs_config () :
    core_instance_fleet__instance_type_configs =
  {
    bid_price;
    bid_price_as_percentage_of_on_demand_price;
    instance_type;
    weighted_capacity;
    configurations;
    ebs_config;
  }

let core_instance_fleet__launch_specifications__on_demand_specification
    ~allocation_strategy () :
    core_instance_fleet__launch_specifications__on_demand_specification
    =
  { allocation_strategy }

let core_instance_fleet__launch_specifications__spot_specification
    ?block_duration_minutes ~allocation_strategy ~timeout_action
    ~timeout_duration_minutes () :
    core_instance_fleet__launch_specifications__spot_specification =
  {
    allocation_strategy;
    block_duration_minutes;
    timeout_action;
    timeout_duration_minutes;
  }

let core_instance_fleet__launch_specifications
    ?(on_demand_specification = []) ?(spot_specification = []) () :
    core_instance_fleet__launch_specifications =
  { on_demand_specification; spot_specification }

let core_instance_fleet ?name ?target_on_demand_capacity
    ?target_spot_capacity ?(launch_specifications = [])
    ~instance_type_configs () : core_instance_fleet =
  {
    name;
    target_on_demand_capacity;
    target_spot_capacity;
    instance_type_configs;
    launch_specifications;
  }

let core_instance_group__ebs_config ?iops ?throughput
    ?volumes_per_instance ~size ~type_ () :
    core_instance_group__ebs_config =
  { iops; size; throughput; type_; volumes_per_instance }

let core_instance_group ?autoscaling_policy ?bid_price
    ?instance_count ?name ~instance_type ~ebs_config () :
    core_instance_group =
  {
    autoscaling_policy;
    bid_price;
    instance_count;
    instance_type;
    name;
    ebs_config;
  }

let ec2_attributes ?additional_master_security_groups
    ?additional_slave_security_groups
    ?emr_managed_master_security_group
    ?emr_managed_slave_security_group ?key_name
    ?service_access_security_group ?subnet_id ?subnet_ids
    ~instance_profile () : ec2_attributes =
  {
    additional_master_security_groups;
    additional_slave_security_groups;
    emr_managed_master_security_group;
    emr_managed_slave_security_group;
    instance_profile;
    key_name;
    service_access_security_group;
    subnet_id;
    subnet_ids;
  }

let kerberos_attributes ?ad_domain_join_password ?ad_domain_join_user
    ?cross_realm_trust_principal_password ~kdc_admin_password ~realm
    () : kerberos_attributes =
  {
    ad_domain_join_password;
    ad_domain_join_user;
    cross_realm_trust_principal_password;
    kdc_admin_password;
    realm;
  }

let master_instance_fleet__instance_type_configs__configurations
    ?classification ?properties () :
    master_instance_fleet__instance_type_configs__configurations =
  { classification; properties }

let master_instance_fleet__instance_type_configs__ebs_config ?iops
    ?volumes_per_instance ~size ~type_ () :
    master_instance_fleet__instance_type_configs__ebs_config =
  { iops; size; type_; volumes_per_instance }

let master_instance_fleet__instance_type_configs ?bid_price
    ?bid_price_as_percentage_of_on_demand_price ?weighted_capacity
    ~instance_type ~configurations ~ebs_config () :
    master_instance_fleet__instance_type_configs =
  {
    bid_price;
    bid_price_as_percentage_of_on_demand_price;
    instance_type;
    weighted_capacity;
    configurations;
    ebs_config;
  }

let master_instance_fleet__launch_specifications__on_demand_specification
    ~allocation_strategy () :
    master_instance_fleet__launch_specifications__on_demand_specification
    =
  { allocation_strategy }

let master_instance_fleet__launch_specifications__spot_specification
    ?block_duration_minutes ~allocation_strategy ~timeout_action
    ~timeout_duration_minutes () :
    master_instance_fleet__launch_specifications__spot_specification
    =
  {
    allocation_strategy;
    block_duration_minutes;
    timeout_action;
    timeout_duration_minutes;
  }

let master_instance_fleet__launch_specifications
    ?(on_demand_specification = []) ?(spot_specification = []) () :
    master_instance_fleet__launch_specifications =
  { on_demand_specification; spot_specification }

let master_instance_fleet ?name ?target_on_demand_capacity
    ?target_spot_capacity ?(launch_specifications = [])
    ~instance_type_configs () : master_instance_fleet =
  {
    name;
    target_on_demand_capacity;
    target_spot_capacity;
    instance_type_configs;
    launch_specifications;
  }

let master_instance_group__ebs_config ?iops ?throughput
    ?volumes_per_instance ~size ~type_ () :
    master_instance_group__ebs_config =
  { iops; size; throughput; type_; volumes_per_instance }

let master_instance_group ?bid_price ?instance_count ?name
    ~instance_type ~ebs_config () : master_instance_group =
  { bid_price; instance_count; instance_type; name; ebs_config }

let aws_emr_cluster ?additional_info ?applications ?autoscaling_role
    ?configurations ?configurations_json ?custom_ami_id
    ?ebs_root_volume_size ?id ?keep_job_flow_alive_when_no_steps
    ?list_steps_states ?log_encryption_kms_key_id ?log_uri
    ?placement_group_config ?scale_down_behavior
    ?security_configuration ?step ?step_concurrency_level ?tags
    ?tags_all ?termination_protection ?unhealthy_node_replacement
    ?visible_to_all_users ?(auto_termination_policy = [])
    ?(bootstrap_action = []) ?(core_instance_fleet = [])
    ?(core_instance_group = []) ?(ec2_attributes = [])
    ?(kerberos_attributes = []) ?(master_instance_fleet = [])
    ?(master_instance_group = []) ~name ~release_label ~service_role
    () : aws_emr_cluster =
  {
    additional_info;
    applications;
    autoscaling_role;
    configurations;
    configurations_json;
    custom_ami_id;
    ebs_root_volume_size;
    id;
    keep_job_flow_alive_when_no_steps;
    list_steps_states;
    log_encryption_kms_key_id;
    log_uri;
    name;
    placement_group_config;
    release_label;
    scale_down_behavior;
    security_configuration;
    service_role;
    step;
    step_concurrency_level;
    tags;
    tags_all;
    termination_protection;
    unhealthy_node_replacement;
    visible_to_all_users;
    auto_termination_policy;
    bootstrap_action;
    core_instance_fleet;
    core_instance_group;
    ec2_attributes;
    kerberos_attributes;
    master_instance_fleet;
    master_instance_group;
  }

type t = {
  tf_name : string;
  additional_info : string prop;
  applications : string list prop;
  arn : string prop;
  autoscaling_role : string prop;
  cluster_state : string prop;
  configurations : string prop;
  configurations_json : string prop;
  custom_ami_id : string prop;
  ebs_root_volume_size : float prop;
  id : string prop;
  keep_job_flow_alive_when_no_steps : bool prop;
  list_steps_states : string list prop;
  log_encryption_kms_key_id : string prop;
  log_uri : string prop;
  master_public_dns : string prop;
  name : string prop;
  placement_group_config : placement_group_config list prop;
  release_label : string prop;
  scale_down_behavior : string prop;
  security_configuration : string prop;
  service_role : string prop;
  step : step list prop;
  step_concurrency_level : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  termination_protection : bool prop;
  unhealthy_node_replacement : bool prop;
  visible_to_all_users : bool prop;
}

let make ?additional_info ?applications ?autoscaling_role
    ?configurations ?configurations_json ?custom_ami_id
    ?ebs_root_volume_size ?id ?keep_job_flow_alive_when_no_steps
    ?list_steps_states ?log_encryption_kms_key_id ?log_uri
    ?placement_group_config ?scale_down_behavior
    ?security_configuration ?step ?step_concurrency_level ?tags
    ?tags_all ?termination_protection ?unhealthy_node_replacement
    ?visible_to_all_users ?(auto_termination_policy = [])
    ?(bootstrap_action = []) ?(core_instance_fleet = [])
    ?(core_instance_group = []) ?(ec2_attributes = [])
    ?(kerberos_attributes = []) ?(master_instance_fleet = [])
    ?(master_instance_group = []) ~name ~release_label ~service_role
    __id =
  let __type = "aws_emr_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       additional_info = Prop.computed __type __id "additional_info";
       applications = Prop.computed __type __id "applications";
       arn = Prop.computed __type __id "arn";
       autoscaling_role =
         Prop.computed __type __id "autoscaling_role";
       cluster_state = Prop.computed __type __id "cluster_state";
       configurations = Prop.computed __type __id "configurations";
       configurations_json =
         Prop.computed __type __id "configurations_json";
       custom_ami_id = Prop.computed __type __id "custom_ami_id";
       ebs_root_volume_size =
         Prop.computed __type __id "ebs_root_volume_size";
       id = Prop.computed __type __id "id";
       keep_job_flow_alive_when_no_steps =
         Prop.computed __type __id
           "keep_job_flow_alive_when_no_steps";
       list_steps_states =
         Prop.computed __type __id "list_steps_states";
       log_encryption_kms_key_id =
         Prop.computed __type __id "log_encryption_kms_key_id";
       log_uri = Prop.computed __type __id "log_uri";
       master_public_dns =
         Prop.computed __type __id "master_public_dns";
       name = Prop.computed __type __id "name";
       placement_group_config =
         Prop.computed __type __id "placement_group_config";
       release_label = Prop.computed __type __id "release_label";
       scale_down_behavior =
         Prop.computed __type __id "scale_down_behavior";
       security_configuration =
         Prop.computed __type __id "security_configuration";
       service_role = Prop.computed __type __id "service_role";
       step = Prop.computed __type __id "step";
       step_concurrency_level =
         Prop.computed __type __id "step_concurrency_level";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       termination_protection =
         Prop.computed __type __id "termination_protection";
       unhealthy_node_replacement =
         Prop.computed __type __id "unhealthy_node_replacement";
       visible_to_all_users =
         Prop.computed __type __id "visible_to_all_users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_cluster
        (aws_emr_cluster ?additional_info ?applications
           ?autoscaling_role ?configurations ?configurations_json
           ?custom_ami_id ?ebs_root_volume_size ?id
           ?keep_job_flow_alive_when_no_steps ?list_steps_states
           ?log_encryption_kms_key_id ?log_uri
           ?placement_group_config ?scale_down_behavior
           ?security_configuration ?step ?step_concurrency_level
           ?tags ?tags_all ?termination_protection
           ?unhealthy_node_replacement ?visible_to_all_users
           ~auto_termination_policy ~bootstrap_action
           ~core_instance_fleet ~core_instance_group ~ec2_attributes
           ~kerberos_attributes ~master_instance_fleet
           ~master_instance_group ~name ~release_label ~service_role
           ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_info ?applications
    ?autoscaling_role ?configurations ?configurations_json
    ?custom_ami_id ?ebs_root_volume_size ?id
    ?keep_job_flow_alive_when_no_steps ?list_steps_states
    ?log_encryption_kms_key_id ?log_uri ?placement_group_config
    ?scale_down_behavior ?security_configuration ?step
    ?step_concurrency_level ?tags ?tags_all ?termination_protection
    ?unhealthy_node_replacement ?visible_to_all_users
    ?(auto_termination_policy = []) ?(bootstrap_action = [])
    ?(core_instance_fleet = []) ?(core_instance_group = [])
    ?(ec2_attributes = []) ?(kerberos_attributes = [])
    ?(master_instance_fleet = []) ?(master_instance_group = []) ~name
    ~release_label ~service_role __id =
  let (r : _ Tf_core.resource) =
    make ?additional_info ?applications ?autoscaling_role
      ?configurations ?configurations_json ?custom_ami_id
      ?ebs_root_volume_size ?id ?keep_job_flow_alive_when_no_steps
      ?list_steps_states ?log_encryption_kms_key_id ?log_uri
      ?placement_group_config ?scale_down_behavior
      ?security_configuration ?step ?step_concurrency_level ?tags
      ?tags_all ?termination_protection ?unhealthy_node_replacement
      ?visible_to_all_users ~auto_termination_policy
      ~bootstrap_action ~core_instance_fleet ~core_instance_group
      ~ec2_attributes ~kerberos_attributes ~master_instance_fleet
      ~master_instance_group ~name ~release_label ~service_role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
