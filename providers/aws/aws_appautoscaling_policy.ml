(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type step_scaling_policy_configuration__step_adjustment = {
  metric_interval_lower_bound : string prop option; [@option]
  metric_interval_upper_bound : string prop option; [@option]
  scaling_adjustment : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : step_scaling_policy_configuration__step_adjustment) -> ()

let yojson_of_step_scaling_policy_configuration__step_adjustment =
  (function
   | {
       metric_interval_lower_bound = v_metric_interval_lower_bound;
       metric_interval_upper_bound = v_metric_interval_upper_bound;
       scaling_adjustment = v_scaling_adjustment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_scaling_adjustment
         in
         ("scaling_adjustment", arg) :: bnds
       in
       let bnds =
         match v_metric_interval_upper_bound with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_interval_upper_bound", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metric_interval_lower_bound with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_interval_lower_bound", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : step_scaling_policy_configuration__step_adjustment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_step_scaling_policy_configuration__step_adjustment

[@@@deriving.end]

type step_scaling_policy_configuration = {
  adjustment_type : string prop option; [@option]
  cooldown : float prop option; [@option]
  metric_aggregation_type : string prop option; [@option]
  min_adjustment_magnitude : float prop option; [@option]
  step_adjustment :
    step_scaling_policy_configuration__step_adjustment list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : step_scaling_policy_configuration) -> ()

let yojson_of_step_scaling_policy_configuration =
  (function
   | {
       adjustment_type = v_adjustment_type;
       cooldown = v_cooldown;
       metric_aggregation_type = v_metric_aggregation_type;
       min_adjustment_magnitude = v_min_adjustment_magnitude;
       step_adjustment = v_step_adjustment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_step_adjustment then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_step_scaling_policy_configuration__step_adjustment)
               v_step_adjustment
           in
           let bnd = "step_adjustment", arg in
           bnd :: bnds
       in
       let bnds =
         match v_min_adjustment_magnitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_adjustment_magnitude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metric_aggregation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_aggregation_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cooldown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cooldown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_adjustment_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "adjustment_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : step_scaling_policy_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_step_scaling_policy_configuration

[@@@deriving.end]

type target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions) ->
  ()

let yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions

[@@@deriving.end]

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions) ->
  ()

let yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions

[@@@deriving.end]

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric = {
  metric_name : string prop;
  namespace : string prop;
  dimensions :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric) ->
  ()

let yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    =
  (function
   | {
       metric_name = v_metric_name;
       namespace = v_namespace;
       dimensions = v_dimensions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_dimensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions)
               v_dimensions
           in
           let bnd = "dimensions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric

[@@@deriving.end]

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat = {
  stat : string prop;
  unit : string prop option; [@option]
  metric :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat) ->
  ()

let yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    =
  (function
   | { stat = v_stat; unit = v_unit; metric = v_metric } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric)
               v_metric
           in
           let bnd = "metric", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stat in
         ("stat", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat

[@@@deriving.end]

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics = {
  expression : string prop option; [@option]
  id : string prop;
  label : string prop option; [@option]
  return_data : bool prop option; [@option]
  metric_stat :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_scaling_policy_configuration__customized_metric_specification__metrics) ->
  ()

let yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    =
  (function
   | {
       expression = v_expression;
       id = v_id;
       label = v_label;
       return_data = v_return_data;
       metric_stat = v_metric_stat;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metric_stat then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat)
               v_metric_stat
           in
           let bnd = "metric_stat", arg in
           bnd :: bnds
       in
       let bnds =
         match v_return_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "return_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_tracking_scaling_policy_configuration__customized_metric_specification__metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics

[@@@deriving.end]

type target_tracking_scaling_policy_configuration__customized_metric_specification = {
  metric_name : string prop option; [@option]
  namespace : string prop option; [@option]
  statistic : string prop option; [@option]
  unit : string prop option; [@option]
  dimensions :
    target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    list;
      [@default []] [@yojson_drop_default ( = )]
  metrics :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_scaling_policy_configuration__customized_metric_specification) ->
  ()

let yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification
    =
  (function
   | {
       metric_name = v_metric_name;
       namespace = v_namespace;
       statistic = v_statistic;
       unit = v_unit;
       dimensions = v_dimensions;
       metrics = v_metrics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metrics then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__metrics)
               v_metrics
           in
           let bnd = "metrics", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dimensions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions)
               v_dimensions
           in
           let bnd = "dimensions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statistic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statistic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metric_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_tracking_scaling_policy_configuration__customized_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification

[@@@deriving.end]

type target_tracking_scaling_policy_configuration__predefined_metric_specification = {
  predefined_metric_type : string prop;
  resource_label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_tracking_scaling_policy_configuration__predefined_metric_specification) ->
  ()

let yojson_of_target_tracking_scaling_policy_configuration__predefined_metric_specification
    =
  (function
   | {
       predefined_metric_type = v_predefined_metric_type;
       resource_label = v_resource_label;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_predefined_metric_type
         in
         ("predefined_metric_type", arg) :: bnds
       in
       `Assoc bnds
    : target_tracking_scaling_policy_configuration__predefined_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_tracking_scaling_policy_configuration__predefined_metric_specification

[@@@deriving.end]

type target_tracking_scaling_policy_configuration = {
  disable_scale_in : bool prop option; [@option]
  scale_in_cooldown : float prop option; [@option]
  scale_out_cooldown : float prop option; [@option]
  target_value : float prop;
  customized_metric_specification :
    target_tracking_scaling_policy_configuration__customized_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
  predefined_metric_specification :
    target_tracking_scaling_policy_configuration__predefined_metric_specification
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_tracking_scaling_policy_configuration) -> ()

let yojson_of_target_tracking_scaling_policy_configuration =
  (function
   | {
       disable_scale_in = v_disable_scale_in;
       scale_in_cooldown = v_scale_in_cooldown;
       scale_out_cooldown = v_scale_out_cooldown;
       target_value = v_target_value;
       customized_metric_specification =
         v_customized_metric_specification;
       predefined_metric_specification =
         v_predefined_metric_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_predefined_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_scaling_policy_configuration__predefined_metric_specification)
               v_predefined_metric_specification
           in
           let bnd = "predefined_metric_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_customized_metric_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_scaling_policy_configuration__customized_metric_specification)
               v_customized_metric_specification
           in
           let bnd = "customized_metric_specification", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target_value in
         ("target_value", arg) :: bnds
       in
       let bnds =
         match v_scale_out_cooldown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scale_out_cooldown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_in_cooldown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scale_in_cooldown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_scale_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_scale_in", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_tracking_scaling_policy_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_tracking_scaling_policy_configuration

[@@@deriving.end]

type aws_appautoscaling_policy = {
  id : string prop option; [@option]
  name : string prop;
  policy_type : string prop option; [@option]
  resource_id : string prop;
  scalable_dimension : string prop;
  service_namespace : string prop;
  step_scaling_policy_configuration :
    step_scaling_policy_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  target_tracking_scaling_policy_configuration :
    target_tracking_scaling_policy_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appautoscaling_policy) -> ()

let yojson_of_aws_appautoscaling_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       policy_type = v_policy_type;
       resource_id = v_resource_id;
       scalable_dimension = v_scalable_dimension;
       service_namespace = v_service_namespace;
       step_scaling_policy_configuration =
         v_step_scaling_policy_configuration;
       target_tracking_scaling_policy_configuration =
         v_target_tracking_scaling_policy_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_target_tracking_scaling_policy_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_target_tracking_scaling_policy_configuration)
               v_target_tracking_scaling_policy_configuration
           in
           let bnd =
             "target_tracking_scaling_policy_configuration", arg
           in
           bnd :: bnds
       in
       let bnds =
         if [] = v_step_scaling_policy_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_step_scaling_policy_configuration)
               v_step_scaling_policy_configuration
           in
           let bnd = "step_scaling_policy_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_namespace
         in
         ("service_namespace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scalable_dimension
         in
         ("scalable_dimension", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         match v_policy_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_type", arg in
             bnd :: bnds
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
    : aws_appautoscaling_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appautoscaling_policy

[@@@deriving.end]

let step_scaling_policy_configuration__step_adjustment
    ?metric_interval_lower_bound ?metric_interval_upper_bound
    ~scaling_adjustment () :
    step_scaling_policy_configuration__step_adjustment =
  {
    metric_interval_lower_bound;
    metric_interval_upper_bound;
    scaling_adjustment;
  }

let step_scaling_policy_configuration ?adjustment_type ?cooldown
    ?metric_aggregation_type ?min_adjustment_magnitude
    ~step_adjustment () : step_scaling_policy_configuration =
  {
    adjustment_type;
    cooldown;
    metric_aggregation_type;
    min_adjustment_magnitude;
    step_adjustment;
  }

let target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    ~name ~value () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    =
  { name; value }

let target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    ~name ~value () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    =
  { name; value }

let target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    ?unit ~stat ~metric () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    =
  { stat; unit; metric }

let target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    ?expression ?label ?return_data ?(metric_stat = []) ~id () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    =
  { expression; id; label; return_data; metric_stat }

let target_tracking_scaling_policy_configuration__customized_metric_specification
    ?metric_name ?namespace ?statistic ?unit ~dimensions ~metrics ()
    :
    target_tracking_scaling_policy_configuration__customized_metric_specification
    =
  { metric_name; namespace; statistic; unit; dimensions; metrics }

let target_tracking_scaling_policy_configuration__predefined_metric_specification
    ?resource_label ~predefined_metric_type () :
    target_tracking_scaling_policy_configuration__predefined_metric_specification
    =
  { predefined_metric_type; resource_label }

let target_tracking_scaling_policy_configuration ?disable_scale_in
    ?scale_in_cooldown ?scale_out_cooldown
    ?(customized_metric_specification = [])
    ?(predefined_metric_specification = []) ~target_value () :
    target_tracking_scaling_policy_configuration =
  {
    disable_scale_in;
    scale_in_cooldown;
    scale_out_cooldown;
    target_value;
    customized_metric_specification;
    predefined_metric_specification;
  }

let aws_appautoscaling_policy ?id ?policy_type
    ?(step_scaling_policy_configuration = [])
    ?(target_tracking_scaling_policy_configuration = []) ~name
    ~resource_id ~scalable_dimension ~service_namespace () :
    aws_appautoscaling_policy =
  {
    id;
    name;
    policy_type;
    resource_id;
    scalable_dimension;
    service_namespace;
    step_scaling_policy_configuration;
    target_tracking_scaling_policy_configuration;
  }

type t = {
  tf_name : string;
  alarm_arns : string list prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  policy_type : string prop;
  resource_id : string prop;
  scalable_dimension : string prop;
  service_namespace : string prop;
}

let make ?id ?policy_type ?(step_scaling_policy_configuration = [])
    ?(target_tracking_scaling_policy_configuration = []) ~name
    ~resource_id ~scalable_dimension ~service_namespace __id =
  let __type = "aws_appautoscaling_policy" in
  let __attrs =
    ({
       tf_name = __id;
       alarm_arns = Prop.computed __type __id "alarm_arns";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_type = Prop.computed __type __id "policy_type";
       resource_id = Prop.computed __type __id "resource_id";
       scalable_dimension =
         Prop.computed __type __id "scalable_dimension";
       service_namespace =
         Prop.computed __type __id "service_namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appautoscaling_policy
        (aws_appautoscaling_policy ?id ?policy_type
           ~step_scaling_policy_configuration
           ~target_tracking_scaling_policy_configuration ~name
           ~resource_id ~scalable_dimension ~service_namespace ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_type
    ?(step_scaling_policy_configuration = [])
    ?(target_tracking_scaling_policy_configuration = []) ~name
    ~resource_id ~scalable_dimension ~service_namespace __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_type ~step_scaling_policy_configuration
      ~target_tracking_scaling_policy_configuration ~name
      ~resource_id ~scalable_dimension ~service_namespace __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
