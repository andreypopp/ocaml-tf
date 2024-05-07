(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alarm_configuration = {
  alarms : string prop list option; [@option]
  enabled : bool prop option; [@option]
  ignore_poll_alarm_failure : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alarm_configuration) -> ()

let yojson_of_alarm_configuration =
  (function
   | {
       alarms = v_alarms;
       enabled = v_enabled;
       ignore_poll_alarm_failure = v_ignore_poll_alarm_failure;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ignore_poll_alarm_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_poll_alarm_failure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alarms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "alarms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : alarm_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alarm_configuration

[@@@deriving.end]

type auto_rollback_configuration = {
  enabled : bool prop option; [@option]
  events : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_rollback_configuration) -> ()

let yojson_of_auto_rollback_configuration =
  (function
   | { enabled = v_enabled; events = v_events } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "events", arg in
             bnd :: bnds
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
    : auto_rollback_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_rollback_configuration

[@@@deriving.end]

type blue_green_deployment_config__deployment_ready_option = {
  action_on_timeout : string prop option; [@option]
  wait_time_in_minutes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : blue_green_deployment_config__deployment_ready_option) ->
  ()

let yojson_of_blue_green_deployment_config__deployment_ready_option =
  (function
   | {
       action_on_timeout = v_action_on_timeout;
       wait_time_in_minutes = v_wait_time_in_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wait_time_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "wait_time_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action_on_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action_on_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blue_green_deployment_config__deployment_ready_option ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_blue_green_deployment_config__deployment_ready_option

[@@@deriving.end]

type blue_green_deployment_config__green_fleet_provisioning_option = {
  action : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       blue_green_deployment_config__green_fleet_provisioning_option) ->
  ()

let yojson_of_blue_green_deployment_config__green_fleet_provisioning_option
    =
  (function
   | { action = v_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blue_green_deployment_config__green_fleet_provisioning_option ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_blue_green_deployment_config__green_fleet_provisioning_option

[@@@deriving.end]

type blue_green_deployment_config__terminate_blue_instances_on_deployment_success = {
  action : string prop option; [@option]
  termination_wait_time_in_minutes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       blue_green_deployment_config__terminate_blue_instances_on_deployment_success) ->
  ()

let yojson_of_blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    =
  (function
   | {
       action = v_action;
       termination_wait_time_in_minutes =
         v_termination_wait_time_in_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_termination_wait_time_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "termination_wait_time_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : blue_green_deployment_config__terminate_blue_instances_on_deployment_success ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_blue_green_deployment_config__terminate_blue_instances_on_deployment_success

[@@@deriving.end]

type blue_green_deployment_config = {
  deployment_ready_option :
    blue_green_deployment_config__deployment_ready_option list;
  green_fleet_provisioning_option :
    blue_green_deployment_config__green_fleet_provisioning_option
    list;
  terminate_blue_instances_on_deployment_success :
    blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : blue_green_deployment_config) -> ()

let yojson_of_blue_green_deployment_config =
  (function
   | {
       deployment_ready_option = v_deployment_ready_option;
       green_fleet_provisioning_option =
         v_green_fleet_provisioning_option;
       terminate_blue_instances_on_deployment_success =
         v_terminate_blue_instances_on_deployment_success;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_blue_green_deployment_config__terminate_blue_instances_on_deployment_success
             v_terminate_blue_instances_on_deployment_success
         in
         ("terminate_blue_instances_on_deployment_success", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_blue_green_deployment_config__green_fleet_provisioning_option
             v_green_fleet_provisioning_option
         in
         ("green_fleet_provisioning_option", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_blue_green_deployment_config__deployment_ready_option
             v_deployment_ready_option
         in
         ("deployment_ready_option", arg) :: bnds
       in
       `Assoc bnds
    : blue_green_deployment_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_blue_green_deployment_config

[@@@deriving.end]

type deployment_style = {
  deployment_option : string prop option; [@option]
  deployment_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_style) -> ()

let yojson_of_deployment_style =
  (function
   | {
       deployment_option = v_deployment_option;
       deployment_type = v_deployment_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_deployment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployment_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_option", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_style -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_style

[@@@deriving.end]

type ec2_tag_filter = {
  key : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ec2_tag_filter) -> ()

let yojson_of_ec2_tag_filter =
  (function
   | { key = v_key; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ec2_tag_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ec2_tag_filter

[@@@deriving.end]

type ec2_tag_set__ec2_tag_filter = {
  key : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ec2_tag_set__ec2_tag_filter) -> ()

let yojson_of_ec2_tag_set__ec2_tag_filter =
  (function
   | { key = v_key; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ec2_tag_set__ec2_tag_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ec2_tag_set__ec2_tag_filter

[@@@deriving.end]

type ec2_tag_set = {
  ec2_tag_filter : ec2_tag_set__ec2_tag_filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ec2_tag_set) -> ()

let yojson_of_ec2_tag_set =
  (function
   | { ec2_tag_filter = v_ec2_tag_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ec2_tag_set__ec2_tag_filter
             v_ec2_tag_filter
         in
         ("ec2_tag_filter", arg) :: bnds
       in
       `Assoc bnds
    : ec2_tag_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ec2_tag_set

[@@@deriving.end]

type ecs_service = {
  cluster_name : string prop;
  service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ecs_service) -> ()

let yojson_of_ecs_service =
  (function
   | { cluster_name = v_cluster_name; service_name = v_service_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : ecs_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ecs_service

[@@@deriving.end]

type load_balancer_info__elb_info = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer_info__elb_info) -> ()

let yojson_of_load_balancer_info__elb_info =
  (function
   | { name = v_name } ->
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
       `Assoc bnds
    : load_balancer_info__elb_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer_info__elb_info

[@@@deriving.end]

type load_balancer_info__target_group_info = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer_info__target_group_info) -> ()

let yojson_of_load_balancer_info__target_group_info =
  (function
   | { name = v_name } ->
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
       `Assoc bnds
    : load_balancer_info__target_group_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer_info__target_group_info

[@@@deriving.end]

type load_balancer_info__target_group_pair_info__prod_traffic_route = {
  listener_arns : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer_info__target_group_pair_info__prod_traffic_route) ->
  ()

let yojson_of_load_balancer_info__target_group_pair_info__prod_traffic_route
    =
  (function
   | { listener_arns = v_listener_arns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_listener_arns
         in
         ("listener_arns", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer_info__target_group_pair_info__prod_traffic_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer_info__target_group_pair_info__prod_traffic_route

[@@@deriving.end]

type load_balancer_info__target_group_pair_info__target_group = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : load_balancer_info__target_group_pair_info__target_group) ->
  ()

let yojson_of_load_balancer_info__target_group_pair_info__target_group
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer_info__target_group_pair_info__target_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer_info__target_group_pair_info__target_group

[@@@deriving.end]

type load_balancer_info__target_group_pair_info__test_traffic_route = {
  listener_arns : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       load_balancer_info__target_group_pair_info__test_traffic_route) ->
  ()

let yojson_of_load_balancer_info__target_group_pair_info__test_traffic_route
    =
  (function
   | { listener_arns = v_listener_arns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_listener_arns
         in
         ("listener_arns", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer_info__target_group_pair_info__test_traffic_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_load_balancer_info__target_group_pair_info__test_traffic_route

[@@@deriving.end]

type load_balancer_info__target_group_pair_info = {
  prod_traffic_route :
    load_balancer_info__target_group_pair_info__prod_traffic_route
    list;
  target_group :
    load_balancer_info__target_group_pair_info__target_group list;
  test_traffic_route :
    load_balancer_info__target_group_pair_info__test_traffic_route
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer_info__target_group_pair_info) -> ()

let yojson_of_load_balancer_info__target_group_pair_info =
  (function
   | {
       prod_traffic_route = v_prod_traffic_route;
       target_group = v_target_group;
       test_traffic_route = v_test_traffic_route;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_balancer_info__target_group_pair_info__test_traffic_route
             v_test_traffic_route
         in
         ("test_traffic_route", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_balancer_info__target_group_pair_info__target_group
             v_target_group
         in
         ("target_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_balancer_info__target_group_pair_info__prod_traffic_route
             v_prod_traffic_route
         in
         ("prod_traffic_route", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer_info__target_group_pair_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer_info__target_group_pair_info

[@@@deriving.end]

type load_balancer_info = {
  elb_info : load_balancer_info__elb_info list;
  target_group_info : load_balancer_info__target_group_info list;
  target_group_pair_info :
    load_balancer_info__target_group_pair_info list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancer_info) -> ()

let yojson_of_load_balancer_info =
  (function
   | {
       elb_info = v_elb_info;
       target_group_info = v_target_group_info;
       target_group_pair_info = v_target_group_pair_info;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_balancer_info__target_group_pair_info
             v_target_group_pair_info
         in
         ("target_group_pair_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_load_balancer_info__target_group_info
             v_target_group_info
         in
         ("target_group_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_balancer_info__elb_info
             v_elb_info
         in
         ("elb_info", arg) :: bnds
       in
       `Assoc bnds
    : load_balancer_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancer_info

[@@@deriving.end]

type on_premises_instance_tag_filter = {
  key : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : on_premises_instance_tag_filter) -> ()

let yojson_of_on_premises_instance_tag_filter =
  (function
   | { key = v_key; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
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
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : on_premises_instance_tag_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_on_premises_instance_tag_filter

[@@@deriving.end]

type trigger_configuration = {
  trigger_events : string prop list;
  trigger_name : string prop;
  trigger_target_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger_configuration) -> ()

let yojson_of_trigger_configuration =
  (function
   | {
       trigger_events = v_trigger_events;
       trigger_name = v_trigger_name;
       trigger_target_arn = v_trigger_target_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trigger_target_arn
         in
         ("trigger_target_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_trigger_name in
         ("trigger_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_trigger_events
         in
         ("trigger_events", arg) :: bnds
       in
       `Assoc bnds
    : trigger_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger_configuration

[@@@deriving.end]

type aws_codedeploy_deployment_group = {
  app_name : string prop;
  autoscaling_groups : string prop list option; [@option]
  deployment_config_name : string prop option; [@option]
  deployment_group_name : string prop;
  id : string prop option; [@option]
  outdated_instances_strategy : string prop option; [@option]
  service_role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  alarm_configuration : alarm_configuration list;
  auto_rollback_configuration : auto_rollback_configuration list;
  blue_green_deployment_config : blue_green_deployment_config list;
  deployment_style : deployment_style list;
  ec2_tag_filter : ec2_tag_filter list;
  ec2_tag_set : ec2_tag_set list;
  ecs_service : ecs_service list;
  load_balancer_info : load_balancer_info list;
  on_premises_instance_tag_filter :
    on_premises_instance_tag_filter list;
  trigger_configuration : trigger_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codedeploy_deployment_group) -> ()

let yojson_of_aws_codedeploy_deployment_group =
  (function
   | {
       app_name = v_app_name;
       autoscaling_groups = v_autoscaling_groups;
       deployment_config_name = v_deployment_config_name;
       deployment_group_name = v_deployment_group_name;
       id = v_id;
       outdated_instances_strategy = v_outdated_instances_strategy;
       service_role_arn = v_service_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       alarm_configuration = v_alarm_configuration;
       auto_rollback_configuration = v_auto_rollback_configuration;
       blue_green_deployment_config = v_blue_green_deployment_config;
       deployment_style = v_deployment_style;
       ec2_tag_filter = v_ec2_tag_filter;
       ec2_tag_set = v_ec2_tag_set;
       ecs_service = v_ecs_service;
       load_balancer_info = v_load_balancer_info;
       on_premises_instance_tag_filter =
         v_on_premises_instance_tag_filter;
       trigger_configuration = v_trigger_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_trigger_configuration
             v_trigger_configuration
         in
         ("trigger_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_on_premises_instance_tag_filter
             v_on_premises_instance_tag_filter
         in
         ("on_premises_instance_tag_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_load_balancer_info
             v_load_balancer_info
         in
         ("load_balancer_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ecs_service v_ecs_service
         in
         ("ecs_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ec2_tag_set v_ec2_tag_set
         in
         ("ec2_tag_set", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ec2_tag_filter v_ec2_tag_filter
         in
         ("ec2_tag_filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_deployment_style
             v_deployment_style
         in
         ("deployment_style", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_blue_green_deployment_config
             v_blue_green_deployment_config
         in
         ("blue_green_deployment_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_rollback_configuration
             v_auto_rollback_configuration
         in
         ("auto_rollback_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_alarm_configuration
             v_alarm_configuration
         in
         ("alarm_configuration", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_service_role_arn
         in
         ("service_role_arn", arg) :: bnds
       in
       let bnds =
         match v_outdated_instances_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outdated_instances_strategy", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_deployment_group_name
         in
         ("deployment_group_name", arg) :: bnds
       in
       let bnds =
         match v_deployment_config_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_config_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autoscaling_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "autoscaling_groups", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_name in
         ("app_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_codedeploy_deployment_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codedeploy_deployment_group

[@@@deriving.end]

let alarm_configuration ?alarms ?enabled ?ignore_poll_alarm_failure
    () : alarm_configuration =
  { alarms; enabled; ignore_poll_alarm_failure }

let auto_rollback_configuration ?enabled ?events () :
    auto_rollback_configuration =
  { enabled; events }

let blue_green_deployment_config__deployment_ready_option
    ?action_on_timeout ?wait_time_in_minutes () :
    blue_green_deployment_config__deployment_ready_option =
  { action_on_timeout; wait_time_in_minutes }

let blue_green_deployment_config__green_fleet_provisioning_option
    ?action () :
    blue_green_deployment_config__green_fleet_provisioning_option =
  { action }

let blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    ?action ?termination_wait_time_in_minutes () :
    blue_green_deployment_config__terminate_blue_instances_on_deployment_success
    =
  { action; termination_wait_time_in_minutes }

let blue_green_deployment_config ?(deployment_ready_option = [])
    ?(green_fleet_provisioning_option = [])
    ?(terminate_blue_instances_on_deployment_success = []) () :
    blue_green_deployment_config =
  {
    deployment_ready_option;
    green_fleet_provisioning_option;
    terminate_blue_instances_on_deployment_success;
  }

let deployment_style ?deployment_option ?deployment_type () :
    deployment_style =
  { deployment_option; deployment_type }

let ec2_tag_filter ?key ?type_ ?value () : ec2_tag_filter =
  { key; type_; value }

let ec2_tag_set__ec2_tag_filter ?key ?type_ ?value () :
    ec2_tag_set__ec2_tag_filter =
  { key; type_; value }

let ec2_tag_set ~ec2_tag_filter () : ec2_tag_set = { ec2_tag_filter }

let ecs_service ~cluster_name ~service_name () : ecs_service =
  { cluster_name; service_name }

let load_balancer_info__elb_info ?name () :
    load_balancer_info__elb_info =
  { name }

let load_balancer_info__target_group_info ?name () :
    load_balancer_info__target_group_info =
  { name }

let load_balancer_info__target_group_pair_info__prod_traffic_route
    ~listener_arns () :
    load_balancer_info__target_group_pair_info__prod_traffic_route =
  { listener_arns }

let load_balancer_info__target_group_pair_info__target_group ~name ()
    : load_balancer_info__target_group_pair_info__target_group =
  { name }

let load_balancer_info__target_group_pair_info__test_traffic_route
    ~listener_arns () :
    load_balancer_info__target_group_pair_info__test_traffic_route =
  { listener_arns }

let load_balancer_info__target_group_pair_info
    ?(test_traffic_route = []) ~prod_traffic_route ~target_group () :
    load_balancer_info__target_group_pair_info =
  { prod_traffic_route; target_group; test_traffic_route }

let load_balancer_info ?(target_group_pair_info = []) ~elb_info
    ~target_group_info () : load_balancer_info =
  { elb_info; target_group_info; target_group_pair_info }

let on_premises_instance_tag_filter ?key ?type_ ?value () :
    on_premises_instance_tag_filter =
  { key; type_; value }

let trigger_configuration ~trigger_events ~trigger_name
    ~trigger_target_arn () : trigger_configuration =
  { trigger_events; trigger_name; trigger_target_arn }

let aws_codedeploy_deployment_group ?autoscaling_groups
    ?deployment_config_name ?id ?outdated_instances_strategy ?tags
    ?tags_all ?(alarm_configuration = [])
    ?(auto_rollback_configuration = [])
    ?(blue_green_deployment_config = []) ?(deployment_style = [])
    ?(ecs_service = []) ?(load_balancer_info = []) ~app_name
    ~deployment_group_name ~service_role_arn ~ec2_tag_filter
    ~ec2_tag_set ~on_premises_instance_tag_filter
    ~trigger_configuration () : aws_codedeploy_deployment_group =
  {
    app_name;
    autoscaling_groups;
    deployment_config_name;
    deployment_group_name;
    id;
    outdated_instances_strategy;
    service_role_arn;
    tags;
    tags_all;
    alarm_configuration;
    auto_rollback_configuration;
    blue_green_deployment_config;
    deployment_style;
    ec2_tag_filter;
    ec2_tag_set;
    ecs_service;
    load_balancer_info;
    on_premises_instance_tag_filter;
    trigger_configuration;
  }

type t = {
  tf_name : string;
  app_name : string prop;
  arn : string prop;
  autoscaling_groups : string list prop;
  compute_platform : string prop;
  deployment_config_name : string prop;
  deployment_group_id : string prop;
  deployment_group_name : string prop;
  id : string prop;
  outdated_instances_strategy : string prop;
  service_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?autoscaling_groups ?deployment_config_name ?id
    ?outdated_instances_strategy ?tags ?tags_all
    ?(alarm_configuration = []) ?(auto_rollback_configuration = [])
    ?(blue_green_deployment_config = []) ?(deployment_style = [])
    ?(ecs_service = []) ?(load_balancer_info = []) ~app_name
    ~deployment_group_name ~service_role_arn ~ec2_tag_filter
    ~ec2_tag_set ~on_premises_instance_tag_filter
    ~trigger_configuration __id =
  let __type = "aws_codedeploy_deployment_group" in
  let __attrs =
    ({
       tf_name = __id;
       app_name = Prop.computed __type __id "app_name";
       arn = Prop.computed __type __id "arn";
       autoscaling_groups =
         Prop.computed __type __id "autoscaling_groups";
       compute_platform =
         Prop.computed __type __id "compute_platform";
       deployment_config_name =
         Prop.computed __type __id "deployment_config_name";
       deployment_group_id =
         Prop.computed __type __id "deployment_group_id";
       deployment_group_name =
         Prop.computed __type __id "deployment_group_name";
       id = Prop.computed __type __id "id";
       outdated_instances_strategy =
         Prop.computed __type __id "outdated_instances_strategy";
       service_role_arn =
         Prop.computed __type __id "service_role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codedeploy_deployment_group
        (aws_codedeploy_deployment_group ?autoscaling_groups
           ?deployment_config_name ?id ?outdated_instances_strategy
           ?tags ?tags_all ~alarm_configuration
           ~auto_rollback_configuration ~blue_green_deployment_config
           ~deployment_style ~ecs_service ~load_balancer_info
           ~app_name ~deployment_group_name ~service_role_arn
           ~ec2_tag_filter ~ec2_tag_set
           ~on_premises_instance_tag_filter ~trigger_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?autoscaling_groups ?deployment_config_name
    ?id ?outdated_instances_strategy ?tags ?tags_all
    ?(alarm_configuration = []) ?(auto_rollback_configuration = [])
    ?(blue_green_deployment_config = []) ?(deployment_style = [])
    ?(ecs_service = []) ?(load_balancer_info = []) ~app_name
    ~deployment_group_name ~service_role_arn ~ec2_tag_filter
    ~ec2_tag_set ~on_premises_instance_tag_filter
    ~trigger_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?autoscaling_groups ?deployment_config_name ?id
      ?outdated_instances_strategy ?tags ?tags_all
      ~alarm_configuration ~auto_rollback_configuration
      ~blue_green_deployment_config ~deployment_style ~ecs_service
      ~load_balancer_info ~app_name ~deployment_group_name
      ~service_role_arn ~ec2_tag_filter ~ec2_tag_set
      ~on_premises_instance_tag_filter ~trigger_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
